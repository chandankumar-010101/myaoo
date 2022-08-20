import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/model/create_class_model.dart';
import 'package:vrouter/vrouter.dart';
import '../model/add_class_permissions_model.dart';
import '../utils/api_urls.dart';

import 'package:http/http.dart' as http;

class ClassServices {
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
    final box = GetStorage();
    final String token = box.read("access");
    if (kDebugMode) {
      if (token.isEmpty) {
        Fluttertoast.showToast(
            msg: "Token expired please logout and login again");
        return;
      }

      print("token: $token");
    }
    http
        .post(Uri.parse(ApiUrls.create_class),
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

            print("Class Created Successfully");
            context.vRouter.to("/invite_students");
          } else {
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

  static Future<void> deleteClass({
    required String roomId,
  }) async {
    final box = GetStorage();
    final token = box.read("access");
    if(token != null){
      try{

      }catch(e){
        print("Error: $e");
      }
    }else{
      print("JWT Token is null");
    }
  }

  static Future<void> updateClassPermission()async{
    final box = GetStorage();
    String token = box.read("access");
    if(token.isEmpty){
      print("JWT Token is null");
      Fluttertoast.showToast(
          msg: "Token expired please logout and login again");
      return;
    }

    http
        .put(Uri.parse(ApiUrls.updateClassPermissions),
        headers: {"Authorization": "Bearer $token"},
        body: AddClassPermissionModel(

          isPublic: true.toString()
        ).toJson()).then((value) {

    }).catchError((e){

    });


  }
  static Future<void> updateClassDetails() async{

  }
}
