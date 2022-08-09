import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/model/create_class_model.dart';
import '../model/add_class_permissions_model.dart';
import '../utils/api_urls.dart';

import 'package:http/http.dart' as http;

class ClassServices {

  static Future<void> createClass(

  {
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
  }
  ) async {
    final box = GetStorage();
    final String token = box.read("access");
    if (kDebugMode) {
      print("token: $token");
    }
    http.post(
      Uri.parse(ApiUrls.create_class),
      headers: {"Authorization": "Bearer $token"},
      body: CreateClassToJson(
        pangeaClassRoomId: roomId,
        languageLevel: languageLevel,
        dominantLanguage: dominantLanguage,
        description: desc,
        country: country,
        className: className,
        city: city,
        targetLanguage: targetLanguage, schoolName: schoolName,
      ).toJson()).then((value) async {
      if (value.statusCode == 201 || value.statusCode == 200) {
        log("Status Code is  ${value.statusCode} and ${value.body} ");
         final  data = CreateClassFromJson.fromJson(jsonDecode(value.body));
        http.post(
          Uri.parse(ApiUrls.addClassPermissions),
          headers: {"Authorization": "Bearer $token"},
          body: AddClassPermissionModel(
            pangeaClass: data.id.toString(),
            oneToOneChatExchange: oneToOneChatExchange.toString(),
            oneToOneChatClass:  oneToOneChatClass.toString(),
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
        ).then((value) {
          if (value.statusCode == 201 || value.statusCode == 200) {
            log("Permissions Status Code is  ${value.statusCode} and ${value.body} ");
          }else{
            log("Permissions Status Code is  ${value.statusCode} and ${value.body} ");
          }
        }).catchError((onError) {
          log("Error in Permissions: $onError");
        });
      } else {
        log("Status Code is  ${value.statusCode} and ${value.body} ");

      }
    }).catchError((onError) {
      log("Error: $onError");

    });

  }
}
