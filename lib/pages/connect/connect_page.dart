import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:matrix/matrix.dart';
import 'package:universal_html/html.dart' as html;
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/pages/connect/connect_page_view.dart';
import 'package:pangeachat/utils/localized_exception_extension.dart';
import 'package:pangeachat/utils/platform_infos.dart';
import 'package:pangeachat/widgets/matrix.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  State<ConnectPage> createState() => ConnectPageController();
}

class ConnectPageController extends State<ConnectPage> {
  final TextEditingController usernameController = TextEditingController();
  String? signupError;
  bool loading = false;

  void pickAvatar() async {
    final source = !PlatformInfos.isMobile
        ? ImageSource.gallery
        : await showModalActionSheet<ImageSource>(
            context: context,
            title: L10n.of(context)!.changeYourAvatar,
            actions: [
              SheetAction(
                key: ImageSource.camera,
                label: L10n.of(context)!.openCamera,
                isDefaultAction: true,
                icon: Icons.camera_alt_outlined,
              ),
              SheetAction(
                key: ImageSource.gallery,
                label: L10n.of(context)!.openGallery,
                icon: Icons.photo_outlined,
              ),
            ],
          );
    if (source == null) return;
    final picked = await ImagePicker().pickImage(
      source: source,
      imageQuality: 50,
      maxWidth: 512,
      maxHeight: 512,
    );
    setState(() {
      Matrix.of(context).loginAvatar = picked;
    });
  }

  void signUp() async {
    usernameController.text = usernameController.text.trim();
    final localpart =
        usernameController.text.toLowerCase().replaceAll(' ', '_');
    if (localpart.isEmpty) {
      setState(() {
        signupError = L10n.of(context)!.pleaseChooseAUsername;
      });
      return;
    }

    setState(() {
      signupError = null;
      loading = true;
    });

    try {
      try {
        await Matrix.of(context).getLoginClient().register(username: localpart);
      } on MatrixException catch (e) {
        if (!e.requireAdditionalAuthentication) rethrow;
      }
      setState(() {
        loading = false;
      });
      Matrix.of(context).loginUsername = usernameController.text;
      VRouter.of(context).to('signup');
    } catch (e, s) {
      Logs().d('Sign up failed', e, s);
      setState(() {
        signupError = e.toLocalizedString(context);
        loading = false;
      });
    }
  }

  bool _supportsFlow(String flowType) =>
      Matrix.of(context)
          .loginHomeserverSummary
          ?.loginFlows
          .any((flow) => flow.type == flowType) ??
      false;

  bool get supportsSso =>
      (PlatformInfos.isMobile ||
          PlatformInfos.isWeb ||
          PlatformInfos.isMacOS) &&
      _supportsFlow('m.login.sso');

  bool get supportsLogin => _supportsFlow('m.login.password');

  void login() => VRouter.of(context).to('login');

  Map<String, dynamic>? _rawLoginTypes;

  List<IdentityProvider>? get identityProviders {
    final loginTypes = _rawLoginTypes;
    if (loginTypes == null) return null;
    final rawProviders = loginTypes.tryGetList('flows')!.singleWhere((flow) =>
        flow['type'] == AuthenticationTypes.sso)['identity_providers'];
    final checkList = ["GitHub", "GitLab"];
    // final List<IdentityProvider> list =[];
    // for(int i=0; i<(rawProviders as List).length; i++){
    //   if (!checkList.contains(rawProviders[i]["name"])) {
    //     list.add(IdentityProvider.fromJson(rawProviders[i]["name"]));
    //   }
    // }
    final list = (rawProviders as List).where((element) => !checkList.contains(element["name"])).toList();


    final newList = list.map((json) =>
      IdentityProvider.fromJson(json)
    ).toList();

    // final list = (rawProviders as List).map((json) {
    //   if (!checkList.contains(json["name"])) {
    //     return IdentityProvider.fromJson(json);
    //   }
    //   return IdentityProvider.fromJson(null);
    // }).toList();
    if (PlatformInfos.isCupertinoStyle) {
      list.sort((a, b) => a.brand == 'apple' ? -1 : 1);
    }
    return newList;
  }

  void ssoLoginAction(String id) async {
    final redirectUrl = kIsWeb
        ? html.window.origin! + '/auth.html'
        : AppConfig.appOpenUrlScheme.toLowerCase() + '://login';
    final url =
        '${Matrix.of(context).getLoginClient().homeserver?.toString()}/_matrix/client/r0/login/sso/redirect/${Uri.encodeComponent(id)}?redirectUrl=${Uri.encodeQueryComponent(redirectUrl)}';
    final urlScheme = Uri.parse(redirectUrl).scheme;
    print("here ${url}");
    print("here1 ${urlScheme}");
    final result = await FlutterWebAuth.authenticate(
      url: url,
      callbackUrlScheme: urlScheme,
    );
    print("here2 ${result}");
    final token = Uri.parse(result).queryParameters['loginToken'];
    print("here3 ${token}");
    if (token?.isEmpty ?? false) return;

    await showFutureLoadingDialog(
      context: context,
      future: () => Matrix.of(context).getLoginClient().login(
            LoginType.mLoginToken,
            token: token,
            initialDeviceDisplayName: PlatformInfos.clientName,
          ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (supportsSso) {
      Matrix.of(context)
          .getLoginClient()
          .request(
            RequestType.GET,
            '/client/r0/login',
          )
          .then((loginTypes) => setState(() {
                _rawLoginTypes = loginTypes;
              }));
    }
  }

  @override
  Widget build(BuildContext context) => ConnectPageView(this);
}

class IdentityProvider {
  final String? id;
  final String? name;
  final String? icon;
  final String? brand;

  IdentityProvider({this.id, this.name, this.icon, this.brand});

  factory IdentityProvider.fromJson(Map<String, dynamic> json) =>
      IdentityProvider(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
        brand: json['brand'],
      );
}
