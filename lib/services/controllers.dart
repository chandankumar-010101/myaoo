import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/services/services.dart';

import '../model/class_detail_model.dart';
import '../pages/chat_list/spaces_entry.dart';

class PangeaControllers extends GetxController {
  var throughClassProfile = false.obs;
  Rx<bool> a = false.obs;
  // var isPublic  =true.obs;
  // var isOpenEnrollment=true.obs;
  // var isOpenExchange =true.obs;
  // var oneToOneChatClass =true.obs;
  // var oneToOneChatExchange =true.obs;
  // var isCreateRooms =true.obs;
  // var isCreateRoomsExchange =true.obs;
  // var isShareVideo =true.obs;
  // var isSharePhoto =true.obs;
  // var isShareFiles =true.obs;
  // var isShareLocation =true.obs;
  // var isCreateStories =true.obs;

  var classInfoModel = Rxn<FetchClassInfoModel>();

  fetchClassInfo(BuildContext context, String spaceId) async {
    try {
      String acessToken = GetStorage().read("access");
      classInfoModel.value = await PangeaServices.fetchClassInfo(context, acessToken, spaceId);
      // print(data.permissions.toJson().toString());
      //  data.permissions.isCreateRooms !=null?isCreateRooms.value = data.permissions.isCreateRooms: isCreateRooms.value = false;
      //  data.permissions.oneToOneChatClass !=null?oneToOneChatClass.value = data.permissions.oneToOneChatClass: oneToOneChatClass.value = false;
      //  data.permissions.isPublic !=null?isPublic.value = data.permissions.isPublic: isPublic.value = false;
      //  data.permissions.isOpenEnrollment !=null?isOpenEnrollment.value = data.permissions.isOpenEnrollment: isOpenEnrollment.value =false;
      //  data.permissions.isShareVideo !=null?isShareVideo.value = data.permissions.isShareVideo: isShareVideo.value = false;
      //  data.permissions.isSharePhoto !=null?isSharePhoto.value = data.permissions.isSharePhoto: isSharePhoto.value = false;
      //  data.permissions.isShareFiles !=null?isShareFiles.value = data.permissions.isShareFiles: isShareFiles.value = false;
      //  data.permissions.isShareLocation !=null?isShareLocation.value = data.permissions.isShareLocation: isShareLocation.value = false;
      //  data.permissions.isCreateStories !=null?isCreateStories.value = data.permissions.isCreateStories: isShareFiles.value = false;
      //  data.permissions.isCreateRoomsExchange !=null?isCreateRoomsExchange.value = data.permissions.isCreateRoomsExchange: isCreateRoomsExchange.value = false;
      //
      //  data.permissions.isOpenExchange !=null?isOpenExchange.value = data.permissions.isOpenExchange: isOpenExchange.value = false;

    } catch (e) {
      print("Here");
    }
  }
}
