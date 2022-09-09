import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/flag_model.dart';
import 'api_helper.dart';
import 'api_urls.dart';

class Services {
  static Future<List<LanguageFlag>> getFlags() async {
    List<LanguageFlag> countryFlag = [];
    var response = await ApiFunctions().get(ApiUrls.get_all_flags);
    log("response is ${response.body}");
    if (response != null) {
      // loading.value = false;
      List temp = response.body;
      log("Flag Response is $temp");
      countryFlag = temp.map((value) => LanguageFlag.fromJson(value)).toList();
    } else {
      Fluttertoast.showToast(msg: "Something went wrong", fontSize: 16.0, webBgColor: Colors.green, backgroundColor: Colors.green);
    }
    return countryFlag;
  }

  static Future<List<LanguageFlag>> getFlags2() async {
    List<LanguageFlag> countryFlag = [];
    List<LanguageFlag> flags = [];
    var response = await ApiFunctions().get(ApiUrls.get_all_flags);
    log("response is ${response.body}");
    if (response != null) {
      // loading.value = false;
      List temp = response.body;
      log("Flag Response is $temp");
      countryFlag = temp.map((value) => LanguageFlag.fromJson(value)).toList();
      countryFlag.forEach((element) {
        if (element.languageType == 2) {
          print(element.languageName);
          flags.add(element);
        }
      });
    } else {
      Fluttertoast.showToast(msg: "Something went wrong", fontSize: 16.0, webBgColor: Colors.red, backgroundColor: Colors.red);
    }
    return flags;
  }
}
