import 'package:flutter/material.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:vrouter/vrouter.dart';

import '../../services/class_services.dart';
import '../../widgets/matrix.dart';
import 'package:matrix/matrix.dart' as sdk;

class StudentPermissions extends StatefulWidget {
  const StudentPermissions({Key? key}) : super(key: key);

  @override
  State<StudentPermissions> createState() => _StudentPermissionsState();
}

class _StudentPermissionsState extends State<StudentPermissions> {
  bool oneToOneChatsWithinClass = false;
  bool oneToOneChatsWithinExchanges = false;
  bool createRooms = false;
  bool createRoomsInExchanges = false;
  bool createStories = false;
  bool shareVideos = false;
  bool sharePhotos = false;
  bool shareFiles = false;
  bool shareLocation = false;
  final box = GetStorage();

  void setOneToOneChatsWithinClass(bool b) =>
      setState(() => oneToOneChatsWithinClass = b);
  void setOneToOneChatWithinExchanges(bool b) =>
      setState(() => oneToOneChatsWithinExchanges = b);
  void setCreateRooms(bool b) => setState(() => createRooms = b);
  void setCreateRoomsInExchange(bool b) =>
      setState(() => createRoomsInExchanges = b);
  void setCreateStories(bool b) => setState(() => createStories = b);
  void setShareVideos(bool b) => setState(() => shareVideos = b);
  void setSharePhotos(bool b) => setState(() => sharePhotos = b);
  void setShareFiles(bool b) => setState(() => shareFiles = b);
  void setShareLocation(bool b) => setState(() => shareLocation = b);

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
      bool publicGroup;
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
        print(e);
        print("Unable to fetch Data from storage");
        return;
      }
      final matrix = Matrix.of(context);
      final roomID = await showFutureLoadingDialog(
        context: context,
        future: () => matrix.client.createRoom(
          preset: publicGroup
              ? sdk.CreateRoomPreset.publicChat
              : sdk.CreateRoomPreset.privateChat,
          creationContent: {'type': RoomCreationTypes.mSpace},
          visibility: publicGroup ? sdk.Visibility.public : null,
          roomAliasName: publicGroup && className.isNotEmpty
              ? className.trim().toLowerCase().replaceAll(' ', '_')
              : null,
          name: className.isNotEmpty ? className : null,
        ),
      );
      if (roomID.result != null) {
        print(roomID.result);
        //  print(roomID.result);
        // class_code = roomID.result!;
        //
        // var room = Matrix.of(context).client.getRoomById(class_code);
        //
        // print(roomID.result);
        // if(room !=null){
        //   // print("working");
        //   // print(room.canonicalAlias);
        //   // if(room.canonicalAlias.isEmpty){
        //   //   print("rerr");
        //   // }else{
        //   //   print("work");
        //   //   class_url = room.canonicalAlias;
        //   // }
        //
        // }else{
        //   print("test");
        // }

        await ClassServices.createClass(
          context: context,
          isPublic: publicGroup,
          isSharePhoto: sharePhotos,
          isCreateRooms: createRooms,
          isShareFiles: shareFiles,
          isShareVideo: shareVideos,
          isCreateStories: createStories,
          isShareLocation: shareLocation,
          isOpenExchange: openToExchange,
          oneToOneChatExchange: oneToOneChatsWithinExchanges,
          isOpenEnrollment: openEnrollment,
          isCreateRoomsExchange: createRoomsInExchanges,
          oneToOneChatClass: oneToOneChatsWithinClass,
          className: className.toString(),
          languageLevel: languageLevel,
          city: cityName.toString(),
          roomId: roomID.result!,
          desc: disc.toString(),
          country: countryName,
          dominantLanguage: sourceLanguage,
          targetLanguage: targetLanguage,
          schoolName: schoolName.toString(),
        );
      }
      if (roomID == null) {
        VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
        print(roomID);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    box.read("oneToOneClass") == null
        ? oneToOneChatsWithinClass = false
        : oneToOneChatsWithinClass = box.read("oneToOneClass");
    box.read("oneToOneExchange") == null
        ? oneToOneChatsWithinExchanges = false
        : oneToOneChatsWithinExchanges = box.read("oneToOneExchange");
    box.read("createRoom") == null
        ? createRooms = false
        : createRooms = box.read("createRoom");
    box.read("createRoomExchange") == null
        ? createRoomsInExchanges = false
        : createRoomsInExchanges = box.read("createRoomExchange");
    box.read("createStories") == null
        ? createStories = false
        : createStories = box.read("createStories");
    box.read("shareVideo") == null
        ? shareVideos = false
        : shareVideos = box.read("shareVideo");
    box.read("sharePhotos") == null
        ? sharePhotos = false
        : sharePhotos = box.read("sharePhotos");
    box.read("shareFiles") == null
        ? shareFiles = false
        : shareFiles = box.read("shareFiles");
    box.read("shareLocation") == null
        ? shareLocation = false
        : shareLocation = box.read("shareLocation");
    box.remove("oneToOneClass");
    box.remove("oneToOneExchange");
    box.remove("createRoom");
    box.remove("createRoomExchange");
    box.remove("createStories");
    box.remove("shareVideo");
    box.remove("sharePhotos");
    box.remove("shareFiles");
    box.remove("shareLocation");
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    String id = context.vRouter.queryParameters['class_id'] ?? "";
    return Scaffold(
        appBar: id.isEmpty
            ? AppBar(
                backgroundColor: Theme.of(context).backgroundColor,
                title: Text(
                  "Create a Class",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: 14),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.left,
                ),
                centerTitle: true,
                elevation: 10,
                automaticallyImplyLeading: false,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    context.vRouter.to("/newclass/class_permissions");
                    print(ModalRoute.of(context)!.settings.name);
                    print(Uri.base);
                  },
                ),
              )
            : null,
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.02),
                  width: size.width,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Student Permissions",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 14,fontWeight: FontWeight.w700),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                //switch buttons
                Container(
                  constraints: const BoxConstraints(
                    minWidth: 100,
                    maxWidth: 500,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SwitchListTile.adaptive(
                          title: Text(
                            "1-to-1 chats within class",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                              fontWeight: FontWeight.w700

                            ),
                            overflow: TextOverflow.clip,

                          ),
                          value: oneToOneChatsWithinClass,
                          onChanged: setOneToOneChatsWithinClass,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "If you allow 1-to-1 chats, your students can send and receive individual chats with other students within your class. Otherwise, they can only chat in rooms.",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "1-to-1 chats within exchanges",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,

                          ),
                          value: oneToOneChatsWithinExchanges,
                          onChanged: setOneToOneChatWithinExchanges,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "If you allow 1-to-1 chats within exchanges, your students can send and receive individual chats with students in exchange-connected classes.",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "Create rooms",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          value: createRooms,
                          onChanged: setCreateRooms,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text(
                                      "Toggle this on to allow students to create rooms within your class",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontSize: 14),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.left,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "Create rooms in exchanges",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          value: createRoomsInExchanges,
                          onChanged: setCreateRoomsInExchange,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Toggle this on to allow students to create rooms within exchanges.",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "Create Stories",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          value: createStories,
                          onChanged: setCreateStories,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Toggle this on to allow students to create stories.",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "Share Video",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          value: shareVideos,
                          onChanged: setShareVideos,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Toggle this on to allow students to share videos chats/rooms",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "Share Photos",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          value: sharePhotos,
                          onChanged: setSharePhotos,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Toggle this on to allow students to share photos in chats/rooms.",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "Share Files",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          value: shareFiles,
                          onChanged: setShareFiles,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Toggle this on to allow students to share files in chats/rooms",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SwitchListTile.adaptive(
                          title: Text(
                            "Share Location",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          value: shareLocation,
                          onChanged: setShareLocation,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Toggle this on to allow students to share their location in chats/rooms",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.02,
                    ),
                    child: id.isEmpty
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "3/4",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  //    context.vRouter.to("/invite_students");
                                  if (ModalRoute.of(context)!.settings.name ==
                                      "student_permissions") {
                                    submitAction();
                                  } else {
                                    //update
                                  }

                                  // widget.controller.submitAction();
                                  // setState(() {
                                  //   widget.controller.createClass = 4;
                                  // });
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary ==
                                                  Colors.white
                                              ? Theme.of(context)
                                                  .primaryColorLight
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary)),
                                  child: const Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  VRouter.of(context).to('/classDetails',
                                      queryParameters: {"id": id});
                                },
                                child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary ==
                                                  Colors.white
                                              ? Theme.of(context)
                                                  .primaryColorLight
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary)),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(context)
                                              .primaryColorLight
                                              : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          fontSize: 14),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  final result = await showFutureLoadingDialog(
                                    context: context,
                                    future: () =>
                                        ClassServices.updateStudentPermission(
                                      classId: id.toString(),
                                      sharePhotos: sharePhotos.toString(),
                                      oneToOneChatsWithinClass: oneToOneChatsWithinClass.toString(),
                                      createRoomsInExchanges:createRoomsInExchanges.toString(),
                                      createStories: createStories.toString(),
                                      shareFiles: shareFiles.toString(),
                                      oneToOneChatsWithinExchanges: oneToOneChatsWithinExchanges.toString(),
                                      createRooms: createRooms.toString(),
                                      shareVideos: shareVideos.toString(),
                                      shareLocation: shareLocation.toString(), context: context,
                                    ),
                                  );
                                  if (result != null) {
                                    print("updated");
                                    VRouter.of(context).to('/classDetails',
                                        queryParameters: {"id": id});
                                    // context.vRouter.to("/classDetails/update_student_permissions",queryParameters: {"class_id": id, });
                                  }
                                },
                                child: Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary ==
                                                  Colors.white
                                              ? Theme.of(context)
                                                  .primaryColorLight
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary)),
                                  child: Center(
                                    child: Text(
                                      "Save",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(context)
                                              .primaryColorLight
                                              : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          fontSize: 14),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                SizedBox(
                  height: size.height * 0.03,
                ),
              ],
            ),
          ),
        ));
  }
}