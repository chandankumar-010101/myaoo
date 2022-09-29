import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/utils/fluffy_share.dart';
import 'package:pangeachat/widgets/layouts/max_width_body.dart';
import 'package:pangeachat/widgets/matrix.dart';

import '../homeserver_picker/home_controller.dart';
import 'settings_account.dart';

class SettingsAccountView extends StatelessWidget {
  final SettingsAccountController controller;
  var dataStorage = GetStorage();

  SettingsAccountView(this.controller, {Key? key}) : super(key: key);
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    print("source value for cou ${dataStorage.read("sourcelanguage")}");
    return Scaffold(
      appBar: AppBar(title: Text(L10n.of(context)!.account)),
      body: ListTileTheme(
        iconColor: Theme.of(context).textTheme.bodyText1!.color,
        child: MaxWidthBody(
          withScrolling: true,
          child: Column(
            children: [
              ListTile(
                title: Text(L10n.of(context)!.yourUserId),
                subtitle: Text(Matrix.of(context).client.userID!),
                trailing: const Icon(Icons.copy_outlined),
                onTap: () => FluffyShare.share(
                  Matrix.of(context).client.userID!,
                  context,
                ),
              ),
              ListTile(
                trailing: const Icon(Icons.edit_outlined),
                title: Text(L10n.of(context)!.editDisplayname),
                subtitle: Text(controller.profile?.displayName ??
                    Matrix.of(context).client.userID!.localpart!),
                onTap: controller.setDisplaynameAction,
              ),
              ListTile(
                //
                title: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Source Language"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_right_alt_outlined, size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Target Language"),
                    ]),
                subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "${dataStorage.read("sourcelanguage").toString().toLowerCase().capitalizeFirst}"),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_right_alt_outlined, size: 20),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          "${dataStorage.read("targetlanguage").toString().toLowerCase().capitalizeFirst}"),
                    ]),
                trailing: Icon(Icons.edit_outlined),
                onTap: () {
                  controller.updateLanguage();
                },
                // trailing: GetStorage().read("usertype") == 1
                //     ? InkWell(
                //         onTap: controller.updateLanguage,
                //         child: Icon(Icons.edit_outlined),
                //       )
                //     : null,
              ),

              ListTile(
                title: const Text("Role"),
                subtitle: (dataStorage.read("usertype") == 1)
                    ? const Text("Student")
                    : (dataStorage.read("usertype") == 2)
                        ? const Text("Teacher")
                        : (dataStorage.read("usertype") == 3)
                            ? const Text("Indie Learner")
                            : const Text(""),
              ),
              const Divider(height: 1),
              // ListTile(
              //   trailing: const Icon(Icons.person_add_outlined),
              //   title: Text(L10n.of(context)!.addAccount),
              //   subtitle: Text(L10n.of(context)!.enableMultiAccounts),
              //   onTap: controller.addAccountAction,
              // ),
              ListTile(
                trailing: const Icon(Icons.exit_to_app_outlined),
                title: Text(L10n.of(context)!.logout),
                onTap: controller.logoutAction,
              ),
              const Divider(height: 1),
              ListTile(
                trailing: const Icon(Icons.delete_outlined),
                title: Text(
                  L10n.of(context)!.deleteAccount,
                  style: const TextStyle(color: Colors.red),
                ),
                onTap: controller.deleteAccountAction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
