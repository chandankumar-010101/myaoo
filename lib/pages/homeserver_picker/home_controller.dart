// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
//
// import '../../model/flag_model.dart';
// import '../../utils/api_helper.dart';
// import '../../utils/api_urls.dart';
//
// class HomeController extends GetxController {
//   var dataStorage = GetStorage();
//   RxBool loading = true.obs;
//   var countriesList = <LanguageFlag>[].obs;
//   RxString selectedLanguageOne = "".obs;
//   RxString selectedFlag = "".obs;
//   RxString selectedLanguageTwo = "".obs;
//   RxString selectedFlagTwo = "".obs;
//   RxString role = "".obs;
//   RxInt createClass = 0.obs;
//
//
//   RxString source = "".obs;
//   RxString target = "".obs;
//
//   Future getFlags() async {
//     var response = await ApiFunctions().get(ApiUrls.get_all_flags);
//     log("response is ${response.body}");
//     if (response != null) {
//       loading.value = false;
//       // var li = jsonDecode(response.body);
//       List temp = response.body;
//       log("Flag Response is $temp");
//       countriesList.value =
//           temp.map((value) => LanguageFlag.fromJson(value)).toList();
//     } else {
//       loading.value = false;
//       Get.rawSnackbar(
//           message: "Something went wrong",
//           snackPosition: SnackPosition.BOTTOM,
//           margin: EdgeInsets.zero,
//           snackStyle: SnackStyle.GROUNDED,
//           backgroundColor: Colors.red);
//     }
//   }
//   // getUserDetails() async {
//   //   try {
//   //     String name = dataStorage.read("clientID");
//   //     String Url = "${ApiUrls.user_details}$name";
//   //     var response = await ApiFunctions().get(
//   //       Url,
//   //     );
//   //     print(name);
//   //     print(Url);
//   //
//   //     log("details record is ${response.body}");
//   //     if (response.statusCode == 200) {
//   //       loading.value = false;
//   //       var temp = jsonDecode(response.body);
//   //       var temp2 = temp["profile"];
//   //       dataStorage.write("access", temp["access"]);
//   //       dataStorage.write("refresh", temp["refresh"]);
//   //       dataStorage.write("sourcelanguage", temp2["source_language"]);
//   //       dataStorage.write("targetlanguage", temp2["target_language"]);
//   //       dataStorage.write("usertype", temp2["user_type"]);
//   //
//   //       // var li = jsonDecode(response.body);
//   //     } else {
//   //       loading.value = false;
//   //       Get.rawSnackbar(
//   //           message: "Something went wrong",
//   //           snackPosition: SnackPosition.BOTTOM,
//   //           margin: EdgeInsets.zero,
//   //           snackStyle: SnackStyle.GROUNDED,
//   //           backgroundColor: Colors.red);
//   //     }
//   //   } catch (e) {}
//   // }
//
//   // user() {
//   //   print(role);
//   //   print(selectedLanguageOne);
//   //   print(selectedLanguageTwo);
//   //   String name = dataStorage.read("clientID");
//   //   var temp1 = name.substring(0, name.indexOf(":"));
//   //   var temp2 = temp1.replaceAll("@", "");
//   //   print(temp2);
//   //   print(name);
//   //   print(dataStorage.read("access"));
//   //   print(dataStorage.read("refresh"));
//   //   source.value = dataStorage.read("sourcelanguage");
//   //   role.value = dataStorage.read("usertype");
//   //   print(dataStorage.read("sourcelanguage"));
//   //   print(dataStorage.read("targetlanguage"));
//   //   print(dataStorage.read("usertype"));
//   // }
//
//   // Future UpdateUser() async {
//   //   String name = dataStorage.read("clientID");
//   //   var temp1 = name.substring(0, name.indexOf(":"));
//   //   var temp2 = temp1.replaceAll("@", "");
//   //   print(temp2);
//   //   print(name);
//   //   int? rolevalue;
//   //   if (role == "Student") {
//   //     rolevalue = 1;
//   //   } else if (role == "Teacher") {
//   //     rolevalue = 2;
//   //   } else {
//   //     rolevalue = 3;
//   //   }
//   //   Map<String, dynamic> data = {
//   //     "full_name": temp2.toString(),
//   //     "user_type": rolevalue.toString(),
//   //     "pangea_user_id": name.toString(),
//   //     "source_lang": selectedLanguageOne.value.toString(),
//   //     "target_lang": selectedLanguageTwo.value.toString(),
//   //   };
//   //   print(data);
//   //   print(rolevalue);
//   //   print(temp2);
//   //   print(name);
//   //   print(selectedLanguageOne);
//   //   print(selectedLanguageTwo);
//   //   var response =
//   //       await ApiFunctions().post(ApiUrls.create_user, jsonEncode(data));
//   //
//   //   log("update record is ${response.body}");
//   //   if (response.statusCode == 200) {
//   //     loading.value = false;
//   //     // var li = jsonDecode(response.body);
//   //     getUserDetails();
//   //   } else if (response.statusCode == 400) {
//   //     getUserDetails();
//   //     loading.value = false;
//   //     Get.rawSnackbar(
//   //         message: "Something went wrong",
//   //         snackPosition: SnackPosition.BOTTOM,
//   //         margin: EdgeInsets.zero,
//   //         snackStyle: SnackStyle.GROUNDED,
//   //         backgroundColor: Colors.red);
//   //   } else {
//   //     loading.value = false;
//   //     Get.rawSnackbar(
//   //         message: "Something went wrong",
//   //         snackPosition: SnackPosition.BOTTOM,
//   //         margin: EdgeInsets.zero,
//   //         snackStyle: SnackStyle.GROUNDED,
//   //         backgroundColor: Colors.red);
//   //   }
//   // }
//
//   @override
//   void onInit() {
//     super.onInit();
//     getFlags();
//   }
//
//   getUserDetails() async {
//     try {
//       String name = dataStorage.read("clientID");
//       String Url = "${ApiUrls.user_details}$name";
//       var response = await ApiFunctions().get(
//         Url,
//       );
//       print(name);
//       print(Url);
//
//       log("details record is ${response.body}");
//       if (response.statusCode == 200) {
//         loading.value = false;
//         var temp = jsonDecode(response.body);
//         var temp2 = temp["profile"];
//
//         log("Temp 2 ${temp2} \n ${temp["access"]} \n  ${temp["refresh"]} \n  ${temp2["source_language"]} \n ${temp2["user_type"]}");
//         dataStorage.write("access", temp["access"]);
//         dataStorage.write("refresh", temp["refresh"]);
//         dataStorage.write("sourcelanguage", temp2["source_language"]);
//         dataStorage.write("targetlanguage", temp2["target_language"]);
//         dataStorage.write("usertype", temp2["user_type"]);
//
//         // var li = jsonDecode(response.body);
//       } else {
//         loading.value = false;
//         Get.rawSnackbar(
//             message: "Something went wrong",
//             snackPosition: SnackPosition.BOTTOM,
//             margin: EdgeInsets.zero,
//             snackStyle: SnackStyle.GROUNDED,
//             backgroundColor: Colors.red);
//       }
//     } catch (e) {}
//   }
// }
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../model/flag_model.dart';
import '../../utils/api_helper.dart';
import '../../utils/api_urls.dart';

