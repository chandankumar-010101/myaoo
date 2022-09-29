import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/config/environment.dart';
import 'package:pangeachat/model/class_detail_model.dart';
import 'package:pangeachat/services/services.dart';
import 'package:pangeachat/widgets/star_rating.dart';
import 'package:vrouter/vrouter.dart';
import '../../config/app_config.dart';
import '../../model/fetchClassParticipants.dart';
import '../../services/controllers.dart';
import '../../widgets/matrix.dart';
import '../chat_list/spaces_entry.dart';
import 'package:matrix/matrix.dart' as sdk;

class ConfirmExchange extends StatefulWidget {
  const ConfirmExchange({Key? key}) : super(key: key);

  @override
  State<ConfirmExchange> createState() => _ConfirmExchangeState();
}

class _ConfirmExchangeState extends State<ConfirmExchange> {
  Future<String?> createExchange(String receiverClassId, String senderClassId,
      String senderId, String receiverId) async {
    try {
      List<String> listOfParticipants = [];
      final client = Matrix.of(context).client;
      if (senderId == client.userID) {
        PangeaControllers.toastMsg(msg: "You don't have permission for this action.",success: false);
        return null;
      }
      final FetchClassParticipants data =
          await PangeaServices.fetchParticipants(receiverClassId);
      final FetchClassParticipants data2 =
          await PangeaServices.fetchParticipants(senderClassId);
      for (final element in data.roomMembers!.members!) {
        if (listOfParticipants.contains(element)) {
          continue;
        } else {
          listOfParticipants.add(element);
        }
      }
      for (final element in data2.roomMembers!.members!) {
        if (listOfParticipants.contains(element)) {
          continue;
        } else {
          listOfParticipants.add(element);
        }
      }

      listOfParticipants = listOfParticipants
          .where((element) => element != client.userID)
          .toList();
      final FetchClassInfoModel senderClassInfo =
          await PangeaServices.fetchClassInfo(context, senderClassId);
      final FetchClassInfoModel receiverClassInfo =
          await PangeaServices.fetchClassInfo(context, receiverClassId);

      final String className = receiverClassInfo.className +
          " - " +
          senderClassInfo.className;
      final String city = receiverClassInfo.city.isNotEmpty?
      senderClassInfo.city.isNotEmpty?
      "${receiverClassInfo.city} - ${senderClassInfo.city}": receiverClassInfo.city:
      senderClassInfo.city;
      final String country = receiverClassInfo.country.isNotEmpty?
      senderClassInfo.country.isNotEmpty?
      "${receiverClassInfo.country} - ${senderClassInfo.country}": receiverClassInfo.country:
      senderClassInfo.country;

      final String school = receiverClassInfo.schoolName.isNotEmpty?
      senderClassInfo.schoolName.isNotEmpty?
      "${receiverClassInfo.schoolName} - ${senderClassInfo.schoolName}": receiverClassInfo.schoolName:
      senderClassInfo.schoolName;

      String exchangeId = await client.createRoom(
        preset: sdk.CreateRoomPreset.publicChat,
        invite: listOfParticipants,
        creationContent: {'type': RoomCreationTypes.mSpace},
        visibility: sdk.Visibility.public,
        roomAliasName: className.trim().toLowerCase().replaceAll(' ', '_'),
        name: className,
      );
      final bool? status = await PangeaServices.makeAdmin(exchangeId, senderId);
      if (status != null) {
        final Room? room = Matrix.of(context).client.getRoomById(exchangeId);
        if (room != null) {
          await PangeaServices.saveExchangeRecord(
              senderClassId, receiverClassId, senderId, receiverId, exchangeId);
          await PangeaServices.createClass(
            context: context,
            roomId: exchangeId,
            className: className,
            classRoom: room,
            city: city,
            country: country,
            dominantLanguage: receiverClassInfo.dominantLanguage,
            targetLanguage: receiverClassInfo.targetLanguage,
            desc: "Exchange",
            languageLevel: 1,
            isPublic: false,
            isShareFiles: false,
            isShareLocation: false,
            isSharePhoto: false,
            isOpenExchange: false,
            isOpenEnrollment: false,
            isCreateStories: false,
            isCreateRoomsExchange: false,
            sendVoice: false,
            isCreateRooms: false,
            isShareVideo: false,
            oneToOneChatClass: false,
            oneToOneChatExchange: false,
            schoolName: school,
            isExchange: true,
          ).whenComplete(() => exchangeId);
        }
      }
    } catch (e) {
      print(e);
      PangeaControllers.toastMsg(msg: "Error: Unable to Confirm the exchange");
      return null;
    }
  }

