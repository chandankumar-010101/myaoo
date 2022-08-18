import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:pangeachat/model/user_info.dart';
import 'package:pangeachat/utils/api_urls.dart';

var box = GetStorage();

class UserDetails {
  //String clientId="box.read("clientID")";

  static userDetails() async {
    var Url = "${ApiUrls.user_details}${box.read("clientID")}";

    http.Response response = await http.get(
      Uri.parse(Url),
    );

    log("user details" + response.body);

    if (response.statusCode == 200) {
      userAge();
      UserInfo data = userInfoFromJson(response.body);

      box.write("access", data.access ?? "empty");
      print(box.read("access"));

      box.write("refresh", data.refresh ?? "empty");
      var temp = data.profile;

      box.write("sourcelanguage", temp!.sourceLanguage ?? "empty");
      box.write("targetlanguage", temp.targetLanguage ?? "empty");
      box.write("usertype", temp.userType);
      box.write("sign_up", false);
    } else {
      // Get.rawSnackbar(
      //     message: "Something went wrong",
      //     snackPosition: SnackPosition.BOTTOM,
      //     margin: EdgeInsets.zero,
      //     snackStyle: SnackStyle.GROUNDED,
      //     backgroundColor: Colors.red);
    }
  }

  static userAge() async {
    var Url = "${ApiUrls.user_ages}${box.read("clientID")}";
    http.Response response = await http.get(
      Uri.parse(Url),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("access")}",
      },
    );

    if (response.statusCode == 200) {
      var value = jsonDecode(response.body);
      box.write("age", value["age"] ?? "empty");
    } else if (response.statusCode == 400) {
      var value = jsonDecode(response.body);

      box.write("age", value["age"] ?? "empty");
    } else {}
  }

  updateUserAge(day, month, year) async {
    var Url = "${ApiUrls.update_user_ages}";

    final Map<String, dynamic> data = {
      "pangea_user_id": "${box.read("clientID")}",
      "date_of_birth": "$day-$month-$year",
    };
    http.Response response = await http.post(Uri.parse(Url),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${box.read("access")}",
        },
        body: jsonEncode(data));
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "User Age Updated",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);

      log("200" + response.body);
    } else if (response.statusCode == 400) {
      log("400" + response.body);
    } else {
      Get.rawSnackbar(
          message: "Something went wrong",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    }
  }
}
