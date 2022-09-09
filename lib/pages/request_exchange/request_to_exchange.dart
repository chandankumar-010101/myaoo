import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/config/environment.dart';
import 'package:pangeachat/model/class_detail_model.dart';
import 'package:pangeachat/services/services.dart';
import 'package:pangeachat/widgets/star_rating.dart';
import 'package:vrouter/vrouter.dart';
import '../../config/app_config.dart';
import '../../widgets/matrix.dart';
import '../chat_list/spaces_entry.dart';
import 'package:matrix/matrix.dart' as sdk;

class RequestToExchange extends StatefulWidget {
  const RequestToExchange({Key? key}) : super(key: key);

  @override
  State<RequestToExchange> createState() => _RequestToExchangeState();
}

class _RequestToExchangeState extends State<RequestToExchange> {
  var box = GetStorage();
  SpacesEntry? _activeSpacesEntry;
  SpacesEntry get defaultSpacesEntry => AppConfig.separateChatTypes ? DirectChatsSpacesEntry() : AllRoomsSpacesEntry();

  SpacesEntry get activeSpacesEntry {
    final id = _activeSpacesEntry;
    return (id == null || !id.stillValid(context)) ? defaultSpacesEntry : id;
  }

  String? get activeSpaceId => activeSpacesEntry.getSpace(context)?.id;
  Future<void> _waitForFirstSync() async {
    final client = Matrix.of(context).client;
    await client.roomsLoading;
    await client.accountDataLoading;
    if (client.prevBatch?.isEmpty ?? true) {
      await client.onFirstSync.stream.first;
    }
    // Load space members to display DM rooms
    final spaceId = activeSpaceId;
    if (spaceId != null) {
      final space = client.getRoomById(spaceId)!;
      final localMembers = space.getParticipants().length;
      final actualMembersCount = (space.summary.mInvitedMemberCount ?? 0) + (space.summary.mJoinedMemberCount ?? 0);
      if (localMembers < actualMembersCount) {
        await space.requestParticipants();
      }
    }
  }

  List<Room> get spaces => Matrix.of(context).client.rooms.where((r) => r.isSpace).toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String roomId = VRouter.of(context).queryParameters['room_id'] ?? "";
    String receivedroomID = VRouter.of(context).queryParameters['receviedroom_id'] ?? "";
    String id = VRouter.of(context).queryParameters['id'] ?? "";
    String rid = VRouter.of(context).queryParameters['r_id'] ?? "";

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Request to Exchange"),
      ),
      body: FutureBuilder(
        future: _waitForFirstSync(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snap.hasError) {
            return Text("Unable to Load USER PROFILE");
          } else {
            return RequestToExchangePopUp(
              id: id,
              roomId: roomId,
              spaces: spaces,
              r_id: rid,
              receivedroomID: receivedroomID,
            );
          }
        },
      ),
    );
  }
}

class RequestToExchangePopUp extends StatefulWidget {
  List<Room> spaces;
  String roomId;
  String receivedroomID;
  String id;
  String r_id;

  RequestToExchangePopUp({Key? key, required this.spaces, required this.id, required this.r_id, required this.roomId, required this.receivedroomID})
      : super(key: key);

  @override
  State<RequestToExchangePopUp> createState() => _RequestToExchangePopUpState();
}

