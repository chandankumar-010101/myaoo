import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/model/class_detail_model.dart';

import '../../services/services.dart';

class ListOfClassModel {
  String activeClassId;
  FetchClassInfoModel classModel;
  ListOfClassModel({
    required this.activeClassId,
    required this.classModel,
  });
}

class ChatListControllerGet extends GetxController {
  final permissions = Rxn<Permissions>();
  RxList<String> listOfClasses = RxList<String>();
  RxList<ListOfClassModel> listOfClassModel =
      RxList<ListOfClassModel>();

  getClassPermissions(String? activeSpaceId, BuildContext context) async {
    if (activeSpaceId != null) {
      print("current spaceId $activeSpaceId");
      final bool exist = listOfClasses.contains(activeSpaceId);
      if (exist) {
       final List<ListOfClassModel> listOfClass =   listOfClassModel.where((classModel) => classModel.activeClassId ==activeSpaceId).toList();
       permissions.value =  listOfClass.first.classModel.permissions;
       print("permissions updated");
      } else {
        try{
          final FetchClassInfoModel result =
          await PangeaServices.fetchClassInfo(context, activeSpaceId);
          listOfClassModel.add(ListOfClassModel(activeClassId: activeSpaceId, classModel: result));
          print("space Id of class ${listOfClassModel.first.activeClassId}");
          permissions.value = result.permissions;
          log("One on One room (${activeSpaceId}): ${result.permissions.oneToOneChatClass}");
        }catch(e){
          permissions.value = initialPermissions();
          print("Error accurd");
        }

      }

      // log("Create Room  (${activeSpaceId}): ${result.permissions.isCreateRooms}");
      // log("Stories  (${activeSpaceId}): ${result.permissions.isCreateStories}");
    } else {
      permissions.value = initialPermissions();
    }
  }

  ///
  Permissions initialPermissions() {
    if (GetStorage().read("usertype") != null &&
        GetStorage().read("usertype") == 2) {
      return Permissions(
          pangeaClass: 0,
          isPublic: true,
          isOpenEnrollment: true,
          isOpenExchange: true,
          oneToOneChatClass: true,
          oneToOneChatExchange: true,
          isCreateRooms: true,
          isCreateRoomsExchange: true,
          isShareVideo: true,
          isSharePhoto: true,
          sendVoice: true,
          isShareFiles: true,
          isShareLocation: true,
          isCreateStories: true);
    } else {
      return Permissions(
          pangeaClass: 0,
          isPublic: false,
          isOpenEnrollment: false,
          isOpenExchange: false,
          oneToOneChatClass: false,
          oneToOneChatExchange: false,
          isCreateRooms: false,
          isCreateRoomsExchange: false,
          isShareVideo: false,
          isSharePhoto: false,
          sendVoice: false,
          isShareFiles: false,
          isShareLocation: false,
          isCreateStories: false);
    }
  }
}
