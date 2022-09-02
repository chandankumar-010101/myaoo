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
import '../pages/search/search_discover.dart';
import '../pages/search/search_view_controller.dart';
import '../utils/api_helper.dart';
import '../utils/api_urls.dart';
import 'package:http/http.dart' as http;

import '../widgets/matrix.dart';
import 'api_exception.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';

class PangeaServices {
  static GetStorage box = GetStorage();
  static final SearchViewController _searchController =
      Get.put(SearchViewController());

  static inviteAction(BuildContext context, String id, String roomId) async {
    final room = Matrix.of(context).client.getRoomById(roomId);
    if (room != null) {
      final success = await showFutureLoadingDialog(
        context: context,
        future: () => room.invite(id),
      );
      if (success.error == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(L10n.of(context)!.contactHasBeenInvitedToTheGroup)));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Unable to Fetch Room")));
    }
  }

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
      Fluttertoast.showToast(msg: "Something went wrong", fontSize: 16.0);
    }
    return countryFlag;
  }

  static Future<List<LanguageFlag>> getFlags2() async {
    List<LanguageFlag> countryFlag = [];
    List<LanguageFlag> flags = [];
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
      Fluttertoast.showToast(msg: "Something went wrong", fontSize: 16.0);
    }
    return flags;
  }

  //------------------------------------Authentication-----------------------------------//
  static logoutUser(
      {required BuildContext context, required Client client}) async {
    await showFutureLoadingDialog(
      context: context,
      future: () => client.logout(),
    ).then((value) {
      box.erase();
      ScaffoldMessenger.of(context)
          .showSnackBar( SnackBar(content: Text("Log out successfully")));
    }).catchError((e) {
      if (kDebugMode) {
        print(e);
        print("logout error");
      }
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error while Log out user")));
    });
  }

  //--------------------------------------User Info --------------------------------------//
  static validateUser(
      Client client, BuildContext context, Matrix widget) async {
    final bool signUp = box.read("sign_up") ?? false;
    final String userID = client.userID??"";
    if(userID.isNotEmpty){
      try{
        final value =  await http
            .get(
          Uri.parse(ApiUrls.validate_user + userID),
        );
        if (value.statusCode == 201 || value.statusCode == 200) {
         final data = jsonDecode(value.body);
          if (!data["is_user_exist"] || signUp) {
            signUp ? box.remove("sign_up") : null;
            widget.router!.currentState!.to(
              '/home/connect/lang',
              queryParameters: widget.router!.currentState!.queryParameters,
            );
          } else {
            box.write("accessToken", client.accessToken.toString());
            box.write("clientID", client.userID.toString());
            PangeaServices.userDetails(clientID: client.userID.toString());

            widget.router!.currentState!.to(
              '/rooms',
              queryParameters: widget.router!.currentState!.queryParameters,
            );
          }
        }
        else {
          ApiException.exception(
              statusCode: value.statusCode, body: value.body, context: context);
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Unable to validate User")));
          PangeaServices.logoutUser(context: context, client: client);
        }
      }catch(e){
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("User validation failed: $e")));
        PangeaServices.logoutUser(context: context, client: client);
      }
    }

  }

  static Future userDetails({required String clientID}) async {
    try{
      final value = await http.get(
        Uri.parse(ApiUrls.user_details + clientID),
      );
      if (value.statusCode == 200 || value.statusCode == 201) {
        final UserInfo data = userInfoFromJson(value.body);
        box.write("access", data.access);
        box.write("refresh", data.refresh);
        box.write("sourcelanguage", data.profile!.sourceLanguage);
        box.write("targetlanguage", data.profile!.targetLanguage);
        box.write("usertype", data.profile!.userType);
        fetchUserAge();
      }
      else {
        if (kDebugMode) {
          print("Unable to fetch user information");
          print(value.statusCode);
          print(value.body);
        }
        Fluttertoast.showToast(msg: "Error ${value.statusCode}: Unable to fetch user details");
      }
    }catch(e){
      if (kDebugMode) {
        print(e);
        print("Unable to fetch User Details");
      }
      Fluttertoast.showToast(msg: "Error while fetching user details");
    }

  }

  static fetchUserAge() async {
    final String clientID = box.read("clientID") ?? "";
    final String accessToken = box.read("access") ?? "";
    if (clientID.isNotEmpty && accessToken.isNotEmpty) {
      try{
       final value = await http.get(
          Uri.parse(ApiUrls.user_ages + clientID),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $accessToken",
          },
        );
        if (value.statusCode == 200) {
          final data = jsonDecode(value.body);
          box.write("age", data["age"]);
        }
        else if (value.statusCode == 400) {
          box.write("age", 0);
        }
        else {
          if (kDebugMode) {
            print("Unable to fetch user age");
            print(value.statusCode);
            print(value.body);
          }
          Fluttertoast.showToast(
              msg: "Api Error ${value.statusCode}: Unable to fetch user age");
        }
      }catch(e){
        if (kDebugMode) {
          print(e);
        }
        Fluttertoast.showToast(msg: "Error: Unable to fetch user age");
      }
    }
    else {
      if (kDebugMode) {
        print(
            "Client Id or access token is Empty, \n unable to fetch User Age");
        print(clientID);
        print(accessToken);
      }
      Fluttertoast.showToast(msg: "Error: Unable to fetch user age");
    }
  }

  static accessToken() async {
    final String accessToken = box.read("access") ?? "";
    if (accessToken.isEmpty) {
      print("access token is empty");
      final String clientID = box.read("clientID") ?? "";
      if (clientID.isNotEmpty) {
        await userDetails(clientID: clientID);
      } else {
        if (kDebugMode) {
          print("Client Id is empty");
        }
      }
    } else if(JwtDecoder.isExpired(accessToken)){
      print("token is expired");
      final String clientID = box.read("clientID") ?? "";
      if (clientID.isNotEmpty) {
        await userDetails(clientID: clientID);
      } else {
        if (kDebugMode) {
          print("Client Id is empty");
        }
      }

    }else{
      if (kDebugMode) {
        print("every thing is working fine");
      }
    }
  }



  static updateUserAge(day, month, year, context) async {
   final String clientID = box.read("clientID")??"";
   if(clientID.isNotEmpty){
     await http
         .post(
       Uri.parse(ApiUrls.update_user_ages),
       headers: {
         "Content-Type": "application/json",
         "Authorization": "Bearer ${box.read("access")}",
       },
       body: jsonEncode({
         "pangea_user_id": clientID,
         "date_of_birth": "$day-$month-$year",
       }),
     ).then((response) {
       if (response.statusCode == 200) {
         final data = jsonDecode(response.body);
         box.write("age", data["age"]);
         _searchController.age.value = data["age"];
         _searchController.loading.value = false;
         Fluttertoast.showToast(msg: "User Age Updated");
       }
       else if (response.statusCode == 400) {

         box.write("age", 0);
         Fluttertoast.showToast(msg: "Unable to update user age");
         _searchController.age.value = 0;
         log("400" + response.body);
       }
       else {
         ApiException.exception(
             statusCode: response.statusCode,
             context: context,
             body: response.body);
       }
     }).catchError((e) {
       if (kDebugMode) {
         print("Error accured");
         print(e);
       }
       Fluttertoast.showToast(msg: "Error: unable to update user age");
     });
   }else{
     Fluttertoast.showToast(msg: "Unable to fetch Client ID");
   }

  }

  //---------------------------------------Class Services-------------------------------------//

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
    final Room? room = Matrix.of(context).client.getRoomById(roomId);
    if (token.isEmpty || room == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Token expired or unable to find room ")));
      return;
    }
    if (kDebugMode) {
      print("token: $token");
    }
    try{
     final value = await  http
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
          ).toJson());
     if (value.statusCode == 201 || value.statusCode == 200) {
     final data = CreateClassFromJson.fromJson(jsonDecode(value.body));
       if (kDebugMode) {
         print(data.id);
       }
       box.write("class_code", data.classCode);
       try{
        final value = await http
             .post(
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
         );
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
             context.vRouter
                 .to("/invite_students", queryParameters: {"id": roomId});
           }
           else {
             if (kDebugMode) {
               print("Error accured here");
             }
             await room.leave().whenComplete(() {
               deleteClass(context: context, roomId: roomId);
               ApiException.exception(
                   statusCode: value.statusCode,
                   context: context,
                   body: value.body);
             }).catchError((e){
               throw Exception("Error: Unable to delete class");
             });
           }
       }catch(e){
         await room.leave().whenComplete(() {
           deleteClass(context: context, roomId: roomId);
           ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(content: Text("Unable to update class permissions: $e")));
         }).catchError((e){
           throw Exception("Error: Unable to delete class");
         });
       }
     }
     else {
       await room.leave().whenComplete(() {
         deleteClass(context: context, roomId: roomId);
         ApiException.exception(
             statusCode: value.statusCode, context: context, body: value.body);
       }).catchError((e){
         throw Exception("Error: Unable to delete class");
       });
     }

    }catch(e){
      await room.leave().whenComplete(() {
        deleteClass(context: context, roomId: roomId);
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Unable to update class details: $e")));
      }).catchError((e){
        throw Exception("Error: Unable to delete class");
      });
    }


  }

  static Future<bool?> deleteClass({
    required BuildContext context,
    required String roomId,
  }) async {
    final String token = box.read("access") ?? "";
    if(token.isEmpty){
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("JWT Token is null")));
      if (kDebugMode) {
        print("JWT Token is null");
      }
      return null;
    }
    try{
      final value =   await http.delete(
        Uri.parse(ApiUrls.deleteClass + roomId),
        headers: <String, String>{
          "Authorization": "Bearer $token",
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (value.statusCode == 200 || value.statusCode == 201 || value.statusCode ==204) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Class deleted successfully")));
        return true;
      }
      else {
        ApiException.exception(
            statusCode: value.statusCode, context: context, body: value.body);
        throw Exception("Error${value.statusCode}: Unable to delete");
      }
    }catch(e){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error: $e")));
      log("Error: $e");
      throw Exception("Unable to delete");
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
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Token expired please logout and login again")));
      return null;
    }
    try{
      final value = await http
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
      );
      if (value.statusCode == 200 || value.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Permissions updated successfully")));
        return true;
      }
      else {
        ApiException.exception(
            statusCode: value.statusCode, context: context, body: value.body);
        throw Exception("Error While Updating data");
      }
    }catch(e){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error accured: $e")));
      if (kDebugMode) {
        print("Error accured: $e");
      }
      throw Exception("Error at data fetching");
    }
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
    final String token = box.read("access")??"";
    if (token.isEmpty) {
      if (kDebugMode) {
        print("JWT Token is null");
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Token expired please logout and login again")));
      return null;
    }
    try{
    final value = await http
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
      );
    if (value.statusCode == 201 || value.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Permissions updated successfully")));
      return true;
    }
    else {
      ApiException.exception(
          statusCode: value.statusCode, context: context, body: value.body);
      throw Exception("Error While Updating data");
    }

    }catch(e){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error accured: $e")));
      if (kDebugMode) {
        print("Error accured: $e");
      }
      throw Exception("Error while fetching the data");
    }
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
      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
          content: Text("Token expired please logout and login again")));
      return null;
    }
    try{
      final value = await http.put(
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
      );
      if (value.statusCode == 201 || value.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Class Details updated successfully")));
        return true;
      }
      else {
        ApiException.exception(
            statusCode: value.statusCode, context: context, body: value.body);
        throw Exception("Error While Updating data");
      }
    }catch(e){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error accrued: $e")));
      if (kDebugMode) {
        print(e);
      }
      throw Exception("Error at data fetching");

    }

  }

  static Future<FetchClassInfoModel> fetchClassInfo(BuildContext context,String accessToken, String roomID) async {
    try {

      if (accessToken.isNotEmpty && roomID.isNotEmpty) {
        final value = await http.get(
          Uri.parse(ApiUrls.getClassDetails + roomID),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $accessToken",
          },
        );
        if (value.statusCode == 200 || value.statusCode == 201) {
           return FetchClassInfoModel.fromJson(jsonDecode(value.body));

        } else {
          ApiException.exception(
              statusCode: value.statusCode, body: value.body, context: context);
          throw Exception("${value.statusCode}");
        }
      }
      else {
        throw Exception("Access token or Room ID is empty".toString());
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  //------------------------------------user Account----------------------------------//


}
