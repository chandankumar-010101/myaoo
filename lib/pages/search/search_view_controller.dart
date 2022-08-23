import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../model/search_view_model.dart';
import '../../utils/api_helper.dart';
import '../../utils/api_urls.dart';

class SearchViewController extends GetxController {
  RxBool loading = true.obs;
  List loadData = [];
  var classList = <Result>[].obs;
  var pageNo = 1.obs;
  final box = GetStorage();
  RxBool previous = false.obs;
  RxBool next = false.obs;

  ScrollController controller = ScrollController();

  Future getClasses() async {
    log("URL is ${ApiUrls.class_list + "?p=${pageNo.value.toString()}&page_size=10"}");
    try {
      var response = await ApiFunctions().get(
        ApiUrls.class_list + "?p=${pageNo.value.toString()}&page_size=10",
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${box.read("access")}",
        },
      );

      log(" Response is ${response.statusCode}");
      if (response.statusCode == 200) {
        loading.value = false;
        List temp = response.body["results"];
        if (response.body["next"] != null) {
          next.value = true;
        } else {
          next.value = false;
        }
        if (response.body["previous"] != null) {
          previous.value = true;
        } else {
          previous.value = false;
        }
        log("Next Status is ${next.value} and Previous Status is ${previous.value}");
        // loadData.addAll(temp);
        classList.value = temp.map((e) => Result.fromJson(e)).toList();
        log("list is $loadData");

        // log("Page No. is ${pageNo.value}");
        // if (response.body["next"] != null) {
        //   log("Next :${response.body["next"]}");
        //   pageNo.value++;
        //   getClasses();
        // } else if (response.body["next"] == null) {
        //   log("Final List is $loadData");
        //   classList.value = loadData.map((e) => Result.fromJson(e)).toList();
        // }
      } else {
        loading.value = false;
        Get.rawSnackbar(
            message: "Something went wrong",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
    } catch (e) {
      log("Exception is $e");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   //write or call your logic
    //   //code will run when widget rendering complete
    //   addItems();
    // });
    super.onInit();
    // getClasses(pageNo.value);

    log("------------");
  }

  addItems() async {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.position.pixels) {
        pageNo.value++;
        log("Pagination Called with ${pageNo.value}");
        getClasses();
      }
    });
  }
}
