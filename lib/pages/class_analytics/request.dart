import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../../model/class_analytics_model.dart';
import '../../services/api_exception.dart';
import '../../utils/api_urls.dart';
import '../../utils/choreo_util.dart';

class MyRequest {
  static Future<ClassAnalyticsModel>? classAnalyticsFromRoomId(
      {required String roomId}) async {
    try {
      String url = ApiUrls.classAnalytics + '?room_id=' + roomId;
      print('Calling ' + url);

      final response =
          await http.get(Uri.parse(url), headers: ChoreoUtil.headers);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ClassAnalyticsModel.fromJson(jsonDecode(response.body));
      } else {
        ApiException.exception(
            statusCode: response.statusCode, body: response.body.toString());
        throw Exception(
            "Api Error ${response.statusCode}: Unable to fetch result");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      Fluttertoast.showToast(
          msg: "Error: Unable fetch result",
          webBgColor: "#ff0000",
          backgroundColor: Colors.red);
      throw Exception("Error: Unable fetch result");
    }
  }
}
