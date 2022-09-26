import 'package:flutter/material.dart';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/pages/homeserver_picker/home_controller.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/pages/settings_account/settings_account_view.dart';
import 'package:pangeachat/widgets/matrix.dart';

import '../../model/flag_model.dart';

class SettingsAccount extends StatefulWidget {
  const SettingsAccount({Key? key}) : super(key: key);

  @override
  SettingsAccountController createState() => SettingsAccountController();
}

class SettingsAccountController extends State<SettingsAccount> {
  Future<dynamic>? profileFuture;
  Profile? profile;
  bool profileUpdated = false;
  HomeController controller = Get.put(HomeController());
  void updateProfile() => setState(() {
        profileUpdated = true;
        profile = profileFuture = null;
      });

  void setDisplaynameAction() async {
    final input = await showTextInputDialog(
      useRootNavigator: false,
      context: context,
      title: L10n.of(context)!.editDisplayname,
      okLabel: L10n.of(context)!.ok,
      cancelLabel: L10n.of(context)!.cancel,
      textFields: [
        DialogTextField(
          initialText: profile?.displayName ??
              Matrix.of(context).client.userID!.localpart,
        )
      ],
    );
    if (input == null) return;
    final matrix = Matrix.of(context);
    final success = await showFutureLoadingDialog(
      context: context,
      future: () =>
          matrix.client.setDisplayName(matrix.client.userID!, input.single),
    );
    if (success.error == null) {
      updateProfile();
    }
  }

  List<LanguageFlag> languageFlagList = [];
  List<LanguageFlag> languageFlag2List = [];
  getFlags() async {
    languageFlagList = await PangeaServices.getFlags();
    languageFlag2List = await PangeaServices.getFlags2();

    setState(() {});
  }

  LanguageFlag? targetLanguage;
  LanguageFlag? sourceLanguage;

