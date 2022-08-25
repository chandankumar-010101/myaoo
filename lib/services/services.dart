import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:matrix/matrix.dart';
import 'package:vrouter/vrouter.dart';
import '../model/add_class_permissions_model.dart';
import '../model/class_detail_model.dart';
import '../model/create_class_model.dart';
import '../model/flag_model.dart';
import '../model/user_info.dart';
import '../utils/api_helper.dart';
import '../utils/api_urls.dart';
import 'package:http/http.dart' as http;

import 'api_exception.dart';

class PangeaServices{
  static GetStorage box = GetStorage();

  static Future<List<LanguageFlag>> getFlags() async {
    List<LanguageFlag> countryFlag = [];
    var response = await ApiFunctions().get(ApiUrls.get_all_flags);
    log("response is ${response.body}");
    if (response != null) {
      // loading.value = false;
      List temp = response.body;
      log("Flag Response is $temp");
      countryFlag = temp.map((value) => LanguageFlag.fromJson(value)).toList();
    } else {

      Fluttertoast.showToast(
          msg: "Something went wrong",
          fontSize: 16.0
      );
    }
    return countryFlag;
  }

  static Future<List<LanguageFlag>> getFlags2() async {
    List<LanguageFlag> countryFlag = [];
    List<LanguageFlag> flags =[];
    var response = await ApiFunctions().get(ApiUrls.get_all_flags);
    log("response is ${response.body}");
    if (response != null) {
      // loading.value = false;
      List temp = response.body;
      log("Flag Response is $temp");
      countryFlag = temp.map((value) => LanguageFlag.fromJson(value)).toList();
      countryFlag.forEach((element) {
       if (element.languageType == 2) {
         print(element.languageName);
          flags.add(element);
        }
      });
    } else {

      Fluttertoast.showToast(
          msg: "Something went wrong",
          fontSize: 16.0
      );
    }
    return flags;
  }

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
      }
      else{
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

  static updateUserAge(day, month, year) async {
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


  static Future<void> createClass({
    required BuildContext context,
    required String roomId,
    required String className,
    required String city,
    required String country,
    required String dominantLanguage,
    required String targetLanguage,
    required String desc,
    required int languageLevel,
    required bool isPublic,
    required bool isShareFiles,
    required bool isShareLocation,
    required bool isSharePhoto,
    required bool isOpenExchange,
    required bool isOpenEnrollment,
    required bool isCreateStories,
    required bool isCreateRoomsExchange,
    required bool isCreateRooms,
    required bool isShareVideo,
    required bool oneToOneChatClass,
    required bool oneToOneChatExchange,
    required String schoolName,
  }) async {
    final String token = box.read("access");
    if (kDebugMode) {
      if (token.isEmpty) {
        Fluttertoast.showToast(
            msg: "Token expired please logout and login again");
        return;
      }
      print("token: $token");
    }
    http.post(Uri.parse(ApiUrls.create_class),
        headers: {"Authorization": "Bearer $token"},
        body: CreateClassToJson(
          pangeaClassRoomId: roomId,
          languageLevel: languageLevel.toString(),
          dominantLanguage: dominantLanguage,
          description: desc,
          country: country,
          className: className,
          city: city,
          targetLanguage: targetLanguage,
          schoolName: schoolName,
        ).toJson())
        .then((value) async {
      if (value.statusCode == 201 || value.statusCode == 200) {
        final data = CreateClassFromJson.fromJson(jsonDecode(value.body));
        http.post(
          Uri.parse(ApiUrls.addClassPermissions),
          headers: {"Authorization": "Bearer $token"},
          body: AddClassPermissionModel(
            pangeaClass: data.id.toString(),
            oneToOneChatExchange: oneToOneChatExchange.toString(),
            oneToOneChatClass: oneToOneChatClass.toString(),
            isShareVideo: isShareVideo.toString(),
            isCreateRooms: isCreateRooms.toString(),
            isCreateRoomsExchange: isCreateRoomsExchange.toString(),
            isCreateStories: isCreateStories.toString(),
            isOpenEnrollment: isOpenEnrollment.toString(),
            isOpenExchange: isOpenExchange.toString(),
            isSharePhoto: isSharePhoto.toString(),
            isShareLocation: isShareLocation.toString(),
            isShareFiles: isShareFiles.toString(),
            isPublic: isPublic.toString(),
          ).toJson(),
        )
            .then((value) {
          if (value.statusCode == 201 || value.statusCode == 200) {
            box.remove('className');
            box.remove('cityName');
            box.remove('countryName');
            box.remove('languageLevel');
            box.remove('scoolName');
            box.remove('targetLanguage');
            box.remove('sourceLanage');
            box.remove('publicGroup');
            box.remove('openEnrollment');
            box.remove('openToExchange');
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Class created successfully")));
            context.vRouter.to("/invite_students");
          } else {
            ApiException.exception(statusCode: value.statusCode, context: context, body: value.body);
          }
        }).catchError((onError) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Error in Permissions: $onError")));
        });
      }
      else {
        ApiException.exception(statusCode: value.statusCode, context: context, body: value.body);
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error: $onError")));
    });
  }

  static Future<bool?> deleteClass({
    required BuildContext context,
    required String roomId,
  }) async {
    final String token = box.read("access")??"";
    if (token.isNotEmpty) {
      await http.delete(
        Uri.parse(ApiUrls.deleteClass+roomId),
        headers: <String, String>{
          "Authorization": "Bearer $token",
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ).then((value) {
        if(value.statusCode ==200 || value.statusCode ==201){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Class deleted successfully")));
          return true;
        }else{
          ApiException.exception(statusCode: value.statusCode, context: context, body: value.body);
        }
      }).catchError((error){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Error: $error")));
        log("Error: $error");
      });
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("JWT Token is null")));
      if (kDebugMode) {
        print("JWT Token is null");
      }
    }
  }

  static Future<bool?> updateClassPermission({
    required BuildContext context,
    required String classId,
    required String isPublic,
    required String openEnrollment,
    required String openToExchange,
  }) async {
    final String token = box.read("access");
    if (token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Token expired please logout and login again")));
      return null;
    }
    http
        .put(
      Uri.parse(ApiUrls.updateClassPermissions + classId),
      headers: {
        "Authorization": "Bearer $token",
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'is_public': isPublic,
          'is_open_enrollment': openEnrollment,
          'is_open_exchange': openToExchange,
        },
      ),
    )
        .then((value) {
      if(value.statusCode == 200 || value.statusCode ==201){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Permissions updated successfully")));
        return true;
      }else{
        ApiException.exception(statusCode: value.statusCode, context: context, body: value.body);
      }

    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error accured: $e")));
      print("Error accured: $e");
    });
  }


  static Future<bool?> updateStudentPermission({
    required BuildContext context,
    required String classId,
    required String oneToOneChatsWithinClass,
    required String oneToOneChatsWithinExchanges,
    required String createRooms,
    required String createRoomsInExchanges,
    required String createStories,
    required String shareVideos,
    required String sharePhotos,
    required String shareFiles,
    required String shareLocation,
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
    http
        .put(
      Uri.parse(ApiUrls.updateClassPermissions + classId),
      headers: {
        "Authorization": "Bearer $token",
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'one_to_one_chat_class': oneToOneChatsWithinClass,
          'one_to_one_chat_exchange': oneToOneChatsWithinExchanges,
          'is_create_rooms': createRooms,
          'is_create_rooms_exchange': createRoomsInExchanges,
          'is_share_video': shareVideos,
          'is_share_photo': sharePhotos,
          'is_share_files': shareFiles,
          'is_share_location': shareLocation,
          'is_create_stories': createStories,
        },
      ),
    )
        .then((value) {
      if(value.statusCode ==201 ||value.statusCode ==200){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Permissions updated successfully")));
        return true;
      }else{
        ApiException.exception(statusCode: value.statusCode, context: context, body: value.body);
      }
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error accured: $e")));
      print("Error accured: $e");
    });
  }

  static Future<bool?> updateClassDetails({
    required String roomId,
    required String city,
    required String country,
    required String desc,
    required int languageLevel,
    required String schoolName,
    required BuildContext context,
  }) async {
    final String token = box.read("access");
    if (token.isEmpty) {
      if (kDebugMode) {
        print("JWT Token is null");
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Token expired please logout and login again")));
      return null;
    }
    http
        .put(
      Uri.parse(ApiUrls.updateClassDetail + roomId),
      headers: {
        "Authorization": "Bearer $token",
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'city': city,
        'country': country,
        'language_level': languageLevel.toString(),
        'description': desc,
        'school_name': schoolName,
        'pangea_class_room_id': roomId,
      }),
    )
        .then((value) {
      if(value.statusCode ==201 ||value.statusCode ==200){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Class Details updated successfully")));
        return true;
      }
      else{
        ApiException.exception(statusCode: value.statusCode, context: context, body: value.body);
      }
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error accrued: $e")));
      if (kDebugMode) {
        print(e);
      }
    });
  }



 static Future<ClassDetailModel> fetchUserInfo(BuildContext context) async {

    try{
      final String accessToken = box.read("access") ?? "";
      final String roomID =  VRouter.of(context).queryParameters["id"] ?? "";
      if (accessToken.isNotEmpty && roomID.isNotEmpty) {
        final value =  await http.get(
          Uri.parse(ApiUrls.getClassDetails + roomID),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $accessToken",
          },
        );
        if (value.statusCode == 200 || value.statusCode == 201) {
          return  classDetailModelFromJson(value.body);
        } else {
          ApiException.exception(statusCode: value.statusCode, body: value.body, context: context);
          throw Exception("${value.statusCode}");
        }
      }else{
        throw Exception("Access token or Room ID is empty");
      }
    }catch(e){
      print("eero");
      print(e);
      throw Exception(e.toString());
    }
  }

}