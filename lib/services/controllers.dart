import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/services/services.dart';

import '../model/class_detail_model.dart';
import '../pages/chat_list/spaces_entry.dart';

class PangeaControllers extends GetxController {
  var throughClassProfile = false.obs;
  Rx<bool> a = false.obs;

  var classInfoModel = Rxn<FetchClassInfoModel>();

  fetchClassInfo(BuildContext context, String spaceId) async {
    try {
      String acessToken = GetStorage().read("access");
      classInfoModel.value =
          await PangeaServices.fetchClassInfo(context,  spaceId);

    } catch (e) {
      print("Here");
    }
  }

  ///show toast message
  static toastMsg({bool success = false, String msg = ""}){

    success?Get.snackbar("Success", msg,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color(0xFF5625BA),
      colorText: Colors.white,
      margin:  const EdgeInsets.all(10),
      duration: const Duration(seconds: 2),
    ):Get.snackbar("Error", msg,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      margin:  const EdgeInsets.all(10),
      duration: const Duration(seconds: 2),
    );
    // Fluttertoast.showToast(
    //     msg: msg,
    //     fontSize: 16.0,
    //     webBgColor: "#ff0000",
    //     backgroundColor: Colors.red,
    //   textColor: Colors.white,
    // );
  }
}
