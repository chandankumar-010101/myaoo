import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../controllers/controllers.dart';

class ApiException {
  static exception({required int statusCode, required String body}) {
    switch (statusCode) {
      case 400:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Unknown error accrued",success: false);
        return;
      case 401:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception: Unauthorized access",success: false);

        return;
      case 403:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception: Don't have permissions!",success: false);
        return;
      case 500:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception: Internal Server Error",success: false);
        return;
      case 502:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception: Bad Gateway",success: false);


        return;
      case 503:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception: Service Unavailable",success: false);

        return;
      case 504:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception: Gateway timeout error!",success: false);

       return;
      default:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }

        PangeaControllers.toastMsg(msg:  "Unknown exception accrued!",success: false);
        return;
    }
  }
}
