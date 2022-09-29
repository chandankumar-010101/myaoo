import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'controllers.dart';

class ApiException {
  static exception({required int statusCode, required String body}) {
    switch (statusCode) {
      case 400:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception $statusCode: ${jsonDecode(body)["error"]}",success: false);

        return;
      case 401:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception $statusCode: Unauthorized access",success: false);

        return;
      case 403:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception $statusCode: Don't have permissions!",success: false);
        return;
      case 500:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception $statusCode: Internal Server Error",success: false);
        return;
      case 502:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception $statusCode: Bad Gateway",success: false);


        return;
      case 503:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception $statusCode: Service Unavailable",success: false);

        return;
      case 504:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        PangeaControllers.toastMsg(msg: "Exception $statusCode: Gateway timeout error!",success: false);

       return;
      default:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }

        PangeaControllers.toastMsg(msg:  "Exception $statusCode: Unknown exception accrued!",success: false);
        return;
    }
  }
}
