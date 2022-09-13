import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/services/services.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:pangeachat/pages/new_private_chat/new_private_chat_view.dart';
import 'package:pangeachat/pages/new_private_chat/qr_scanner_modal.dart';
import 'package:pangeachat/utils/fluffy_share.dart';
import 'package:pangeachat/utils/platform_infos.dart';
import 'package:pangeachat/utils/url_launcher.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';

import '../../config/app_config.dart';
import '../../model/class_detail_model.dart';
import '../chat_list/spaces_entry.dart';

import 'package:matrix/matrix.dart' as sdk;

class NewPrivateChat extends StatefulWidget {
  const NewPrivateChat({Key? key}) : super(key: key);

  @override
  NewPrivateChatController createState() => NewPrivateChatController();
}

class NewPrivateChatController extends State<NewPrivateChat> {
  final TextEditingController controller = TextEditingController();
  final FocusNode textFieldFocus = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool loading = false;
  String classId = "";
  bool _hideFab = false;

  // remove leading matrix.to from text field in order to simplify pasting
  final List<TextInputFormatter> removeMatrixToFormatters = [
    FilteringTextInputFormatter.deny(NewPrivateChatController.prefix),
    FilteringTextInputFormatter.deny(NewPrivateChatController.prefixNoProtocol),
  ];

  bool get hideFab => _hideFab;

  static const Set<String> supportedSigils = {'@', '!', '#'};

  static const String prefix = 'https://matrix.to/#/';
  static const String prefixNoProtocol = 'matrix.to/#/';

  void setHideFab() {
    if (textFieldFocus.hasFocus != _hideFab) {
      setState(() => _hideFab = textFieldFocus.hasFocus);
    }
  }

  math.Random random = new math.Random();
  @override
  void initState() {
    super.initState();
    textFieldFocus.addListener(setHideFab);

    Future.delayed(Duration(seconds: 1)).whenComplete(() =>
        VRouter.of(context).queryParameters['classId'] != null
            ? classId =
                VRouter.of(context).queryParameters['classId'].toString()
            : "");
  }

  @override
  void dispose() {
    textFieldFocus.removeListener(setHideFab);
    super.dispose();
  }


  void submitAction([_]) async {
    controller.text = controller.text.trim();
    if (!formKey.currentState!.validate()) return;

    final matrix = Matrix.of(context);
    String className = classId.isNotEmpty
        ? matrix.client.getRoomById(classId)!.displayname
        : "";
    Fluttertoast.showToast(
        msg: "Functionality under process",
        webBgColor: "#ff0000",
        backgroundColor: Colors.red);

    matrix.client
        .getDisplayName(controller.text)
        .then((value) => log("User Name: ${value.toString()}"));

    matrix.client
        .getUserProfile(controller.text)
        .then((value) => log("User Profile: ${value.toJson().toString()}"));

    //  final user = space.getState(EventTypes.RoomMember, userId)?.asUser;
    final roomID = await showFutureLoadingDialog(
      context: context,
      future: () => matrix.client.createRoom(
        invite: [controller.text],
        preset: sdk.CreateRoomPreset.privateChat,
        isDirect: true,
        initialState: [
          sdk.StateEvent(
            content: {
              "guest_access": "can_join",
            },
            type: EventTypes.GuestAccess,
            stateKey: "",
          ),
          sdk.StateEvent(content: {
            "via": ["matrix.staging.pangea.chat"],
            "canonical": true
          }, type: EventTypes.spaceParent, stateKey: classId),
          sdk.StateEvent(
            content: {"history_visibility": "invited"},
            type: EventTypes.HistoryVisibility,
          )
        ],
        // creationContent: {'type': RoomCreationTypes.mSpace},
        visibility: sdk.Visibility.private,
        roomAliasName: controller.text
                .split(":")
                .first
                .replaceAll("@", "")
                .substring(0, 6) +
            "-" +
            matrix.client.userID
                .toString()
                .split(":")
                .first
                .replaceAll("@", "")
                .substring(0, 6) +
            "#" +
            random.nextInt(9999).toString(),
        name: controller.text
                .split(":")
                .first
                .replaceAll("@", "")
                .substring(0, 6) +
            "-" +
            matrix.client.userID
                .toString()
                .split(":")
                .first
                .replaceAll("@", "")
                .substring(0, 6) +
            "#" +
            random.nextInt(9999).toString(),
      ),
    );
    if (roomID.result != null) {
      if (kDebugMode) {
        print("Room id:" + roomID.result!);
      }
      VRouter.of(context).pop();
      Fluttertoast.showToast(
          msg: "Created Successfully",
          webBgColor: "#00ff00",
          backgroundColor: Colors.green);
    }
    if (roomID == null) {
      VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
    }


    //  UrlLauncher(context, '$prefix${controller.text}').openMatrixToUrl();
  }

  String? validateForm(String? value) {
    if (value!.isEmpty) {
      return L10n.of(context)!.pleaseEnterAMatrixIdentifier;
    }
    if (!controller.text.isValidMatrixId ||
        !supportedSigils.contains(controller.text.sigil)) {
      return L10n.of(context)!.makeSureTheIdentifierIsValid;
    }
    if (controller.text == Matrix.of(context).client.userID) {
      return L10n.of(context)!.youCannotInviteYourself;
    }
    return null;
  }

  void inviteAction() => FluffyShare.share(
        'https://matrix.to/#/${Matrix.of(context).client.userID}',
        context,
      );


  void requestMoreMembersAction(String classId) async {
    final room = Matrix.of(context).client.getRoomById(classId);
    final participants = await showFutureLoadingDialog(
        context: context, future: () => room!.requestParticipants());
    if (participants.error == null) {
      setState(() => members = participants.result);

    }
  }

  List<User>? members;

  void openScannerAction() async {
    if (PlatformInfos.isAndroid) {
      final info = await DeviceInfoPlugin().androidInfo;
      if ((info.version.sdkInt ?? 16) < 21) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              L10n.of(context)!.unsupportedAndroidVersionLong,
            ),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
    }
    await Permission.camera.request();
    await showModalBottomSheet(
      context: context,
      useRootNavigator: false,
      //useSafeArea: false,
      builder: (_) => const QrScannerModal(),
    );
  }

  bool oneToOneChat = false;
  bool createRoom = false;

  final box = GetStorage();
  fetchClassInfo(String roomId) async {
    String accessToken = box.read("access") ?? "g";
    if (accessToken.isNotEmpty) {
      FetchClassInfoModel data =
          await PangeaServices.fetchClassInfo(context, roomId);
      if (data.permissions != null &&
          data.permissions.oneToOneChatClass != null) {
        data.permissions.oneToOneChatClass
            ? setState(() => oneToOneChat = true)
            : setState(() => oneToOneChat = false);
        data.permissions.isCreateRooms
            ? setState(() => createRoom = true)
            : setState(() => createRoom = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return NewPrivateChatView(this);
  }
}
