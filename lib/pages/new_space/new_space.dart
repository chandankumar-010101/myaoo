import 'package:flutter/material.dart';

import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:matrix/matrix.dart';
<<<<<<< HEAD
=======
import 'package:pangeachat/model/create_class_model.dart';
import 'package:pangeachat/model/flag_model.dart';
import 'package:pangeachat/pages/new_space/welcome_new_space.dart';
import 'package:pangeachat/services/class_services.dart';
import 'package:pangeachat/services/services.dart';
>>>>>>> 501614c6c143db90331e1f9ab4372b6ed5925ad0
import 'package:vrouter/vrouter.dart';
import 'package:pangeachat/widgets/matrix.dart';

import 'new_space_view.dart';

class NewSpace extends StatefulWidget {
  const NewSpace({Key? key}) : super(key: key);

  @override
  NewSpaceController createState() => NewSpaceController();
}

class NewSpaceController extends State<NewSpace> {
  TextEditingController controller = TextEditingController();
  bool publicGroup = false;

  void setPublicGroup(bool b) => setState(() => publicGroup = b);

<<<<<<< HEAD
  void submitAction([_]) async {
    final matrix = Matrix.of(context);
    final roomID = await showFutureLoadingDialog(
      context: context,
      future: () => matrix.client.createRoom(
        preset: publicGroup
            ? sdk.CreateRoomPreset.publicChat
            : sdk.CreateRoomPreset.privateChat,
        creationContent: {'type': RoomCreationTypes.mSpace},
        visibility: publicGroup ? sdk.Visibility.public : null,
        roomAliasName: publicGroup && controller.text.isNotEmpty
            ? controller.text.trim().toLowerCase().replaceAll(' ', '_')
            : null,
        name: controller.text.isNotEmpty ? controller.text : null,
      ),
    );
    if (roomID.error == null) {
      VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
=======
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
>>>>>>> 501614c6c143db90331e1f9ab4372b6ed5925ad0
    }
  }

  @override
  Widget build(BuildContext context) => NewSpaceView(this);
}
