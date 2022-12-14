import 'dart:convert';
import 'dart:developer';
import 'dart:html';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/class_code_model.dart';
import 'package:pangeachat/model/fetchClassParticipants.dart';
import 'package:pangeachat/pages/class_analytics/class_analytics.dart';
import 'package:pangeachat/pages/search/search.dart';
import 'package:pangeachat/pages/search/search_view.dart';
import 'package:vrouter/vrouter.dart';
import '../model/add_class_permissions_model.dart';
import '../model/class_analytics_model.dart';
import '../model/class_detail_model.dart';
import '../model/create_class_model.dart';
import '../model/exchange_classInfo.dart';
import '../model/flag_model.dart';
import '../model/invite_email_model.dart';
import '../model/invite_email_model.dart' as inviteModel;

import '../model/report_user_model.dart';
import '../model/search_view_model.dart';
import '../model/teacher_all_class_model.dart';
import '../model/user_info.dart';
import '../pages/search/search_discover.dart';
import '../pages/search/search_view_controller.dart';
import '../utils/api_helper.dart';
import '../utils/api_urls.dart';
import 'package:http/http.dart' as http;

import '../utils/choreo_util.dart';
import '../widgets/matrix.dart';
import 'api_exception.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';

import '../controllers/controllers.dart';

class PangeaServices {
  static final box = GetStorage();

  static SearchViewController searchViewController =
      Get.put(SearchViewController());


  PangeaServices._init() {
    accessTokenStatus();
  }


