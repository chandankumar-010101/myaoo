import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/model/user_info.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

import '../../utils/api_helper.dart';
import '../../utils/api_urls.dart';
import '../../widgets/matrix.dart';
import '../homeserver_picker/home_controller.dart';
import 'language_selectionView.dart';

import 'package:http/http.dart' as http;

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({Key? key}) : super(key: key);

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

        final value = await http.post(Uri.parse(ApiUrls.create_user,),
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "full_name": full_name,
            "user_type": user_type,
            "pangea_user_id": client.userID,
            "source_lang": source_language.toString(),
            "target_lang": target_language.toString()
          }),
        );
        if (value.statusCode == 201 || value.statusCode == 200) {
          getxController.selectedLanguageOne.value = "";
          getxController.selectedLanguageTwo.value = "";
          if(Matrix.of(context).client.accessToken !=null){
            PangeaServices.userDetails(clientID: client.userID.toString(),accessToken: Matrix.of(context).client.accessToken!);
            Matrix.of(context).widget.router!.currentState!.to(
              '/rooms',
              queryParameters:Matrix.of(context).widget.router!.currentState!.queryParameters,
            );
          }else{
            print("Access Token not foun");
          }

        }
        else {
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

      } catch (e) {
        setState(() {
          loading = false;
        });
        if (kDebugMode) {
          print("Unable to fetch user name");
          print(e);
        }
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
    super.initState();
    getxController.role.value = "";
  }

  @override
  Widget build(BuildContext context) => LanguageSelectionView(this);
}
