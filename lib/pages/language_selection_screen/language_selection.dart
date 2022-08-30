import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/model/user_info.dart';
import 'package:vrouter/vrouter.dart';

import '../../utils/api_helper.dart';
import '../../utils/api_urls.dart';
import '../../widgets/matrix.dart';
import '../homeserver_picker/home_controller.dart';
import 'language_selectionView.dart';

class LanguageSelection extends StatefulWidget {
  LanguageSelection({Key? key}) : super(key: key);

  @override
  LanguageSelectionController createState() => LanguageSelectionController();
}

class LanguageSelectionController extends State<LanguageSelection> {
  final getxController = Get.put(HomeController());
  bool loading = false;

  Future createUser() async {
    final box = GetStorage();
    int user_type = 0;
    switch (getxController.role.value) {
      case "Teacher":
        user_type = 2;
        break;
      case "Student":
        user_type = 1;
        break;
      case "Indie Learner":
        user_type = 3;
        break;
      default:
        print("Undefined value");
    }
    setState(() {
      loading = true;
    });
    try {
      String source_language = getxController.selectedLanguageOne.value;
      String target_language = getxController.selectedLanguageTwo.value;
      final client = Matrix.of(context).client;

      try {
        var temp1 = client.userID!.substring(0, client.userID!.indexOf(":"));
        var temp2 = temp1.replaceAll("@", "");
        var full_name = temp2;
        String url = ApiUrls.user_details + client.userID.toString();

        await ApiFunctions().post(
          ApiUrls.create_user,
          {
            "full_name": full_name,
            "user_type": user_type,
            "pangea_user_id": client.userID,
            "source_lang": source_language.toString(),
            "target_lang": target_language.toString()
          },
        ).then((value) async {
          print(value.statusCode);
          print(value);
          print("code");
          if (value.statusCode == 201 || value.statusCode == 400) {
            print(value.status);
            print(value.body);
            await ApiFunctions().get(url).then((value) {
              if (value.statusCode == 200) {
                UserInfo data = UserInfo.fromJson(value.body);
                //backend access and refresh token
                box.write("access", data.access ?? "empty");
                box.write("refresh", data.refresh ?? "empty");
                box.write("sourcelanguage", source_language);
                box.write("targetlanguage", target_language);
                box.write("usertype", user_type);
                box.write("sign_up", false);
                context.vRouter.to('/rooms');
                getxController.selectedLanguageOne.value = "";
                getxController.selectedLanguageTwo.value = "";
              } else {
                setState(() {
                  loading = false;
                });
                log(value.statusCode.toString());
                Get.rawSnackbar(
                    message: "Something went wrong",
                    snackPosition: SnackPosition.BOTTOM,
                    margin: EdgeInsets.zero,
                    snackStyle: SnackStyle.GROUNDED,
                    backgroundColor: Colors.red);
              }
            }).catchError((error) {
              setState(() {
                loading = false;
              });
              log(error.toString());
            });
          } else {
            setState(() {
              loading = false;
            });
            log(value.statusCode.toString());
            Get.rawSnackbar(
                message: "Something went wrong",
                snackPosition: SnackPosition.BOTTOM,
                margin: EdgeInsets.zero,
                snackStyle: SnackStyle.GROUNDED,
                backgroundColor: Colors.red);
          }
        }).catchError((error) {
          setState(() {
            loading = false;
          });
          log(error);
        });
      } catch (e) {
        print(e);
        print("Unable to fetch user name");
      }
    } catch (e) {
      log(e.toString());
      setState(() {
        loading = false;
      });
    } finally {
      if (mounted) {
        setState(() => loading = false);
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getxController.role.value = "";
  }

  @override
  Widget build(BuildContext context) => LanguageSelectionView(this);
}
