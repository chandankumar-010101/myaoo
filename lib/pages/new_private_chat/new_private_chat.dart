import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:pangeachat/pages/new_private_chat/new_private_chat_view.dart';
import 'package:pangeachat/pages/new_private_chat/qr_scanner_modal.dart';
import 'package:pangeachat/utils/fluffy_share.dart';
import 'package:pangeachat/utils/platform_infos.dart';
import 'package:pangeachat/utils/url_launcher.dart';
import 'package:pangeachat/widgets/matrix.dart';

import '../../config/app_config.dart';
import '../chat_list/spaces_entry.dart';

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
  SpacesEntry? _activeSpacesEntry;
  SpacesEntry get defaultSpacesEntry => AppConfig.separateChatTypes
      ? DirectChatsSpacesEntry()
      : AllRoomsSpacesEntry();
  SpacesEntry get activeSpacesEntry {
    final id = _activeSpacesEntry;
    return (id == null || !id.stillValid(context)) ? defaultSpacesEntry : id;
  }

  @override
  void initState() {
    super.initState();
    textFieldFocus.addListener(setHideFab);

  }

  @override
  void dispose() {
    textFieldFocus.removeListener(setHideFab);
    super.dispose();
  }

  void submitAction([_]) async {
    controller.text = controller.text.trim();
    if (!formKey.currentState!.validate()) return;
    UrlLauncher(context, '$prefix${controller.text}').openMatrixToUrl();
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

  void requestMoreMembersAction() async {
    final room = Matrix.of(context).client.getRoomById(_activeSpacesEntry!.getSpace(context)!.id);
    print(room);
    final participants = await showFutureLoadingDialog(
        context: context, future: () => room!.requestParticipants());
    if (participants.error == null) {
      print(participants.result);
     // setState(() => members = participants.result);
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

  @override
  Widget build(BuildContext context) => NewPrivateChatView(this);
}
