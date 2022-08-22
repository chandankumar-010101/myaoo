import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pangeachat/model/user_info.dart';
import 'package:pangeachat/utils/api_urls.dart';


class UserDetails {
  //String clientId="box.read("clientID")";
  static GetStorage box=GetStorage();
  static accessToken() async {

    final String accessToken =  box.read("access")??"";
    if(accessToken.isEmpty || JwtDecoder.isExpired(accessToken)){
      final String clientID = box.read("clientID")??"";
      if(clientID.isNotEmpty){
        await userDetails(clientID: clientID);
      }else{
        Fluttertoast.showToast(msg: "Client id not found");
      }
  }else{

    }

  }
  static userDetails({required String clientID}) async {
      await http.get(
      Uri.parse(ApiUrls.user_details + clientID),
    ).then((value) {
      if(value.statusCode.isEqual(200)){
        userAge();
        final UserInfo data = userInfoFromJson(value.body);
        box.write("access", data.access);
        box.write("refresh", data.refresh);
        box.write("sourcelanguage", data.profile!.sourceLanguage);
        box.write("targetlanguage", data.profile!.targetLanguage);
        box.write("usertype", data.profile!.userType);
        box.write("sign_up", false);
      }else{
        if (kDebugMode) {
          print("Unable to fetch user information");
          print(value.body+value.statusCode.toString());
        }
        Fluttertoast.showToast(msg: "API Error:${value.body}");
        //TODO: logout
      }
     }).catchError((e){
        if (kDebugMode) {
          print(e);
        }
        Fluttertoast.showToast(msg: "Unable to fetch user information");
        //TODO: logout
     });
  }

  static userAge() async {
    final String clientID = box.read("clientID")??"";
    final String accessToken = box.read("access")??"";
    if(clientID.isNotEmpty && accessToken.isNotEmpty){
      await http.get(
        Uri.parse(ApiUrls.user_ages+clientID),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $accessToken",
        },
      ).then((value){
        if(value.statusCode.isEqual(200) || value.statusCode.isEqual(400)){
           final data = jsonDecode(value.body);
           box.write("age", data["age"]);
        }else{
          if (kDebugMode) {
            print("Unable to fetch user Age");
            print(value.body+value.statusCode.toString());
          }
          Fluttertoast.showToast(msg: "API Error:${value.body}");
          //TODO: logout
        }
      }).catchError((e){
        if (kDebugMode) {
          print(e);
        }
        Fluttertoast.showToast(msg: "Unable to fetch user age");
        //TODO: logout
      });
    }
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
