import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/model/user_info.dart';
import 'package:pangeachat/utils/api_urls.dart';
import 'package:http/http.dart' as http;
var box=GetStorage();

class UserDetails{

  static userDetails()async{
  var Url="${ApiUrls.user_details}${box.read("clientID")}";
  print(Url);

  http.Response response = await http.get(Uri.parse(Url),
  );

  log("user details"+response.body);


      if (response.statusCode == 200) {
       // var value=jsonDecode(response.body);
        UserInfo data = userInfoFromJson(response.body);
        //backend access and refresh token
        box.write("accessToken", data.access ?? "empty");
        print(box.read("accessToken"));

        box.write("refresh", data.refresh ?? "empty");
        var temp = data.profile;

        box.write("sourcelanguage", temp!.sourceLanguage ?? "empty");
        box.write("targetlanguage", temp.targetLanguage ?? "empty");
        box.write("usertype", temp.userType);
        box.write("sign_up", false);


      } else {


        Get.rawSnackbar(
            message: "Something went wrong",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
  }

  userAge()async{
    var Url="${ApiUrls.user_ages}${box.read("clientID")}";
    http.Response response = await http.get(Uri.parse(Url),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("accessToken")}",
      },
    );


    if (response.statusCode == 200) {
      var value=jsonDecode(response.body);
      box.write("age", value["age"] ?? "empty");



    } else if (response.statusCode == 400) {
      var value=jsonDecode(response.body);

      box.write("age", value["age"] ?? "empty");



    } else {


      Get.rawSnackbar(
          message: "Something went wrong",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    }
  }
  updateUserAge(day,month,year)async{

    var Url="${ApiUrls.update_user_ages}";

    final Map<String,dynamic> data={
      "pangea_user_id": "${box.read("clientID")}",
      "date_of_birth": "$day-$month-$year",
    };
    http.Response response = await http.post(Uri.parse(Url),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("accessToken")}",
      },
      body: jsonEncode(data)
    );
    print(box.read("clientID"));
    print("${day}-${month}-${year}");
    log("${day}:${month}:${year}");
    log("update ages "+response.body.toString());
    log("update ages "+response.statusCode.toString());
    if (response.statusCode == 200) {
      var value=jsonDecode(response.body);




    } else if (response.statusCode == 400) {
      var value=jsonDecode(response.body);

      // box.write("age", value["age"] ?? "empty");



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