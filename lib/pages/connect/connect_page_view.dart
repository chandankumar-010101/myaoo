import 'dart:typed_data';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/config/themes.dart';
import 'package:pangeachat/pages/connect/connect_page.dart';
import 'package:pangeachat/pages/connect/sso_button.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectPageView extends StatelessWidget {
  final ConnectPageController controller;

  const ConnectPageView(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = Matrix.of(context).loginAvatar;
    final identityProviders = controller.identityProviders;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: !controller.loading,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/newAssets/home_wallpaper.png',
            ),
          ),
        ),
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 100),
                        child: SvgPicture.asset(
                          "assets/newAssets/pangea-bare.svg",
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 550),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.3),
                                  color: Colors.grey.shade100.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: Column(
                                children: [
                                  if (Matrix.of(context)
                                          .loginRegistrationSupported ??
                                      false) ...[
                                    const SizedBox(height: 20.0),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Center(
                                        child: Stack(
                                          children: [
                                            Material(
                                              borderRadius:
                                                  BorderRadius.circular(64),
                                              elevation: 10,
                                              color: Colors.transparent,
                                              clipBehavior: Clip.hardEdge,
                                              child: CircleAvatar(
                                                radius: 54,
                                                backgroundColor:
                                                    Colors.white.withAlpha(200),
                                                child: avatar == null
                                                    ? const Icon(
                                                        Icons.person_outlined,
                                                        color: Colors.black,
                                                        size: 44,
                                                      )
                                                    : FutureBuilder<Uint8List>(
                                                        future: avatar
                                                            .readAsBytes(),
                                                        builder: (context,
                                                            snapshot) {
                                                          final bytes =
                                                              snapshot.data;
                                                          if (bytes == null) {
                                                            return const CircularProgressIndicator
                                                                .adaptive();
                                                          }
                                                          return Image.memory(
                                                            bytes,
                                                            fit: BoxFit.cover,
                                                            width: 128,
                                                            height: 128,
                                                          );
                                                        },
                                                      ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: FloatingActionButton(
                                                mini: true,
                                                onPressed:
                                                    controller.pickAvatar,
                                                backgroundColor: Colors.white,
                                                foregroundColor: Colors.black,
                                                child: const Icon(
                                                    Icons.camera_alt_outlined),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ConstrainedBox(
                                      constraints:
                                          const BoxConstraints(maxWidth: 400),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: SizedBox(
                                          //height: 50,
                                          child: TextField(
                                            controller:
                                                controller.usernameController,
                                            onSubmitted: (_) =>
                                                controller.signUp(),
                                            style: FluffyThemes
                                                .loginTextFieldStyle,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 10.0),
                                              fillColor:
                                                  const Color(0xFFDADDE2),
                                              filled: true,
                                              errorText: controller.signupError,
                                              hintText: L10n.of(context)!
                                                  .chooseAUsername,
                                              hintStyle: const TextStyle(
                                                  color: Color(0x35204880)),
                                              prefixIcon: SvgPicture.asset(
                                                "assets/newAssets/userIcon.svg",
                                                fit: BoxFit.scaleDown,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ConstrainedBox(
                                      constraints:
                                          const BoxConstraints(maxWidth: 400),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Hero(
                                          tag: 'loginButton',
                                          child: ElevatedButton(
                                            onPressed: controller.loading
                                                ? null
                                                : controller.signUp,
                                            style: ElevatedButton.styleFrom(
                                              primary: const Color(0xFF352048),
                                              onPrimary: Colors.white,
                                              shadowColor: Colors.white,
                                            ),
                                            child: controller.loading
                                                ? const LinearProgressIndicator()
                                                : Text(
                                                    L10n.of(context)!.signUp),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Already have an account ?",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        InkWell(
                                          onTap: controller.loading
                                              ? () {}
                                              : controller.login,
                                          child: const Text(
                                            "Log In",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    errorWidget(context, controller.loginError),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                  if (controller.supportsSso)
                                    identityProviders == null
                                        ? const SizedBox(
                                            height: 74,
                                            child: Center(
                                                child: CircularProgressIndicator
                                                    .adaptive(
                                              backgroundColor: Colors.white,
                                            )),
                                          )
                                        : Center(
                                            child: identityProviders.length == 1
                                                ? ConstrainedBox(
                                                    constraints:
                                                        const BoxConstraints(
                                                            maxWidth: 400),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 25,
                                                              right: 25),
                                                      child:
                                                          ElevatedButton.icon(
                                                        onPressed: () => controller
                                                            .ssoLoginAction(
                                                                identityProviders
                                                                    .single
                                                                    .id!),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Colors.white
                                                              .withAlpha(200),
                                                          onPrimary:
                                                              Colors.black,
                                                          shadowColor:
                                                              Colors.white,
                                                        ),
                                                        icon: identityProviders
                                                                    .single
                                                                    .icon ==
                                                                null
                                                            ? Image.asset(
                                                                "assets/png/google.png",
                                                                width: 25,
                                                                height: 25,
                                                              )
                                                            : CachedNetworkImage(
                                                                imageUrl: Uri.parse(
                                                                        identityProviders
                                                                            .single
                                                                            .icon!)
                                                                    .getDownloadLink(
                                                                        Matrix.of(context)
                                                                            .getLoginClient())
                                                                    .toString(),
                                                                width: 30,
                                                                height: 30,
                                                              ),
                                                        label: Text(identityProviders
                                                                .single.name ??
                                                            identityProviders
                                                                .single.brand ??
                                                            L10n.of(context)!
                                                                .loginWithOneClick),
                                                      ),
                                                    ))
                                                : Wrap(
                                                    children: <Widget>[
                                                      for (final identityProvider
                                                          in identityProviders)
                                                        SsoButton(
                                                          onPressed: () => controller
                                                              .ssoLoginAction(
                                                                  identityProvider
                                                                      .id!),
                                                          identityProvider:
                                                              identityProvider,
                                                        ),
                                                    ].toList(),
                                                  ),
                                          ),
                                  errorWidget(context, controller.ssoError),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(maxWidth: 400),
                                    child: Row(children: [
                                      Checkbox(
                                          value: controller.isTnCChecked,
                                          onChanged: (value) {
                                            controller.onTncChange(value);
                                          }),
                                      Expanded(child: tncWidget(context))
                                    ]),
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () =>
                                            launch(AppConfig.privacyUrl),
                                        child: Text(
                                          L10n.of(context)!.privacy,
                                          style: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tncWidget(BuildContext context) {
    return RichText(
        text: TextSpan(text: 'I agree to the', children: const [
      TextSpan(
          text: ' Terms and Conditions ', style: TextStyle(color: Colors.blue)),
      TextSpan(text: 'and certify I am at least 13 years of age.')
    ]));
  }

  Widget errorWidget(BuildContext context, String? erroMessage) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Container(
        margin: EdgeInsets.only(top: 5),
        child: Text(
          erroMessage ?? '',
          style: TextStyle(color: Color(0xFFc34c4b), fontSize: 12),
        ),
      ),
    );
  }
}
