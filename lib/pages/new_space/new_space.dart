import 'package:flutter/material.dart';

import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/flag_model.dart';
import 'package:pangeachat/pages/new_space/welcome_new_space.dart';
import 'package:pangeachat/utils/services.dart';
import 'package:vrouter/vrouter.dart';
import 'package:pangeachat/widgets/matrix.dart';

import '../homeserver_picker/home_controller.dart';

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
  //final getxController = Get.put(HomeController());

  var languageLevel = [
    'A1',
    'A2',
    'B1',
    'B2',
    'C1',
    'C2'
  ];
  String languageLevelDropdownValue = 'A1';
  List<LanguageFlag>languageFlagList =[];
  LanguageFlag? targetLanguage;
  LanguageFlag? sourceLanguage;

  bool publicGroup = false;
  bool openEnrollment = false;
  bool openToExchange = false;

  void setPublicGroup(bool b) => setState(() => publicGroup = b);
  void setOpenEnrollment(bool b)=>setState(()=>openEnrollment = b);
  void setOpentToExchange(bool b)=>setState(()=> openToExchange =b);
  getFlags() async {
   languageFlagList = await Services.getFlags();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFlags();
  }




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
        roomAliasName: publicGroup && classNameController.text.isNotEmpty
            ? classNameController.text.trim().toLowerCase().replaceAll(' ', '_')
            : null,
        name: classNameController.text.isNotEmpty
            ? classNameController.text
            : null,
      ),
    );
    if (roomID.error == null) {
      VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
    }
  }

  @override
  Widget build(BuildContext context) => WelcomeNewSpace(this);
}