  fetchFlag(FetchClassInfoModel data, String url) {
    try {
      String path = url + data.flags[0].languageFlag.toString() ?? "";
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
    String path = url + data.flags[1].languageFlag.toString();
    print(path);
    return SizedBox(width: 20, height: 20, child: Image.network(path));
  }

  @override
  Widget build(BuildContext context) {
    final String senderId =
        VRouter.of(context).queryParameters['user_id'] ?? "";
    final String senderClassId =
        VRouter.of(context).queryParameters['room_id'] ?? "";
    final String receiverId =
        VRouter.of(context).queryParameters['user_id_of_requested_class'] ?? "";
    final String receiverClassId =
        VRouter.of(context).queryParameters['request_to_class'] ?? "";
    // List<Room> rooms = Matrix.of(context).client.rooms;
    final String basePath = Environment.baseAPI;
    final List<String> data = basePath.split("/api/v1");
    final String url = data[0];

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Request to Exchange"),
      ),
      body: GetStorage().read("clientID") == receiverId
          ? FutureBuilder(
              future: PangeaServices.fetchClassInfo(context, senderClassId),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else if (snapshot.hasData) {
                  final FetchClassInfoModel data =
                      snapshot.data! as FetchClassInfoModel;
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: size.width >= 1000
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 10.0),
                                    child: data.profilePic.isNotEmpty
                                        ? CachedNetworkImage(
                                            imageUrl:
                                                data.profilePic.toString(),
                                            fit: BoxFit.cover,
                                            color: Theme.of(context)
                                                        .colorScheme
                                                        .onPrimary ==
                                                    Colors.white
                                                ? Theme.of(context).primaryColor
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                            imageBuilder:
                                                (context, imageProvider) {
                                              return Container(
                                                height: 90,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: imageProvider)),
                                              );
                                            },
                                          )
                                        : Icon(
                                            Icons.people,
                                            size: 60,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color:  Theme.of(context).colorScheme.onPrimary == Colors.white
                                            ? Colors.black
                                            : Colors.white, width: 2.0),
                                        shape: BoxShape.circle),
                                  ),
                                  Positioned(
                                      bottom: 4,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(2.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Theme.of(context).colorScheme.onPrimary,
                                            border: Border.all(color: Colors.white, width: 2)),
                                        child: const Icon(
                                          Icons.school,
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
                                  data.className.isNotEmpty?
                                  Row(
                                    children: [

                                      Icon(
                                        Icons.school,
                                        color: Colors.black,
                                        size: 15.0,
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        data.className.capitalizeFirst!,
                                        style: const TextStyle().copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )

                                    ],
                                  ):Container(),
                                  data.classAuthor.isNotEmpty?
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.black,
                                        size: 15.0,
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        data.classAuthor.capitalizeFirst.toString(),
                                        style: const TextStyle().copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ):Container(),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimaryContainer,
                                        size: 20.0,
                                      ),
                                      data.city.isNotEmpty?
                                      Text(
                                        data.city.capitalizeFirst!,
                                        style: const TextStyle().copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontSize: 12),
                                      ):Container(),
                                      data.country.isNotEmpty?data.city.isNotEmpty?
                                      Text(
                                        " , ${data.country.capitalizeFirst}",
                                        style: const TextStyle().copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontSize: 12),
                                      ):Text(
                                        "${data.country.capitalizeFirst}",
                                        style: const TextStyle().copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontSize: 12),
                                      ):Container()
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                                color: Colors.grey.shade200, width: 2.0),
                          ),
                          child: Flex(
                            direction: size.width >= 1000
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: size.width >= 800
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ratings",
                                    style: const TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      StarRating(
                                        color: const Color(0xffFFC403),
                                        rating: data.rating != null
                                            ? data.rating!.toDouble()
                                            : 0.0,
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
                                    style: const TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        style: const TextStyle().copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Source Language",
                                          style: const TextStyle().copyWith(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt_outlined,
                                          size: 20,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Target Language",
                                          style: const TextStyle().copyWith(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ]),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        fetchFlag2(data, url),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          data.targetLanguage,
                                          style: const TextStyle().copyWith(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),

                                        const SizedBox(
                                          width: 10,
                                        ),

                                        Icon(
                                          Icons.arrow_right_alt_outlined,
                                          size: 20,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                        ),

                                        const SizedBox(
                                          width: 10,
                                        ),
                                        fetchFlag(data, url),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          data.dominantLanguage,
                                          style: const TextStyle().copyWith(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
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
                            style: const TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            data.description.toString(),
                            style: const TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                        GetStorage().read("usertype") == 2
                            ? GetStorage().read("clientID") == senderId
                                ? Container()
                                : Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    padding: EdgeInsets.only(top: 10),
                                    child: Flex(
                                      direction: size.width >= 1000
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment: size.width >= 1000
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0)),
                                              side: BorderSide(
                                                width: 2,
                                                color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary ==
                                                        Colors.white
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Theme.of(context)
                                                        .colorScheme
                                                        .onPrimary,
                                              ),
                                            ),
                                            onPressed: () async {
                                              final result =
                                                  await showFutureLoadingDialog(
                                                context: context,
                                                future: () => createExchange(
                                                    receiverClassId,
                                                    senderClassId,
                                                    senderId,
                                                    receiverId),
                                              );
                                              if (result.result != null) {
                                                VRouter.of(context).to(
                                                    "/classDetails",
                                                    queryParameters: {
                                                      "id": result.result!
                                                    });
                                              }
                                              if (result == null) {
                                                VRouter.of(context).toSegments([
                                                  'rooms',
                                                  result.result!,
                                                  'details'
                                                ]);
                                              }
                                            },
                                            child: Text(
                                              "Confirm Exchange Request",
                                              style: const TextStyle().copyWith(
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .color,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
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
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0)),
                                              side: BorderSide(
                                                width: 2,
                                                color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimary ==
                                                        Colors.white
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Theme.of(context)
                                                        .colorScheme
                                                        .onPrimary,
                                              ),
                                            ),
                                            onPressed: () {
                                              window.close();

                                              // PangeaServices.ExchangeRejectRequest(
                                              //     data.pangeaClassRoomId,
                                              //     data.classAuthorId);
                                            },
                                            child: Text(
                                              "Cancel",
                                              style: const TextStyle().copyWith(
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .color,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
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
                  if (snapshot.hasError) {
                    if (kDebugMode) {
                      print(snapshot.error);
                    }
                  }
                  return Center(child: CircularProgressIndicator());
                }
              },
            )
          : Center(child: Text("You don't have permissions for this page")),
    );
  }
}