class _RequestToExchangePopUpState extends State<RequestToExchangePopUp> {
  var box = GetStorage();
  List<String> participantlist = [];
  submitAction() async {
    try {
      String className;
      String cityName;
      String countryName;
      int languageLevel;
      String schoolName;
      String disc;
      String targetLanguage;
      String sourceLanguage;
      bool publicGroup = false;
      bool openEnrollment;
      bool openToExchange;

      try {
        className = box.read("className");
        cityName = box.read("cityName");
        countryName = box.read("countryName");
        languageLevel = box.read("languageLevel");
        schoolName = box.read("scoolName");
        disc = box.read("disc");
        targetLanguage = box.read("targetLanguage");
        sourceLanguage = box.read("sourceLanage");
        publicGroup = box.read("publicGroup");
        openEnrollment = box.read("openEnrollment");
        openToExchange = box.read("openToExchange");
      } catch (e) {
        if (kDebugMode) {}
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Unable to fetch Data from storage"),
          backgroundColor: Colors.red,
        ));
        return;
      }
      final matrix = Matrix.of(context);
      final roomID = await showFutureLoadingDialog(
        context: context,
        future: () => matrix.client.createRoom(
          invite: participantlist,
          preset: publicGroup ? sdk.CreateRoomPreset.publicChat : sdk.CreateRoomPreset.privateChat,
          creationContent: {'type': RoomCreationTypes.mSpace},
          visibility: publicGroup ? sdk.Visibility.public : null,
          roomAliasName: publicGroup && className.isNotEmpty ? className.trim().toLowerCase().replaceAll(' ', '_') : null,
          name: className.isNotEmpty ? className : null,
        ),
      );
      if (roomID.result != null) {
        if (kDebugMode) {
          print(roomID.result);
        }

        PangeaServices.ExchangeAcceptRequest(widget.receivedroomID, widget.r_id, roomID.result!.toString());
      }
      if (roomID == null) {
        VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something went wrong"),
        backgroundColor: Colors.red,
      ));
    }
  }

  getparticitpants() async {
    print(widget.receivedroomID);
    Room? room2 = Matrix.of(context).client.getRoomById(widget.roomId);

    final List<User> user = await room2!.requestParticipants();
    int? count = room2.summary.mJoinedMemberCount;
    for (int i = 0; i < count!; i++) {
      user[i].id;

      if (participantlist.contains(user[i].id)) {
      } else {
        participantlist.add(user[i].id);
      }
    }
    Room? room3 = Matrix.of(context).client.getRoomById(widget.receivedroomID);

    List<User> user1 = await room3!.requestParticipants();
    int? count1 = room3.summary.mJoinedMemberCount;
    for (int i = 0; i < count1!; i++) {
      user1[i].id;
      if (participantlist.contains(user1![i].id)) {
      } else {
        participantlist.add(user1[i].id);
      }
    }
  }

  ///load flag to the UI
  fetchFlag(FetchClassInfoModel data, String url) {
    try {
      String path = url + data.flags[1].languageFlag.toString() ?? "";
      print(path);
      return path.isNotEmpty
          ? SizedBox(
              width: 20,
              height: 20,
              child: Image.network(path),
            )
          : Container();
    } catch (e) {
      return Container();
    }
  }

  fetchFlag2(FetchClassInfoModel data, String url) {
    String path = url + data.flags[0].languageFlag.toString();
    print(path);
    return SizedBox(width: 20, height: 20, child: Image.network(path));
  }

  @override
  Widget build(BuildContext context) {
    print(box.read("access"));
    getparticitpants();
    Size size = MediaQuery.of(context).size;
    String basePath = Environment.baseAPI;
    var data = basePath.split("/api/v1");
    String url = data[0];
    List date1 = widget.id.split(":");
    List date2 = date1[0].split("@");

    List<Room> space = widget.spaces.where((i) => i.id == widget.roomId).toList();
    if (box.read("clientID") == widget.r_id) {
      return FutureBuilder(
        future: PangeaServices.fetchExchangeClassInfo(context, widget.receivedroomID),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.hasData) {
            final FetchClassInfoModel data = snapshot.data! as FetchClassInfoModel;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: size.width >= 1000 ? MainAxisAlignment.start : MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10.0),
                              child: data.profilePic.isNotEmpty
                                  ? CachedNetworkImage(
                                      imageUrl: data.profilePic.toString(),
                                      fit: BoxFit.cover,
                                      color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context).colorScheme.onPrimary,
                                      imageBuilder: (context, imageProvider) {
                                        return Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: imageProvider)),
                                        );
                                      },
                                    )
                                  : Icon(
                                      Icons.people,
                                      size: 60,
                                      color: Theme.of(context).primaryColor,
                                    ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context).colorScheme.onPrimary,
                                      width: 2.0),
                                  shape: BoxShape.circle),
                            ),
                            Positioned(
                                bottom: 4,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).colorScheme.onPrimary,
                                      border: Border.all(color: Theme.of(context).colorScheme.onPrimary, width: 2)),
                                  child: const Icon(
                                    Icons.school,
                                    color: Colors.black,
                                    size: 15.0,
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              data.className,
                              style: const TextStyle()
                                  .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${data.classAuthor}",
                              style: const TextStyle().copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                                  size: 20.0,
                                ),
                                Text(
                                  data.city,
                                  style: const TextStyle().copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.grey.shade200, width: 2.0),
                    ),
                    child: Flex(
                      direction: size.width >= 1000 ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: size.width >= 800 ? MainAxisAlignment.start : MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ratings",
                              style: const TextStyle()
                                  .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                StarRating(
                                  color: const Color(0xffFFC403),
                                  rating: data.rating != null ? data.rating!.toDouble() : 0.0,
                                  starCount: 5,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Number of Students",
                              style: const TextStyle()
                                  .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.people,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  data.totalStudent.toString(),
                                  style: const TextStyle()
                                      .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w400, fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Source Language",
                                    style: const TextStyle()
                                        .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt_outlined,
                                    size: 20,
                                    color: Theme.of(context).textTheme.bodyText1!.color,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Target Language",
                                    style: const TextStyle()
                                        .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ]),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [fetchFlag2(data, url)]),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  data.dominantLanguage,
                                  style: const TextStyle()
                                      .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w400, fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  size: 20,
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(children: [
                                  fetchFlag(data, url),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    data.targetLanguage,
                                    style: const TextStyle()
                                        .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w400, fontSize: 14),
                                  ),
                                ]),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "About me ",
                      style:
                          const TextStyle().copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      data.description.toString(),
                      style:
                          const TextStyle().copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                  box.read("usertype") == 2
                      ? box.read("clientID") == widget.id
                          ? Container()
                          : Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20.0),
                              padding: EdgeInsets.only(top: 10),
                              child: Flex(
                                direction: size.width >= 1000 ? Axis.horizontal : Axis.vertical,
                                mainAxisAlignment: size.width >= 1000 ? MainAxisAlignment.start : MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                              ? Theme.of(context).primaryColor
                                              : Theme.of(context).colorScheme.onPrimary,
                                        ),
                                      ),
                                      onPressed: () async {
                                        final room = Matrix.of(context).client.getRoomById(widget.roomId);
                                        final members = Matrix.of(context).client.getRoomById(widget.roomId)?.requestParticipants();
                                        int? count = room!.summary!.mJoinedMemberCount;
                                        getparticitpants();
                                        var className = "${room.displayname}/1${data.className}";
                                        String cityName = "${room.displayname}/${data.className}";
                                        String countryName = "${room.displayname}/${data.country}";
                                        int languageLevel = data.languageLevel;
                                        String schoolName = "${room.displayname}/${data.schoolName}";
                                        String disc = "${room.displayname}/${data.description}";
                                        String targetLanguage = "${room.displayname}/${data.targetLanguage}";
                                        String sourceLanguage = "${room.displayname}/${data.dominantLanguage}";
                                        const bool publicGroup = false;
                                        const bool openEnrollment = true;
                                        const bool openToExchange = true;

                                        box.write("className", className);
                                        box.write("cityName", cityName);
                                        box.write("countryName", countryName);
                                        box.write("languageLevel", languageLevel);
                                        box.write("scoolName", schoolName);
                                        box.write("disc", disc);
                                        box.write("targetLanguage", targetLanguage);
                                        box.write("sourceLanage", sourceLanguage);
                                        box.write("publicGroup", publicGroup);
                                        box.write("openEnrollment", openEnrollment);
                                        box.write("openToExchange", openToExchange);
                                        submitAction();
                                      },
                                      child: Text(
                                        "Confirm Exchange Request",
                                        style: const TextStyle()
                                            .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w400, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                              ? Theme.of(context).primaryColor
                                              : Theme.of(context).colorScheme.onPrimary,
                                        ),
                                      ),
                                      onPressed: () {
                                        PangeaServices.ExchangeRejectRequest(data.pangeaClassRoomId, data.classAuthorId);
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: const TextStyle()
                                            .copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w400, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                      : Container(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ); //;
    } else {
      return const Center(
        child: Text("You are not authorized for this page."),
      );
    }
  }
}