class HomeController extends GetxController {
  var dataStorage = GetStorage();
  RxBool loading = true.obs;
  var countriesList1 = <LanguageFlag>[].obs;
  var countriesList2 = <LanguageFlag>[].obs;
  var countriesList = <LanguageFlag>[].obs;
  RxString selectedLanguageOne = "".obs;
  RxString selectedFlag = "".obs;
  RxString selectedLanguageTwo = "".obs;
  RxString selectedFlagTwo = "".obs;
  RxString role = "".obs;
  RxInt createClass = 0.obs;

  RxString source = "".obs;
  RxString target = "".obs;

  Future getFlags() async {
    var response = await ApiFunctions().get(ApiUrls.get_all_flags);
    log("response is ${response.body}");
    if (response != null) {
      loading.value = false;
      // var li = jsonDecode(response.body);
      List temp = response.body;
      log("Flag Response is $temp");
      countriesList.value =
          temp.map((value) => LanguageFlag.fromJson(value)).toList();
      countriesList.forEach((element) {
        if (element.languageType == 1) {
          countriesList1.add(element);
        } else if (element.languageType == 2) {
          countriesList2.add(element);
        }
      });
    } else {
      loading.value = false;
      Get.rawSnackbar(
          message: "Something went wrong",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    }
  }

  // getUserDetails() async {
  //   try {
  //     String name = dataStorage.read("clientID");
  //     String Url = "${ApiUrls.user_details}$name";
  //     var response = await ApiFunctions().get(
  //       Url,
  //     );
  //     print(name);
  //     print(Url);
  //
  //     log("details record is ${response.body}");
  //     if (response.statusCode == 200) {
  //       loading.value = false;
  //       var temp = jsonDecode(response.body);
  //       var temp2 = temp["profile"];
  //       dataStorage.write("access", temp["access"]);
  //       dataStorage.write("refresh", temp["refresh"]);
  //       dataStorage.write("sourcelanguage", temp2["source_language"]);
  //       dataStorage.write("targetlanguage", temp2["target_language"]);
  //       dataStorage.write("usertype", temp2["user_type"]);
  //
  //       // var li = jsonDecode(response.body);
  //     } else {
  //       loading.value = false;
  //       Get.rawSnackbar(
  //           message: "Something went wrong",
  //           snackPosition: SnackPosition.BOTTOM,
  //           margin: EdgeInsets.zero,
  //           snackStyle: SnackStyle.GROUNDED,
  //           backgroundColor: Colors.red);
  //     }
  //   } catch (e) {}
  // }

  // user() {
  //   print(role);
  //   print(selectedLanguageOne);
  //   print(selectedLanguageTwo);
  //   String name = dataStorage.read("clientID");
  //   var temp1 = name.substring(0, name.indexOf(":"));
  //   var temp2 = temp1.replaceAll("@", "");
  //   print(temp2);
  //   print(name);
  //   print(dataStorage.read("access"));
  //   print(dataStorage.read("refresh"));
  //   source.value = dataStorage.read("sourcelanguage");
  //   role.value = dataStorage.read("usertype");
  //   print(dataStorage.read("sourcelanguage"));
  //   print(dataStorage.read("targetlanguage"));
  //   print(dataStorage.read("usertype"));
  // }

  // Future UpdateUser() async {
  //   String name = dataStorage.read("clientID");
  //   var temp1 = name.substring(0, name.indexOf(":"));
  //   var temp2 = temp1.replaceAll("@", "");
  //   print(temp2);
  //   print(name);
  //   int? rolevalue;
  //   if (role == "Student") {
  //     rolevalue = 1;
  //   } else if (role == "Teacher") {
  //     rolevalue = 2;
  //   } else {
  //     rolevalue = 3;
  //   }
  //   Map<String, dynamic> data = {
  //     "full_name": temp2.toString(),
  //     "user_type": rolevalue.toString(),
  //     "pangea_user_id": name.toString(),
  //     "source_lang": selectedLanguageOne.value.toString(),
  //     "target_lang": selectedLanguageTwo.value.toString(),
  //   };
  //   print(data);
  //   print(rolevalue);
  //   print(temp2);
  //   print(name);
  //   print(selectedLanguageOne);
  //   print(selectedLanguageTwo);
  //   var response =
  //       await ApiFunctions().post(ApiUrls.create_user, jsonEncode(data));
  //
  //   log("update record is ${response.body}");
  //   if (response.statusCode == 200) {
  //     loading.value = false;
  //     // var li = jsonDecode(response.body);
  //     getUserDetails();
  //   } else if (response.statusCode == 400) {
  //     getUserDetails();
  //     loading.value = false;
  //     Get.rawSnackbar(
  //         message: "Something went wrong",
  //         snackPosition: SnackPosition.BOTTOM,
  //         margin: EdgeInsets.zero,
  //         snackStyle: SnackStyle.GROUNDED,
  //         backgroundColor: Colors.red);
  //   } else {
  //     loading.value = false;
  //     Get.rawSnackbar(
  //         message: "Something went wrong",
  //         snackPosition: SnackPosition.BOTTOM,
  //         margin: EdgeInsets.zero,
  //         snackStyle: SnackStyle.GROUNDED,
  //         backgroundColor: Colors.red);
  //   }
  // }

  @override
  void onInit() {
    super.onInit();
    getFlags();
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<HomeController>();
  }

  getUserDetails() async {
    try {
      String name = dataStorage.read("clientID");
      String Url = "${ApiUrls.user_details}$name";
      var response = await ApiFunctions().get(
        Url,
      );
      print(name);
      print(Url);

      log("details record is ${response.body}");
      if (response.statusCode == 200) {
        loading.value = false;
        var temp = jsonDecode(response.body);
        var temp2 = temp["profile"];

        log("Temp 2 ${temp2} \n ${temp["access"]} \n  ${temp["refresh"]} \n  ${temp2["source_language"]} \n ${temp2["user_type"]}");
        dataStorage.write("access", temp["access"]);
        dataStorage.write("refresh", temp["refresh"]);
        dataStorage.write("sourcelanguage", temp2["source_language"]);
        dataStorage.write("targetlanguage", temp2["target_language"]);
        dataStorage.write("usertype", temp2["user_type"]);

        // var li = jsonDecode(response.body);
      } else {
        loading.value = false;
        Get.rawSnackbar(
            message: "Something went wrong",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
    } catch (e) {}
  }
}

