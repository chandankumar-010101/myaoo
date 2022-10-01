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
  var loading = false.obs;
  List loadData = [];

  var classList = <Result>[].obs;
  var searchList = <Result>[].obs;
  var pageNo = 1.obs;
  var box = GetStorage();
  var previous = false.obs;
  var next = false.obs;
  var firstTime = true.obs;
  var age = 0.obs;
  var searchTextController = TextEditingController().obs;

  ScrollController controller = ScrollController();



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
        PangeaServices.searchClass("");
      }
    });
  }
}
