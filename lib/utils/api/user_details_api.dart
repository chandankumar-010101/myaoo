import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/class_detail_model.dart';
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
  static logoutUser({ required BuildContext context, required Client client}) async {
    await showFutureLoadingDialog(
        context: context,
        future: () => client.logout(),
    ).then((value) {
      box.erase();
    }).catchError((e){
      print("lougout error");
      print(e);
    });
  }



  // /// exchange class validate api
  // exchangeClassValidate(class_id) async {
  //   var Url = "${ApiUrls.exchangeClassValidate}";
  //   log("Url is $Url");
  //   Map<String,dynamic> data ={
  //
  //     "pangea_class_room_id": class_id,
  //     "student_id":"${box.read("ClientID")}"
  //
  //   };
  //   log(data.toString());
  //   http.Response response = await http.post(
  //     Uri.parse(Url),
  //     headers: {
  //       "Content-Type": "application/json",
  //       "Authorization": "Bearer ${box.read("access")}",
  //     },
  //     body: jsonEncode(data),
  //   );
  //   print(response.body);
  //   log(response.body);
  //   log(response.body);
  //   log(response.body);
  //   if (response.statusCode == 200) {
  //
  //     ClassDetailModel p = classDetailModelFromJson(response.body);
  //
  //     return p;
  //   } else if (response.statusCode == 400) {
  //     log("400" + response.body);
  //   } else {
  //     Get.rawSnackbar(
  //         message: "Something went wrong",
  //         snackPosition: SnackPosition.BOTTOM,
  //         margin: EdgeInsets.zero,
  //         snackStyle: SnackStyle.GROUNDED,
  //         backgroundColor: Colors.red);
  //   }
  // }
  //
  // /// exchange class api
  // exchangeClass(user_id) async {
  //   var Url = "${ApiUrls.getClassDetails}$user_id";
  //   log("Url is $Url");
  //   http.Response response = await http.get(
  //     Uri.parse(Url),
  //     headers: {
  //       "Content-Type": "application/json",
  //       "Authorization": "Bearer ${box.read("access")}",
  //     },
  //   );
  //   print(response.body);
  //   log(response.body);
  //   log(response.body);
  //   log(response.body);
  //   if (response.statusCode == 200) {
  //
  //     ClassDetailModel p = classDetailModelFromJson(response.body);
  //
  //     return p;
  //   } else if (response.statusCode == 400) {
  //     log("400" + response.body);
  //   } else {
  //     Get.rawSnackbar(
  //         message: "Something went wrong",
  //         snackPosition: SnackPosition.BOTTOM,
  //         margin: EdgeInsets.zero,
  //         snackStyle: SnackStyle.GROUNDED,
  //         backgroundColor: Colors.red);
  //   }
  // }
  //
  // /// enroll class validate api
  // // // enrollClassValidate1(room_id) async {
  // // //   ;
  // // //
  // // //   print(response.body);
  // // //   print(response.statusCode);
  // // //   if (response.statusCode == 200) {
  // // //
  // // //    var body=jsonDecode(response.body);
  // // //
  // // //
  // // //
  // // //    if(body["is_enrollment_sent"]==false){
  // // //      print("print");
  // // //      enrollClass(room_id);
  // // //    }
  // // //    else{
  // // //
  // // //    }
  // // //
  // // //   } else if (response.statusCode == 400) {
  // // //     log("400" + response.body);
  // // //   } else {
  // // //     Get.rawSnackbar(
  // // //         message: "Something went wrong",
  // // //         snackPosition: SnackPosition.BOTTOM,
  // // //         margin: EdgeInsets.zero,
  // // //         snackStyle: SnackStyle.GROUNDED,
  // // //         backgroundColor: Colors.red);
  // // //   }
  // // // }
  // //
  // // /// enroll class api
  // // enrollClass1(room_id) async {
  // //  ;
  // //   print(response.body);
  // //   log(response.body);
  // //   log(response.body);
  // //   log(response.body);
  // //   if (response.statusCode == 200) {
  // //
  // //
  // //
  // //
  // //   } else if (response.statusCode == 400) {
  // //     log("400" + response.body);
  // //   } else {
  // //     Get.rawSnackbar(
  // //         message: "Something went wrong",
  // //         snackPosition: SnackPosition.BOTTOM,
  // //         margin: EdgeInsets.zero,
  // //         snackStyle: SnackStyle.GROUNDED,
  // //         backgroundColor: Colors.red);
  // //   }
  // // }



  static Future<bool?> enrollClassValidate({
    required BuildContext context,
    required String room_id,
  }) async {
    String token = box.read("access");
    if (token.isEmpty) {
      if (kDebugMode) {
        print("JWT Token is null");
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Token expired please logout and login again")));
      return null;
    }
    var Url = "${ApiUrls.enrollClassValidate}";
    log("Url is $Url");
    Map<String,dynamic> data ={

      "pangea_class_room_id": room_id,
      "student_id":"${box.read("clientID")}"

    };
     log(room_id);
    http.post(
      Uri.parse(Url),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("access")}",
      },
      body: jsonEncode(data),
    ).then((value) {
      if (value.statusCode == 200) {

        var body=jsonDecode(value.body);



        if(body["is_enrollment_sent"]==false){
          print("print");
          enrollClass( context: context, room_id: '${room_id}');
        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Enrollment Request Already send successfully")));
        }

       return true;
    }}).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error accured: $e")));
      print("Error accured: $e");
    });
  }


  static Future<bool?> enrollClass({
    required BuildContext context,
    required String room_id,
  }) async {
    String token = box.read("access");
    if (token.isEmpty) {
      if (kDebugMode) {
        print("JWT Token is null");
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Token expired please logout and login again")));
      return null;
    }
    var Url = "${ApiUrls.enrollClass}";
    log("Url is $Url");
    print("value of enrolling section");
    Map<String,dynamic> data ={

      "pangea_class_room_id": room_id,
      "student_id":"${box.read("clientID")}"

    };
    log(data.toString());
    http.post(
      Uri.parse(Url),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("access")}",
      },
      body: jsonEncode(data),
    ).then((value) {
      if (value.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Enrollment Request Send successfully")));
        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Enrollment Request Already send successfully")));
        }

        return true;
      }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error accured: $e")));
      print("Error accured: $e");
    });
  }

  static Future<bool?> exchangeClassValidate({
    required BuildContext context,
    required String room_id,
  }) async {
    String token = box.read("access");
    if (token.isEmpty) {
      if (kDebugMode) {
        print("JWT Token is null");
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Token expired please logout and login again")));
      return null;
    }
    var Url = "${ApiUrls.enrollClassValidate}";
    log("Url is $Url");
    Map<String,dynamic> data ={

      "pangea_class_room_id": room_id,
      "teacher_id":"${box.read("clientID")}"

    };

    http.post(
      Uri.parse(Url),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("access")}",
      },
      body: jsonEncode(data),
    ).then((value) {
      if (value.statusCode == 200) {

        var body=jsonDecode(value.body);



        if(body["is_enrollment_sent"]==false){
          print("print");
          enrollClass( context: context, room_id: '${room_id}');
        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Enrollment Request Already send successfully")));
        }

        return true;
      }}).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error accured: $e")));
      print("Error accured: $e");
    });
  }


  static Future<bool?> exchangeClass({
    required BuildContext context,
    required String room_id,
  }) async {
    String token = box.read("access");
    if (token.isEmpty) {
      if (kDebugMode) {
        print("JWT Token is null");
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Token expired please logout and login again")));
      return null;
    }
    var Url = "${ApiUrls.enrollClass}";
    log("Url is $Url");
    print("value of enrolling section");
    Map<String,dynamic> data ={

      "pangea_class_room_id": room_id,
      "teacher_id":"${box.read("clientID")}"

    };
    log(data.toString());
    http.post(
      Uri.parse(Url),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("access")}",
      },
      body: jsonEncode(data),
    ).then((value) {
      if (value.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Enrollment Request Send successfully")));
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Enrollment Request Already send successfully")));
      }

      return true;
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error accured: $e")));
      print("Error accured: $e");
    });
  }

}
