import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    success?Fluttertoast.showToast(
        msg: msg,
        fontSize: 16.0,
        backgroundColor: const Color(0xFF5625BA),
        webBgColor: "#5625BA",
        textColor: Colors.white
       ):Fluttertoast.showToast(
        msg: msg,
        fontSize: 16.0,
        webBgColor: "#ff0000",
        backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }
}
