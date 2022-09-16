import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../model/search_view_model.dart';
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
            Fluttertoast.showToast(
                msg: "Error ${value
                    .statusCode}: Unable to fetch list of classes",
                webBgColor: "#ff0000",
                backgroundColor: Colors.red);
          }


      } catch (e) {
        if (kDebugMode) {
          print("Error accured while fetching class details");
          print(e);
        }
      }
    } else {
      Fluttertoast.showToast(msg: "Error: Access token not available", webBgColor: "#ff0000", backgroundColor: Colors.red);
      if (kDebugMode) {
        print("access token not found");
      }
    }
  }

  Future getSearch(text) async {
    final String access = box.read("access") ?? "";
    if (access.isNotEmpty) {
      try {


        var result = await http.get(Uri.parse(ApiUrls.class_search+"?q=${text}"),
            headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer ${box.read("access")}",
            },
          );

          if (result.statusCode == 200 || result.statusCode == 201) {
            loading.value = false;
            final data = searchViewModelFromJson(result.body);
            searchList.value = data.results!;
          }
          else{

          }
      } catch (e) {
        if (kDebugMode) {
          print("Error accured while fetching class details");
          print(e);
        }
      }
    } else {
      Fluttertoast.showToast(msg: "Error: Access token not available", webBgColor: "#ff0000", backgroundColor: Colors.red);
      if (kDebugMode) {
        print("access token not found");
      }
    }
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