  fetchData() {
    String source = GetStorage().read("sourcelanguage");
    List<LanguageFlag> sourceList = [];
    sourceList = languageFlagList
        .where((element) =>
            element.languageName!.toLowerCase() == source.toLowerCase())
        .toList();

    if (sourceList.isNotEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            sourceList.first.languageFlag!,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            // widget.controller.sourceLanguage!.languageName.toString().capitalize??"",
            sourceList.first.languageName.toString().capitalizeFirst ?? "",
            style: TextStyle().copyWith(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 14),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          )
        ],
      );
    } else {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: Center(
          child: Text("Select Language"),
        ),
      );
    }
  }

  fetchData2() {
    String target = GetStorage().read("targetlanguage");
    List<LanguageFlag> targetList = [];
    targetList = languageFlagList
        .where((element) =>
            element.languageName!.toLowerCase() == target.toLowerCase())
        .toList();
    if (targetList.isNotEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            targetList.first.languageFlag!,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            // widget.controller.sourceLanguage!.languageName.toString().capitalize??"",
            targetList.first.languageName.toString().capitalizeFirst ?? "",
            style: TextStyle().copyWith(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 14),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          )
        ],
      );
    } else {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: Center(
          child: Text("Select Language"),
        ),
      );
    }
  }

  void updateLanguage() async {
    Size size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Update Language"),
          content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
                  padding: EdgeInsets.all(size.height * 0.01),
                  child: Center(
                    child: Text(
                      "Base language of your class?",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                    constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
                    padding: EdgeInsets.all(size.height * 0.01),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColorLight),
                      ),
                      child: DropdownButton(
                        // Initial Value
                        hint: sourceLanguage == null
                            ? Center(
                                child: fetchData(),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    sourceLanguage!.languageFlag!,
                                    fit: BoxFit.cover,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    sourceLanguage!.languageName
                                            .toString()
                                            .capitalizeFirst ??
                                        "",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                        isExpanded: true,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),
                        underline: Container(),
                        // Array list of items
                        items: languageFlagList.map((languageFlag) {
                          // print(items.languageFlag);
                          return DropdownMenuItem(
                              value: languageFlag,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    languageFlag.languageFlag!,
                                    fit: BoxFit.cover,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    // widget.controller.sourceLanguage!.languageName.toString().capitalize??"",
                                    languageFlag.languageName
                                            .toString()
                                            .capitalizeFirst ??
                                        "",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ));
                        }).toList(),
                        onChanged: (LanguageFlag? newValue) {
                          setState(() {
                            sourceLanguage = newValue!;
                          });
                          setState(() {});
                        },
                      ),
                    )),
                Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
                  padding: EdgeInsets.all(size.height * 0.01),
                  child: Center(
                    child: Text(
                      "Target language of your students?",
                      style: const TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                    constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
                    padding: EdgeInsets.all(size.height * 0.01),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColorLight),
                      ),
                      child: DropdownButton(
                        // Initial Value
                        hint: targetLanguage == null
                            ? Center(
                                child: fetchData2(),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    targetLanguage!.languageFlag!,
                                    fit: BoxFit.cover,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    targetLanguage!.languageName
                                            .toString()
                                            .capitalizeFirst ??
                                        "",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                        isExpanded: true,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),
                        underline: Container(),
                        // Array list of items
                        items: languageFlag2List.map((languageFlag) {
                          // print(items.languageFlag);
                          return DropdownMenuItem(
                              value: languageFlag,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    languageFlag.languageFlag!,
                                    fit: BoxFit.cover,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    // widget.controller.sourceLanguage!.languageName.toString().capitalize??"",
                                    languageFlag.languageName
                                            .toString()
                                            .capitalizeFirst ??
                                        "",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 14),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ));
                        }).toList(),
                        onChanged: (LanguageFlag? newValue) {
                          setState(() {
                            targetLanguage = newValue!;
                          });
                          setState(() {});
                        },
                      ),
                    )),
              ],
            );
          }),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Update"),
              onPressed: () async {
                try {
                  String source = "";
                  String target = "";
                  sourceLanguage != null
                      ? sourceLanguage!.languageName != null
                          ? source = sourceLanguage!.languageName ?? ""
                          : source = GetStorage().read("sourcelanguage")
                      : source = GetStorage().read("sourcelanguage");
                  targetLanguage != null
                      ? targetLanguage!.languageName != null
                          ? target = targetLanguage!.languageName ?? ""
                          : target = GetStorage().read("targetlanguage")
                      : target = GetStorage().read("targetlanguage");
                  if (source.isNotEmpty && target.isNotEmpty) {
                    PangeaServices.updateLanguage(source, target)
                        .whenComplete(() {
                      GetStorage().write("sourcelanguage", source);
                      GetStorage().write("targetlanguage", target);
                      Navigator.of(context).pop();
                      setState(() {});
                    });
                  } else {
                    Fluttertoast.showToast(
                        msg: "Error: Unable to find language",
                        webBgColor: "#ff0000",
                        backgroundColor: const Color(0xFFFF0000));
                  }
                } catch (e) {
                  print(e);
                  Fluttertoast.showToast(
                      msg: "Error: $e",
                      webBgColor: "#ff0000",
                      backgroundColor: const Color(0xFFFF0000));
                }
              },
            ),
          ],
        );
      },
    );

    // final input = await showAlertDialog(
    //   useRootNavigator: false,
    //   context: context,
    //   title: L10n.of(context)!.editDisplayname,
    //  actions: [
    //
    //  ]
    // );
    // if (input == null) return;
    // final matrix = Matrix.of(context);
    // final success = await showFutureLoadingDialog(
    //   context: context,
    //   future: () =>
    //       matrix.client.setDisplayName(matrix.client.userID!, input.single),
    // );
    // if (success.error == null) {
    //   updateProfile();
    // }
  }

  void logoutAction() async {
    if (await showOkCancelAlertDialog(
          useRootNavigator: false,
          context: context,
          title: L10n.of(context)!.areYouSureYouWantToLogout,
          okLabel: L10n.of(context)!.yes,
          cancelLabel: L10n.of(context)!.cancel,
        ) ==
        OkCancelResult.cancel) {
      return;
    }
    final matrix = Matrix.of(context);
    PangeaServices.logoutUser(context: context, client: matrix.client);
  }

  void deleteAccountAction() async {
    if (await showOkCancelAlertDialog(
          useRootNavigator: false,
          context: context,
          title: L10n.of(context)!.warning,
          message: L10n.of(context)!.deactivateAccountWarning,
          okLabel: L10n.of(context)!.ok,
          cancelLabel: L10n.of(context)!.cancel,
        ) ==
        OkCancelResult.cancel) {
      return;
    }
    if (await showOkCancelAlertDialog(
          useRootNavigator: false,
          context: context,
          title: L10n.of(context)!.areYouSure,
          okLabel: L10n.of(context)!.yes,
          cancelLabel: L10n.of(context)!.cancel,
        ) ==
        OkCancelResult.cancel) {
      return;
    }
    final input = await showTextInputDialog(
      useRootNavigator: false,
      context: context,
      title: L10n.of(context)!.pleaseEnterYourPassword,
      okLabel: L10n.of(context)!.ok,
      cancelLabel: L10n.of(context)!.cancel,
      textFields: [
        const DialogTextField(
          obscureText: true,
          hintText: '******',
          minLines: 1,
          maxLines: 1,
        )
      ],
    );
    if (input == null) return;
    await showFutureLoadingDialog(
      context: context,
      future: () => Matrix.of(context).client.deactivateAccount(
            auth: AuthenticationPassword(
              password: input.single,
              identifier: AuthenticationUserIdentifier(
                  user: Matrix.of(context).client.userID!),
            ),
          ),
    );
  }

  void addAccountAction() => VRouter.of(context).to('add');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFlags();
  }

  @override
  Widget build(BuildContext context) {
    final client = Matrix.of(context).client;
    profileFuture ??= client
        .getProfileFromUserId(
      client.userID!,
      cache: !profileUpdated,
      getFromRooms: !profileUpdated,
    )
        .then((p) {
      if (mounted) setState(() => profile = p);
      return p;
    });
    return SettingsAccountView(this);
  }
}
