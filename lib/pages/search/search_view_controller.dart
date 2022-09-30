import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/services/services.dart';

import '../../model/search_view_model.dart';
import '../../controllers/controllers.dart';
import '../../utils/api_urls.dart';
import 'package:http/http.dart' as http;

class SearchViewController extends GetxController {
  var loading = true.obs;
  List loadData = [];
  var load1=true.obs;
  var classList = <Result>[].obs;
  var searchList = <Result>[].obs;
  var pageNo = 1.obs;
  var box = GetStorage();
  var previous = false.obs;
  var next = false.obs;
  var firstTime = true.obs;
  var age = 0.obs;

  ScrollController controller = ScrollController();

  Future getClasses() async {
    final String access = box.read("access") ?? "";
    if (access.isNotEmpty) {
      try {
          var value = await http.get(
            Uri.parse(ApiUrls.class_list +
                "?p=${pageNo.value.toString()}&page_size=10"),
            headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $access",
            },
          );
          if (value.statusCode == 200) {
            loading.value = false;
            final data = searchViewModelFromJson(value.body);
            data.next != null ? next.value = true : next.value = false;
            data.previous != null ? previous.value = true : previous.value =
            false;
            classList.value = data.results!;
            load1.value = true;
          }
          else if (value.statusCode == 401) {}
          else if (value.statusCode == 404) {}
          else {
            loading.value = false;
            if (kDebugMode) {
              print(value.statusCode);
            }
            PangeaControllers.toastMsg(msg: "Error ${value
                .statusCode}: Unable to fetch list of classes",success: false);
          }


      } catch (e) {
        if (kDebugMode) {
          print("Error accured while fetching class details");
          print(e);
        }
      }
    } else {

      PangeaControllers.toastMsg(msg: "Error: Access token not available",success: false);
      if (kDebugMode) {
        print("access token not found");
      }
    }
  }

  Timer? timerForDelay;

  Future getSearch(String text) async {
    if (timerForDelay != null) {
      print("deleted");
      timerForDelay!.cancel();
    }
    timerForDelay = Timer(const Duration(milliseconds:800), () async {
      if(text.length>2){
        PangeaServices.searchClass(text);
      }
    });

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