  static searchClass(String text) async {
    try {
      PangeaServices._init();

      if(text.isEmpty){
        final value = await http.get(Uri.parse(ApiUrls.class_list +"?p=${searchViewController.pageNo.value.toString()}&page_size=10"),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${box.read("access")}",
          },
        );
        if (value.statusCode == 200) {

          final data = searchViewModelFromJson(value.body);
          data.next != null ?  searchViewController.next.value = true :  searchViewController.next.value = false;
          data.previous != null ?  searchViewController.previous.value = true :  searchViewController.previous.value =
          false;
          searchViewController.classList.value = data.results!;
          searchViewController.loading.value = false;
        }

        else {
          searchViewController.loading.value = false;
          if (kDebugMode) {
            print(value.body);
          }
          PangeaControllers.toastMsg(msg: "Error: Unable to fetch list of classes");
        }

      }else{
        final result = await http.get(
          Uri.parse(ApiUrls.class_search + "?q=$text"),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${box.read("access")}",
          },
        );

        if (result.statusCode == 200 || result.statusCode == 201) {

          final data = searchViewModelFromJson(result.body);
          data.next != null ?  searchViewController.next.value = true :  searchViewController.next.value = false;
          data.previous != null ?  searchViewController.previous.value = true :  searchViewController.previous.value =
          false;
          searchViewController.classList.value = data.results!;
          searchViewController.loading.value = false;
        }
        else {
          searchViewController.loading.value = false;
          PangeaControllers.toastMsg(msg: "Error: Unable to fetch list of classes");

        }
      }

    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(msg: "Error: $e");
    }
  }
  static Future<bool> userExitInClass(String classId) async {
    ///fetch the list of participants of the class
    try {
      if(classId.isNotEmpty){
        final FetchClassParticipants users = await fetchParticipants(classId);

        ///check user exist in the class or not
        final List exit = users.roomMembers!.members!
            .where((element) => element == box.read("clientID"))
            .toList();

        if (exit.isEmpty) {
          return false;
        } else {
          return true;
        }
      }else{
        return false;
      }

    } catch (e) {
      PangeaControllers.toastMsg(msg: "UserExistInClass: $e");
      return false;
    }
  }



  static accessTokenStatus() async {
    try {
      if (box.read("access") != null) {
        if (box.read("clientID") != null && box.read("accessToken") != null) {
          if (JwtDecoder.isExpired(box.read("access"))) {
            await fetchUserTokenAndInfo(
                box.read("clientID"), box.read("accessToken"));
          }
        } else {
          print("Matrix UserId and Token not found");
        }
      }
    } catch (e) {
      print(e);
    }
  }

  static joinClass(BuildContext context, String roomAlias) async {
    final client = Matrix.of(context).client;
    final result = await showFutureLoadingDialog<String>(
      context: context,
      future: () => client.joinRoom(roomAlias),
    );
    if (result.error == null) {
      if (client.getRoomById(result.result!) == null) {
        await client.onSync.stream.firstWhere(
            (sync) => sync.rooms?.join?.containsKey(result.result) ?? false);
      }
      // Fluttertoast.showToast(msg: "Class Joined Successfully", webBgColor: "#00ff00",backgroundColor: Colors.red);
      // VRouter.of(context).toSegments(['rooms', result.result!]);
      Navigator.of(context, rootNavigator: false).pop();
      return;
    }
  }

  static joinClassWithCode(String classCode, BuildContext context) async {
    PangeaServices._init();
    if (box.read("access") == null) {
      PangeaControllers.toastMsg(msg: "Access token not found", success: false);
      return;
    }
    try {
      final value = await http.get(
        Uri.parse(ApiUrls.join_code + classCode),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${box.read("access")}",
        },
      );
      if (value.statusCode == 200) {
        final ClassCodeModel data =
            ClassCodeModel.fromJson(jsonDecode(value.body));
        if (data.pangeaClassRoomId != null) {

          final bool? exit = await userExitInClass(data.pangeaClassRoomId!);
          if (exit != null) {
            if (!exit) {
              ///join the room with class Id
              joinClass(context, data.pangeaClassRoomId!);
              PangeaControllers.toastMsg(
                  msg: "Class Joined Successfully", success: true);
            } else {
              PangeaControllers.toastMsg(
                  msg: "You have already joined this class", success: true);
            }

          }
        } else {
          PangeaControllers.toastMsg(
              msg: "Unable to find User Information", success: false);
        }
      }
      else if(value.statusCode ==400){
        PangeaControllers.toastMsg(msg: "Invalid class code", success: false);
      }
      else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(msg: "Error: $e", success: false);
    }
  }

  static Future sendEmailToJoinClass(
      List<inviteModel.Data> data, String roomId, String teacherName) async {
    PangeaServices._init();
    try {
      final result = await http.post(Uri.parse(ApiUrls.send_email_link),
          headers: {
            "Authorization": "Bearer ${box.read("access")}",
            "Content-Type": "application/json",
          },
          body: jsonEncode(InviteEmail(
            pangeaClassRoomId: roomId,
            data: data,
            teacherName: teacherName,
          ).toJson()));
      if (result.statusCode == 200 || result.statusCode == 201) {
        PangeaControllers.toastMsg(
            msg: "Mail sent successfully!", success: true);
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
        throw Exception("Api Error ${result.statusCode}: Unable to send email");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(
          msg: "Error: Unable to send email", success: false);
      throw Exception("Error: Unable to email");
    }
  }

  static Future<ClassCodeModel?> fetchClassWithCode(
      String classCode, BuildContext context) async {
    PangeaServices._init();
    if (box.read("access") == null) {
      PangeaControllers.toastMsg(msg: "Access token not found", success: false);
      throw Exception("Access Token not found");
    }
    try {
      final value = await http.get(
        Uri.parse(ApiUrls.join_code + classCode),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${box.read("access")}",
        },
      );
      if (value.statusCode == 200) {
        return ClassCodeModel.fromJson(jsonDecode(value.body));
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception(
            "Api Error ${value.statusCode}: Unable to fetch code information");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(msg: "Error: $e", success: false);

      throw Exception("Error: $e");
    }
  }

  static inviteAction(BuildContext context, String id, String roomId) async {
    final room = Matrix.of(context).client.getRoomById(roomId);
    if (room != null) {
      final success = await showFutureLoadingDialog(
        context: context,
        future: () => room.invite(id),
      );
      if (success.error == null) {

        PangeaControllers.toastMsg(
            msg: L10n.of(context)!.contactHasBeenInvitedToTheGroup,
            success: true);
        PangeaControllers.toastMsg(
            msg: "You can close this widow now",
            success: true);

      }
    } else {
      PangeaControllers.toastMsg(msg: "Unable to Fetch Chat", success: false);

    }
  }

  static Future<List<LanguageFlag>> getFlags() async {
    PangeaServices._init();
    List<LanguageFlag> countryFlag = [];
    var response = await ApiFunctions().get(ApiUrls.get_all_flags);

    if (response != null) {
      List temp = response.body;
      countryFlag = temp.map((value) => LanguageFlag.fromJson(value)).toList();
      countryFlag =
          countryFlag.where((element) => element.languageType != 2).toList();
      countryFlag.sort((a, b) {
        return a.languageName
            .toString()
            .toLowerCase()
            .compareTo(b.languageName.toString().toLowerCase());
      });
    } else {
      PangeaControllers.toastMsg(msg: "Something went wrong", success: false);
    }
    return countryFlag;
  }

  static Future<List<LanguageFlag>> getFlags2() async {
    PangeaServices._init();
    List<LanguageFlag> countryFlag = [];
    List<LanguageFlag> flags = [];
    var response = await ApiFunctions().get(ApiUrls.get_all_flags);
    if (response != null) {
      List temp = response.body;
      countryFlag = temp.map((value) => LanguageFlag.fromJson(value)).toList();
      flags =
          countryFlag.where((element) => element.languageType == 2).toList();
    } else {
      PangeaControllers.toastMsg(msg: "Something went wrong", success: false);
    }
    return flags;
  }

  static Future updateLanguage(
      String sourceLanguage, String targetLanguage) async {
    PangeaServices._init();
    try {
      final value = await http.post(Uri.parse(ApiUrls.update_user_language),
          headers: {
            "Authorization": "Bearer ${box.read("access")}"
          },
          body: {
            "source_language": sourceLanguage,
            "target_language": targetLanguage
          });
      if (value.statusCode == 201 || value.statusCode == 200) {
        PangeaControllers.toastMsg(
            msg: "Language updated successfully!", success: true);
      } else {
        throw Exception("Error ${value.statusCode}: Unable to update language");
      }
    } catch (e) {
      print(e);
      throw Exception("Error: Unable to update language");
    }
  }

  //------------------------------------Authentication-----------------------------------//
  static logoutUser(
      {required BuildContext context, required Client client}) async {

    await showFutureLoadingDialog(
      context: context,
      future: () => client.logout(),
    ).then((value) {
      box.erase();

      PangeaControllers.toastMsg(msg: "Log out successfully", success: true);
    }).catchError((e) {
      if (kDebugMode) {
        print(e);
        print("logout error");
      }
      PangeaControllers.toastMsg(
          msg: "Error while Log out user", success: false);
    });
  }

  //--------------------------------------User Info --------------------------------------//
  static validateUser(Client client, BuildContext context, Matrix widget,
      {bool rooms = false}) async {
    final bool signUp = box.read("sign_up") ?? false;
    final String classCode = GetStorage().read("classCode") ?? "";
    try {
      final value = await http.get(
        Uri.parse(ApiUrls.validate_user + client.userID.toString()),
      );
      if (value.statusCode == 201 || value.statusCode == 200) {
        final data = jsonDecode(value.body);
        if (!data["is_user_exist"] || signUp) {
          if (signUp) {
            box.remove("sign_up");
            box.write("firstTime", true);
          }
          widget.router!.currentState!.to(
            '/home/connect/lang',
            queryParameters: widget.router!.currentState!.queryParameters,
          );
        } else {
          await fetchUserTokenAndInfo(
                  client.userID.toString(), client.accessToken.toString())
              .whenComplete(() async {
            if (classCode.isNotEmpty) {
              GetStorage().remove("classCode");
              Future.delayed(const Duration(seconds: 2), () {
                VRouter.of(context).to('/join_with_link',
                    queryParameters: {"code": classCode});
              });
            } else {
              if (!rooms) {
                widget.router!.currentState!.to(
                  '/rooms',
                  queryParameters: widget.router!.currentState!.queryParameters,
                );
              }
            }
          });
        }
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        PangeaServices.logoutUser(context: context, client: client);
      }
    } catch (e) {
      PangeaControllers.toastMsg(msg: "User validation failed: $e");
      PangeaServices.logoutUser(context: context, client: client);
    }
  }

  static Future fetchUserTokenAndInfo(String userId, String matrixToken) async {
    try {
      final value = await http.get(
        Uri.parse(ApiUrls.user_details + userId),
      );
      if (value.statusCode == 200 || value.statusCode == 201) {
        final UserInfo data = userInfoFromJson(value.body);
        //backend access and refresh token
        box.write("sign_up", false);
        box.write("access", data.access);
        box.write("refresh", data.refresh);
        box.write("clientID", userId);
        box.write("accessToken", matrixToken);
        box.write("sourcelanguage", data.profile!.sourceLanguage);
        box.write("targetlanguage", data.profile!.targetLanguage);
        box.write("usertype", data.profile!.userType);
        data.access != null
            ? await PangeaServices.fetchUserAge(data.access!, userId)
            : null;
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error: $e");
      }
      PangeaControllers.toastMsg(msg: "Error while fetching user details");
    }
  }

  static Future fetchUserAge(String token, String userId) async {
    try {
      final value = await http.get(
        Uri.parse(ApiUrls.user_ages + userId),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      );
      if (value.statusCode == 200) {
        final data = jsonDecode(value.body);
        box.write("age", data["age"]);
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(msg: "Error: $e");
    }
  }

  static Future updateUserAge(day, month, year, context) async {
    PangeaServices._init();
    final SearchViewController _searchController =
        Get.put(SearchViewController());
    await http
        .post(
      Uri.parse(ApiUrls.update_user_ages),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${box.read("access")}",
      },
      body: jsonEncode({
        "pangea_user_id": box.read("clientID"),
        "date_of_birth": "$day-$month-$year",
      }),
    )
        .then((response) {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        box.write("age", data["age"]);
        _searchController.age.value = data["age"];
        _searchController.loading.value = false;
        PangeaControllers.toastMsg(msg: "User Age Updated", success: true);
      } else if (response.statusCode == 400) {
        box.write("age", 0);
        PangeaControllers.toastMsg(msg: "Unable to update user age");
        _searchController.age.value = 0;
        _searchController.loading.value = false;
        log("400" + response.body);
      } else {
        ApiException.exception(
            statusCode: response.statusCode, body: response.body);
      }
    }).catchError((e) {
      if (kDebugMode) {
        print("Error accured");
        print(e);
      }
      PangeaControllers.toastMsg(msg: "Error: $e");
    });
  }

  //---------------------------------------Class Services-------------------------------------//

  static Future<void> createClass({
    required BuildContext context,
    required String roomId,
    required Room classRoom,
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
    required bool sendVoice,
    required String schoolName,
    required bool isExchange,
  }) async {
    PangeaServices._init();
    if (classRoom == null) {
      PangeaControllers.toastMsg(msg: "Token expired or unable to find chat ");

      return;
    }
    try {
      final value = await http.post(Uri.parse(ApiUrls.create_class), headers: {
        "Authorization": "Bearer ${box.read("access")}"
      }, body: {
        "class_name": className,
        "city": city,
        "country": country,
        "dominant_language": dominantLanguage,
        "target_language": targetLanguage,
        "description": desc,
        "language_level": languageLevel.toString(),
        "pangea_class_room_id": roomId,
        "school_name": schoolName,
        "is_exchange": isExchange.toString()
      });
      if (value.statusCode == 201 || value.statusCode == 200) {
        final data = CreateClassFromJson.fromJson(jsonDecode(value.body));
        box.write("class_code", data.classCode);
        PangeaServices._init();
        try {
          final value = await http.post(
            Uri.parse(ApiUrls.addClassPermissions),
            headers: {"Authorization": "Bearer ${box.read("access")}"},
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
              sendVoice: sendVoice.toString(),
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
            PangeaControllers.toastMsg(
                msg: "Class created successfully", success: true);

            context.vRouter
                .to("/invite_students", queryParameters: {"id": roomId});
          } else {
            await classRoom.leave().whenComplete(() {
              deleteClass(context: context, roomId: roomId);
              ApiException.exception(
                  statusCode: value.statusCode, body: value.body);
            }).catchError((e) {
              throw Exception("Error: Unable to delete class");
            });

            if (kDebugMode) {
              print("Error accured here");
            }
          }
        } catch (e) {
          await classRoom.leave().whenComplete(() {
            deleteClass(context: context, roomId: roomId);
            PangeaControllers.toastMsg(
                msg: "Unable to update class permissions: $e");
          }).catchError((e) {
            throw Exception("Error: Unable to delete class");
          });
        }
      } else {
        print("what is ggoing on");
        print(value.statusCode);
        await classRoom.leave().whenComplete(() {
          ApiException.exception(
              statusCode: value.statusCode, body: value.body);
        }).catchError((e) {
          throw Exception("Error: Unable to delete class");
        });
      }
    } catch (e) {
      await classRoom.leave().whenComplete(() {
        deleteClass(context: context, roomId: roomId);
        PangeaControllers.toastMsg(msg: "Unable to update class details: $e");
      }).catchError((e) {
        throw Exception("Error: Unable to delete class");
      });
    }
  }

  static Future<bool?> deleteClass({
    required BuildContext context,
    required String roomId,
  }) async {
    PangeaServices._init();
    try {
      final value = await http.delete(
        Uri.parse(ApiUrls.deleteClass + roomId),
        headers: <String, String>{
          "Authorization": "Bearer ${box.read("access")}",
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (value.statusCode == 200 ||
          value.statusCode == 201 ||
          value.statusCode == 204) {
        PangeaControllers.toastMsg(
            msg: "Class deleted successfully", success: true);
        return true;
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception("Error${value.statusCode}: Unable to delete");
      }
    } catch (e) {
      PangeaControllers.toastMsg(msg: "Error: $e");
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
    PangeaServices._init();
    try {
      final value = await http.put(
        Uri.parse(ApiUrls.updateClassPermissions + classId),
        headers: {
          "Authorization": "Bearer ${box.read("access")}",
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
        PangeaControllers.toastMsg(
            msg: "Permissions updated successfully", success: true);
        return true;
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception("Error While Updating data");
      }
    } catch (e) {
      PangeaControllers.toastMsg(
        msg: "Error accured: $e",
      );
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
    required String sendVoice,
    required String shareLocation,
  }) async {
    PangeaServices._init();
    try {
      final value = await http.put(
        Uri.parse(ApiUrls.updateClassPermissions + classId),
        headers: {
          "Authorization": "Bearer ${box.read("access")}",
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
            'is_voice_notes': sendVoice,
            'is_create_stories': createStories,
          },
        ),
      );
      if (value.statusCode == 201 || value.statusCode == 200) {
        PangeaControllers.toastMsg(
            msg: "Permissions updated successfully", success: true);
        return true;
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception("Error While Updating data");
      }
    } catch (e) {
      PangeaControllers.toastMsg(
        msg: "Error accured: $e",
      );

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
    PangeaServices._init();
    try {
      final value = await http.put(
        Uri.parse(ApiUrls.updateClassDetail + roomId),
        headers: {
          "Authorization": "Bearer ${box.read("access")}",
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
        PangeaControllers.toastMsg(
            msg: "Class Details updated successfully", success: true);
        return true;
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception("Error While Updating data");
      }
    } catch (e) {
      PangeaControllers.toastMsg(msg: "Error accrued: $e");
      if (kDebugMode) {
        print(e);
      }
      throw Exception("Error at data fetching");
    }
  }

  static Future<FetchClassInfoModel> fetchClassInfo(
      BuildContext context, String roomID) async {
    PangeaServices._init();
    try {
      if (roomID.isNotEmpty) {
        final value = await http.get(
          Uri.parse(ApiUrls.getClassDetails + roomID),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${box.read("access")}",
          },
        );
        if (value.statusCode == 200 || value.statusCode == 201) {
          return FetchClassInfoModel.fromJson(jsonDecode(value.body));
        } else {
          ApiException.exception(
              statusCode: value.statusCode, body: value.body);
          throw Exception("${value.statusCode}");
        }
      } else {
        throw "Room ID is empty";
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<bool> isExchange(
      BuildContext context, String accessToken, String exchangeId) async {
    try {
      PangeaServices._init();
      final value = await http.get(
        Uri.parse(ApiUrls.isExchange + exchangeId),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $accessToken",
        },
      );
      if (value.statusCode == 200 || value.statusCode == 201) {
        //print("Hello");
        final data = jsonDecode(value.body);
        return data["is_exchange"];
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception("${value.statusCode}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  //------------------------------------user Account----------------------------------//

  ///-----------------------------------saurabh side code------------------------------

  static Future<TeacherAllClassModel> fetchTeacherAllClassInfo(
      BuildContext context) async {
    try {
      PangeaServices._init();
      final value = await http.get(
        Uri.parse(ApiUrls.teacherAllClass),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${box.read("access")}",
        },
      );
      if (value.statusCode == 200 || value.statusCode == 201) {
        return teacherAllClassModelFromJson(value.body);
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception("${value.statusCode}");
      }
    } catch (e) {
      throw Exception("Exception: $e");
    }
  }

  static Future<bool> createExchangeRequest({
    required String roomId,
    required String teacherID,
    required String toClass,
    required BuildContext context,
  }) async {
    PangeaServices._init();
    try {
      var result = await http.post(Uri.parse(ApiUrls.exchangeClass),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${box.read("access")}",
          },
          body: jsonEncode({
            "pangea_class_room_id": roomId,
            "teacher_id": teacherID,
            "to_class": toClass,
          }));

      if (result.statusCode == 200 || result.statusCode == 201) {
        return true;
      }
      if (result.statusCode == 400) {
        PangeaControllers.toastMsg(msg: "Exchange has been sent already");
        return false;
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
        return false;
      }
    } catch (e) {
      PangeaControllers.toastMsg(
        msg: "Exception: Unable to create exchange",
      );

      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  static Future<bool> validateExchange({
    required String requestFromClass,
    required String requestToClass,
    required BuildContext context,
  }) async {
    try {
      PangeaServices._init();
      final result = await http.post(
        Uri.parse(ApiUrls.exchangeClassValidate),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${box.read("access")}",
        },
        body: jsonEncode({
          "request_from_class": requestFromClass,
          "request_to_class": requestToClass,
        }),
      );
      if (result.statusCode == 200 || result.statusCode == 201) {
        final data = jsonDecode(result.body);
        return data["is_exchange"];
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
        throw Exception("${result.statusCode}");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      throw Exception("Error: unable to create request");
    }
  }

  // static ExchangeAcceptRequest(
  //   String roomId,
  //   String teacherName,
  //   String exchangeId,
  // ) async {
  //   try {
  //     PangeaServices._init();
  //     var result = await http.post(Uri.parse(ApiUrls.exchangeAcceptRequest),
  //         headers: {
  //           "Content-Type": "application/json",
  //           "Authorization": "Bearer ${box.read("access")}",
  //         },
  //         body: jsonEncode({
  //           "pangea_class_room_id": roomId,
  //           "teacher_id": userId, //teacherName,
  //           "is_accepted": true,
  //           "exchange_pangea_id": exchangeId,
  //         }));
  //
  //     if (result.statusCode == 200 || result.statusCode == 201) {
  //       print("confirm value ${result.body}");
  //     } else {
  //       ApiException.exception(statusCode: result.statusCode, body: result.body);
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     Fluttertoast.showToast(
  //         msg: "Error: Unable to fetch user age", backgroundColor: Colors.red);
  //     throw Exception("Error: unable to confirm request");
  //   }
  // }

  static ExchangeRejectRequest(String roomId, String teacherName) async {
    try {
      PangeaServices._init();

      var result = await http.post(Uri.parse(ApiUrls.exchangeAcceptRequest),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${box.read("access")}",
          },
          body: jsonEncode({
            "pangea_class_room_id": roomId,
            "teacher_id": teacherName,
            "is_accepted": false,
          }));
      if (result.statusCode == 200 || result.statusCode == 201) {
        PangeaControllers.toastMsg(
            msg: "Mail sent successfully!", success: true);
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(
        msg: "Error: unable to reject request",
      );
      throw Exception("Error: unable to reject request");
    }
  }

  // static Future<FetchClassInfoModel> fetchExchangeClassInfo(BuildContext context, roomID) async {
  //   try {
  //     final String accessToken = box.read("access") ?? "";
  //     //final String roomID = VRouter.of(context).queryParameters["id"] ?? "";
  //     if (accessToken.isNotEmpty && roomID.isNotEmpty) {
  //       final value = await http.get(
  //         Uri.parse(ApiUrls.getClassDetails + roomID),
  //         headers: {
  //           "Content-Type": "application/json",
  //           "Authorization": "Bearer $accessToken",
  //         },
  //       );
  //       if (value.statusCode == 200 || value.statusCode == 201) {
  //         return FetchClassInfoModel.fromJson(jsonDecode(value.body));
  //       } else {
  //         ApiException.exception(statusCode: value.statusCode, body: value.body, context: context);
  //         throw Exception("${value.statusCode}");
  //       }
  //     } else {
  //       throw Exception("Access token or Room ID is empty");
  //     }
  //   } catch (e) {
  //     print("eero");
  //     print(e);
  //     throw Exception(e.toString());
  //   }
  // }

  ///-----------------------Exchange flow ---------------------------------------////

  ///fetch list of participants of the another class
  static Future<FetchClassParticipants> fetchParticipants(
      String classId) async {
    try {
      PangeaServices._init();
      final value = await http.get(
        Uri.parse(ApiUrls.classParticipants + classId),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${box.read("access")}",
        },
      );
      if (value.statusCode == 200) {
        return FetchClassParticipants.fromJson(jsonDecode(value.body));
      } else {
        ApiException.exception(statusCode: value.statusCode, body: value.body);
        throw Exception();
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  // ///save the list of Participants when we create exchange
  // static saveExchangeParticipantsInfo(String requestTeacher, String exchangePangeaId, bool isInvited, List<String> participants) async {
  //   try {
  //     var result = await http.post(
  //       Uri.parse(ApiUrls.exchangeParticipantsStore),
  //       headers: {
  //         "Authorization": "Bearer ${box.read("access")}",
  //         "Content-Type": "application/json",
  //       },
  //       body: jsonEncode({
  //         "request_teacher": requestTeacher,
  //         "exchange_pangea_id": exchangePangeaId,
  //         "is_invited": false,
  //         "participant_list": participants,
  //       }),
  //     );
  //     if (result.statusCode == 201 || result.statusCode == 200) {
  //       return true;
  //     } else {
  //       print("Api error: ${result.statusCode}");
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  ///save Exchange Class Info
  static Future saveExchangeRecord(
      String requestFromClass,
      String requestToClass,
      String requestTeacher,
      String requestToClassAuthor,
      String exchangePangeaId) async {
    try {
      PangeaServices._init();
      final result = await http.post(
        Uri.parse(ApiUrls.exchangeInfoStore),
        headers: {
          "Authorization": "Bearer ${box.read("access")}",
          "Content-Type": "application/json",
        },
        body: jsonEncode(
          {
            "request_from_class": requestFromClass,
            "request_to_class": requestToClass,
            "request_teacher": requestTeacher,
            "request_to_class_author": requestToClassAuthor,
            "exchange_pangea_id": exchangePangeaId,
          },
        ),
      );
      if (result.statusCode == 201 || result.statusCode == 200) {
        return true;
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
      }
    } catch (e) {
      print(e);
    }
  }

  ///fetch exchange class information
  static Future<ExchangeClassInfo> fetchExchangeClassInfo(
      String exchangePangeaId) async {
    try {
      PangeaServices._init();
      final result = await http.get(
        Uri.parse(ApiUrls.fetchExchangeInfo + exchangePangeaId),
        headers: {
          "Authorization": "Bearer ${box.read("access")}",
          "Content-Type": "application/json",
        },
      );
      if (result.statusCode == 201 || result.statusCode == 200) {
        return ExchangeClassInfo.fromJson(jsonDecode(result.body));
      } else {
        throw Exception("${result.statusCode}: ${result.body}");
      }
    } catch (e) {
      print(e);
      throw Exception("${"Error accured..."}");
    }
  }

  static reportUser({
    String? classRoomNamedata,
    String? classTeacherNamedata,
    String? reportedUserdata,
    String? classTeacherEmaildata,
    String? offensivedata,
    String? reasondata,
  }) async {
    try {
      PangeaServices._init();

      var result = await http.post(Uri.parse(ApiUrls.reportUser),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${box.read("access")}",
          },
          body: jsonEncode(ReportUser(
            classRoomName: classRoomNamedata,
            classTeacherName: classTeacherNamedata,
            reportedUser: reportedUserdata,
            classTeacherEmail: classTeacherEmaildata,
            offensive: offensivedata,
            reason: reasondata,
          ).toJson()));

      print(jsonEncode(ReportUser(
        classRoomName: classRoomNamedata,
        classTeacherName: classTeacherNamedata,
        reportedUser: reportedUserdata,
        classTeacherEmail: classTeacherEmaildata,
        offensive: offensivedata,
        reason: reasondata,
      ).toJson()));
      print("data:-" + result.body);

      if (result.statusCode == 200 || result.statusCode == 201) {
        PangeaControllers.toastMsg(
          msg: "report user Sent Successfully",
          success: true,
        );
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
        throw Exception(
            "Api Error ${result.statusCode}: Unable to report user");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(
        msg: "Error: Unable to fetch report user",
      );
      throw Exception("Error: Unable to fetch report user");
    }
  }
  // var classList = [].obs;
  // Future serachresult(
  //   text
  // ) async {
  //   try {
  //     PangeaServices._init();
  //
  //     var result = await http.get(Uri.parse(ApiUrls.class_search+"?q=${text}"),
  //         headers: {
  //           "Content-Type": "application/json",
  //           "Authorization": "Bearer ${box.read("access")}",
  //         },
  //     );
  //
  //
  //
  //     if (result.statusCode == 200 || result.statusCode == 201) {
  //       final data = searchViewModelFromJson(result.body);
  //       classList.value= data.results!;
  //       Fluttertoast.showToast(msg: "report user Sent Successfully", webBgColor: "#00ff00", backgroundColor: Colors.green);
  //     }
  //
  //     else {
  //       ApiException.exception(statusCode: result.statusCode, body: result.body);
  //       throw Exception("Api Error ${result.statusCode}: Unable to report user");
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     Fluttertoast.showToast(msg: "Error: Unable to fetch report user", webBgColor: "#ff0000", backgroundColor: Colors.red);
  //     throw Exception("Error: Unable to fetch report user");
  //   }
  // }

  ///-----------------------------------------------Harsh Code --------------------------------------
  static requestEmail(
    String? classRoomNamedata,
    String? classTeacherNamedata,
    String? reportedUserdata,
    String? classTeacherEmaildata,
    String? offensivedata,
    String? reasondata,
  ) async {
    try {
      PangeaServices._init();
      var result = await http.post(Uri.parse(ApiUrls.request_email),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${box.read("access")}",
          },
          body: jsonEncode(ReportUser(
            classRoomName: classRoomNamedata ?? "",
            classTeacherName: classTeacherNamedata ?? "",
            reportedUser: reportedUserdata ?? "",
            classTeacherEmail: classTeacherEmaildata ?? "",
            offensive: reasondata ?? "",
            reason: reasondata ?? "",
          ).toJson()));
      if (result.statusCode == 200 || result.statusCode == 201) {
        PangeaControllers.toastMsg(
          msg: "report user Sent Successfully",
          success: true,
        );
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
        throw Exception(
            "Api Error ${result.statusCode}: Unable to report user");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(
        msg: "Error: Unable to fetch report user",
      );

      throw Exception("Error: Unable to fetch report user");
    }
  }

  static Future<bool?> makeAdmin(String exchangeId, String teacherId) async {
    PangeaServices._init();
    try {
      final result = await http.post(
        Uri.parse(ApiUrls.makeAdminInExchange),
        headers: {
          "Authorization": "Bearer ${box.read("access")}",
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "exchange_room_id": exchangeId,
          "teacher_user_id": teacherId,
        }),
      );
      if (result.statusCode == 200) {
        return true;
      } else {
        ApiException.exception(
            statusCode: result.statusCode, body: result.body);
        throw Exception("Api Error ${result.statusCode}: Unable to send email");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(
        msg: "Error: Unable to make admin",
      );
      throw Exception("Error: Unable to make admin");
    }
  }

  static Future<ClassAnalyticsModel>? classAnalyticsFromRoomId(
      {required String roomId}) async {
    try {
      String url = ApiUrls.classAnalytics + '?room_id=' + roomId;
      print('Calling ' + url);

      final response =
          await http.get(Uri.parse(url), headers: ChoreoUtil.headers);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ClassAnalyticsModel.fromJson(
            jsonDecode(utf8.decode(response.bodyBytes).toString()));
      } else {
        ApiException.exception(
            statusCode: response.statusCode, body: response.body.toString());
        throw Exception(
            "Api Error ${response.statusCode}: Unable to fetch result");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      PangeaControllers.toastMsg(
        msg: "Error: Unable fetch result",
      );

      throw Exception("Error: Unable fetch result");
    }
  }

  static Future<ClassAnalyticsModel>? classAnalyticsFromClassId(
      {required String classId, required String targetLanguage}) async {
    try {
      String url = ApiUrls.classAnalytics +
          '?class_id=' +
          classId +
          '&target_language=' +
          targetLanguage;
      print('Calling ' + url);

      final response =
          await http.get(Uri.parse(url), headers: ChoreoUtil.headers);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ClassAnalyticsModel.fromJson(
            jsonDecode(utf8.decode(response.bodyBytes).toString()));
      } else {
        if (response.statusCode == 404) {
          throw Exception(
              "Api Error ${response.statusCode}: Unable to fetch result");
        }
        ApiException.exception(
            statusCode: response.statusCode, body: response.body.toString());
        throw Exception(
            "Api Error ${response.statusCode}: Unable to fetch result");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      // Fluttertoast.showToast(
      //     msg: "Error: Unable fetch result",
      //     webBgColor: "#ff0000",
      //     backgroundColor: Colors.red);
      throw Exception("Error: Unable fetch result");
    }
  }
}
