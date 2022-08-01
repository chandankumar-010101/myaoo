import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pangeachat/config/themes.dart';
import 'package:pangeachat/pages/connect/connect_page.dart';
import 'package:pangeachat/pages/connect/sso_button.dart';
import 'package:pangeachat/widgets/matrix.dart';

class ConnectPageView extends StatelessWidget {
  final ConnectPageController controller;

  const ConnectPageView(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = Matrix.of(context).loginAvatar;
    final identityProviders = controller.identityProviders;
    // const String flagsPath = "assets/countryFlags/";
    // const countries = [
    //   "zh.svg",
    //   "tk.svg",
    //   "td.svg",
    //   "de.svg",
    //   "us.svg",
    //   "ko.svg",
    //   "ve.svg",
    //   "pl.svg",
    //   "mv.svg",
    //   "no.svg"
    // ];

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
              // ConstrainedBox(
              //   constraints: const BoxConstraints(maxWidth: 700),
              //   child: SizedBox(
              //     height: 150,
              //     child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: ((BuildContext context, int index) {
              //         final String fullFlagPath = flagsPath + countries[index];
              //         return Container(
              //           margin: const EdgeInsets.only(right: 10),
              //           child: Center(
              //             child: CircleAvatar(
              //               radius: 30.0,
              //               backgroundColor: Colors.transparent,
              //               child: ClipRRect(
              //                 child: SvgPicture.asset(
              //                   fullFlagPath,
              //                   fit: BoxFit.contain,
              //                 ),
              //                 borderRadius: BorderRadius.circular(50.0),
              //               ),
              //             ),
              //           ),
              //         );
              //       }),
              //       itemCount: countries.length,
              //     ),
              //   ),
              // ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 100),
                          child:
                              Image.asset("assets/newAssets/pangea-bare.png")),
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
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (Matrix.of(context)
                                          .loginRegistrationSupported ??
                                      false) ...[
                                    SizedBox(height: 20.0),
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
                                          height: 50,
                                          child: TextField(
                                            controller:
                                                controller.usernameController,
                                            onSubmitted: (_) =>
                                                controller.signUp(),
                                            style: FluffyThemes
                                                .loginTextFieldStyle,
                                            // decoration: FluffyThemes.loginTextFieldDecoration(
                                            //   prefixIcon: const Icon(
                                            //     Icons.account_box_outlined,
                                            //     color: Colors.black,
                                            //   ),
                                            //   hintText: L10n.of(context)!.chooseAUsername,
                                            //   errorText: controller.signupError,
                                            // ),
                                            decoration: InputDecoration(
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
                                    // Row(
                                    //   children: [
                                    //     const Expanded(
                                    //         child:
                                    //             Divider(color: Colors.white)),
                                    //     Padding(
                                    //       padding: const EdgeInsets.all(16.0),
                                    //       child: Text(
                                    //         L10n.of(context)!.or,
                                    //         style: const TextStyle(
                                    //             color: Colors.black),
                                    //       ),
                                    //     ),
                                    //     const Expanded(
                                    //         child:
                                    //             Divider(color: Colors.white)),
                                    //   ],
                                    // ),
                                    SizedBox(
                                      height: 40,
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
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            25.0),
                                                    child: ElevatedButton(
                                                      onPressed: () => controller
                                                          .ssoLoginAction(
                                                              identityProviders
                                                                  .single.id!),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.white
                                                            .withAlpha(200),
                                                        onPrimary: Colors.black,
                                                        shadowColor:
                                                            Colors.white,
                                                      ),
                                                      child: Text(identityProviders
                                                              .single.name ??
                                                          identityProviders
                                                              .single.brand ??
                                                          L10n.of(context)!
                                                              .loginWithOneClick),
                                                    ),
                                                  )
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

                                  // Row(
                                  //   crossAxisAlignment:
                                  //       CrossAxisAlignment.center,
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: [
                                  //     InkWell(
                                  //       child: Image.asset(
                                  //         "assets/google.png",
                                  //         height: 40,
                                  //         width: 40,
                                  //       ),
                                  //     ),
                                  //     const SizedBox(width: 20.0),
                                  //     Image.asset(
                                  //       "assets/google.png",
                                  //       height: 40,
                                  //       width: 40,
                                  //     ),
                                  //     const SizedBox(width: 20.0),
                                  //     Image.asset(
                                  //       "assets/google.png",
                                  //       height: 40,
                                  //       width: 40,
                                  //     ),
                                  //   ],
                                  // ),
                                  // const SizedBox(
                                  //   height: 40,
                                  // )
                                  // if (controller.supportsLogin)
                                  //   Padding(
                                  //     padding: const EdgeInsets.all(16.0),
                                  //     child: Hero(
                                  //       tag: 'signinButton',
                                  //       child: ElevatedButton(
                                  //         onPressed:
                                  //             controller.loading ? () {} : controller.login,
                                  //         style: ElevatedButton.styleFrom(
                                  //           primary: Colors.white.withAlpha(200),
                                  //           onPrimary: Colors.black,
                                  //           shadowColor: Colors.white,
                                  //         ),
                                  //         child: Text(L10n.of(context)!.login),
                                  //       ),
                                  //     ),
                                  //   ),
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
}
