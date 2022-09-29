import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/widgets/layouts/login_scaffold.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrouter/vrouter.dart';

import 'homeserver_picker.dart';

class HomeserverPickerView extends StatelessWidget {
  final HomeserverPickerController controller;

  HomeserverPickerView(this.controller, {Key? key}) : super(key: key);
  // final homeController = Get.put(HomeController());

  static const String flagsPath = "assets/countryFlags/";
  // static const countries = [
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

  static const countries = [
    "zh.svg",
    "en.png",
    "fr.svg",
    "de.svg",
    "it.svg",
    "ja.png",
    "ko.svg",
    "br.svg",
    "ru.svg",
    "es.svg",
  ];

  @override
  Widget build(BuildContext context) {
    final benchmarkResults = controller.benchmarkResults;
    return LoginScaffold(
     // appBar:
      // VRouter.of(context).path == '/home'
          // ? null
          // : AppBar(title: Text(L10n.of(context)!.addAccount)),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((BuildContext context, int index) {
                  final String fullFlagPath = flagsPath + countries[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Center(
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.transparent,
                        child: ClipRRect(
                          child: countries[index] == "en.png" ||
                                  countries[index] == "ja.png"
                              ? Image.asset(fullFlagPath)
                              : SvgPicture.asset(
                                  fullFlagPath,
                                  fit: BoxFit.contain,
                                ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  );
                }),
                itemCount: countries.length,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 25),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 480),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: ConstrainedBox(
                                    constraints: BoxConstraints(maxHeight: 80),
                                    child: SvgPicture.asset(
                                      "assets/newAssets/pangea-bare.svg",
                                    ),),
                              ),
                              Column(
                                children: [
                                  Text(AppConfig.applicationName,
                                      style: const TextStyle(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800)),
                                  const Text("Life is Learning",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Hero(
                tag: 'loginButton',
                child: ElevatedButton(
                  onPressed: controller.isLoading
                      ? () {}
                      : controller.checkHomeserverAction,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white.withOpacity(0.2),
                      onPrimary: Colors.white,
                      surfaceTintColor: Colors.white,
                      side: const BorderSide(width: 2, color: Colors.white)),
                  child: controller.isLoading
                      ? const LinearProgressIndicator()
                      : Text(
                          L10n.of(context)!.start,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
