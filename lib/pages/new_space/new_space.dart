import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/create_class_model.dart';
import 'package:pangeachat/model/flag_model.dart';
import 'package:pangeachat/pages/new_space/welcome_new_space.dart';
import 'package:pangeachat/services/class_services.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

import '../../widgets/matrix.dart';

class NewSpace extends StatefulWidget {
  const NewSpace({Key? key}) : super(key: key);

  @override
  NewSpaceController createState() => NewSpaceController();
}

class NewSpaceController extends State<NewSpace> {
  TextEditingController classNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();

  int createClass = 0;
  var languageLevel = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'];
  String languageLevelDropdownValue = '';
  List<LanguageFlag> languageFlagList = [];
  LanguageFlag? targetLanguage;
  LanguageFlag? sourceLanguage;

  bool publicGroup = false;
  bool openEnrollment = false;
  bool openToExchange = false;

  bool oneToOneChatsWithinClass = false;
  bool oneToOneChatsWithinExchanges = false;
  bool createRooms = false;
  bool createRoomsInExchanges = false;
  bool createStories = false;
  bool shareVideos = false;
  bool sharePhotos = false;
  bool shareFiles = false;
  bool shareLocation = false;

  void setPublicGroup(bool b) => setState(() => publicGroup = b);
  void setOpenEnrollment(bool b) => setState(() => openEnrollment = b);
  void setOpentToExchange(bool b) => setState(() => openToExchange = b);
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

  getFlags() async {
    languageFlagList = await Services.getFlags();
  }

  void checkFirstStep() {
    if (classNameController.text.isEmpty ||
        discriptionController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Class name and Description is required!", fontSize: 16.0);
    } else if (targetLanguage == null ||
        sourceLanguage == null ||
        languageLevelDropdownValue.isEmpty) {
      Fluttertoast.showToast(msg: "Language must be selected!", fontSize: 16.0);
    } else {
      setState(() {
        createClass = 2;
      });
    }
  }

  final box = GetStorage();
  @override
  void initState() {
    super.initState();
    getFlags();
    print(box.read("access"));
  }

  int fetchLangLevel() {
    int langlevel = 0;
    switch (languageLevelDropdownValue) {
      case 'A1':
        langlevel = 1;
        return langlevel;
      case 'A2':
        langlevel = 2;
        return langlevel;
      case 'B1':
        langlevel = 3;
        return langlevel;
      case "B2":
        langlevel = 4;
        return langlevel;
      case "C1":
        langlevel = 5;
        return langlevel;
      case "C2":
        langlevel = 6;
        return langlevel;
      default:
        langlevel = 0;
        return langlevel;
    }
  }

  void submitAction() async {
    int i = fetchLangLevel();
    if (i == 0) {
      print("Invalid Language value");
    } else {
      final matrix = Matrix.of(context);
      final roomID = await showFutureLoadingDialog(
        context: context,
        future: () => matrix.client.createRoom(
          preset: publicGroup
              ? sdk.CreateRoomPreset.publicChat
              : sdk.CreateRoomPreset.privateChat,
          creationContent: {'type': RoomCreationTypes.mSpace},
          visibility: publicGroup ? sdk.Visibility.public : null,
          roomAliasName: publicGroup && classNameController.text.isNotEmpty
              ? classNameController.text
                  .trim()
                  .toLowerCase()
                  .replaceAll(' ', '_')
              : null,
          name: classNameController.text.isNotEmpty
              ? classNameController.text
              : null,
        ),
      );
      if (roomID.result != null) {
        print(roomID.result);

        await ClassServices.createClass(
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
          className: classNameController.text.toString(),
          languageLevel: i,
          city:  cityController.text,
          roomId: roomID.result!,
          desc:  discriptionController.text,
          country:  countryController.text,
          dominantLanguage:  sourceLanguage!.languageName!,
          targetLanguage: targetLanguage!.languageName!,
          schoolName: schoolController.text.toString(),
        ).then((value) {
          setState(() {
            createClass = 4;
          });
        });
      }
      if (roomID == null) {
        VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
        print(roomID);
      }
    }
  }

  @override
  Widget build(BuildContext context) => WelcomeNewSpace(this);
}
