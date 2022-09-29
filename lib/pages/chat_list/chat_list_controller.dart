import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/model/class_detail_model.dart';
import 'package:pangeachat/pages/chat_list/spaces_entry.dart';
import 'package:pangeachat/services/controllers.dart';

import '../../services/services.dart';
import '../../widgets/matrix.dart';
import 'package:matrix/matrix.dart';


class ListOfClassModel {
  String activeClassId;
  FetchClassInfoModel classModel;
  ListOfClassModel({
    required this.activeClassId,
    required this.classModel,
  });
}

class ChatListControllerGet extends GetxController {

  //-------------------------------variables-----------------------------------//
  ///class permissions
  final permissions = Rxn<Permissions>();
  RxList<ListOfClassModel> listOfClassModel = RxList<ListOfClassModel>();
  final int userType =  GetStorage().read("usertype")??0;
  RxList<User> participants = RxList<User>();
  RxList<User> participantsList = RxList<User>();


  //-------------------------------Functions-----------------------------------//
  ///fetch class permissions and store them into List of class Model.
  getClassPermissions(String? activeSpaceId, BuildContext context) async {
    if (activeSpaceId != null) {
      ///check activeSpaceId exist in list of class modal or not
      final List<ListOfClassModel> listOfClass = listOfClassModel
          .where((classModel) => classModel.activeClassId == activeSpaceId)
          .toList();

      if (listOfClass.isNotEmpty) {

        permissions.value = listOfClass.first.classModel.permissions;
      } else {
        try{

          final FetchClassInfoModel result = await PangeaServices.fetchClassInfo(context, activeSpaceId);
          listOfClassModel.add(ListOfClassModel(activeClassId: activeSpaceId, classModel: result));
          permissions.value = result.permissions;
        }catch(e){
          PangeaControllers.toastMsg(msg: "Unable to fetch class Info");
          initialPermissions();
        }
      }
    } else {
      initialPermissions();
    }
  }

  /// assign initial class permissions whenever we call it.
  initialPermissions() {

    if ( userType == 2) {
      permissions.value = Permissions(
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
    }
    else {

      permissions.value = Permissions(
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

  ///fetch List of participants
  getpeople(BuildContext context, SpacesEntry space) async {
    participants.clear();
    if (space.getSpace(context) != null) {
      participants.value = await space.getSpace(context)!.requestParticipants();
      participants.removeWhere((element) => element.id == Matrix.of(context).client.userID);
    }
    else {
      final List<dynamic> alreadyExists = [];
      final List<User> finalUsers = [];

      final rooms = Matrix.of(context).client.rooms;

      for (var room in rooms) {
        participantsList.addAll(await room.requestParticipants());
        for (var user in participantsList) {
          if (!participantsList.contains(user.stateKey) && user.stateKey != null &&!alreadyExists.contains(user.stateKey)) {
            Map<String, dynamic> ele = {};
            ele.addAll(user.toJson());
            finalUsers.add(user);
            alreadyExists.add(user.stateKey);
          }
        }
      }
      finalUsers.removeWhere((element) => element.id == Matrix.of(context).client.userID);
      participants.value = finalUsers;
    }
  }
}
