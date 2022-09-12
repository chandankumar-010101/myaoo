import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ApiException {
  static exception({required int statusCode, required String body}) {
    switch (statusCode) {
      case 400:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Bad request", backgroundColor: Colors.red, webBgColor: Colors.red);
        return;
      case 401:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Unauthorized access", backgroundColor: Colors.red, webBgColor: Colors.red);
        return;
      case 403:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Don't have permissions!", backgroundColor: Colors.red, webBgColor: Colors.red);
        return;
      case 500:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Internal Server Error", backgroundColor: Colors.red);
        return;
      case 502:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Bad Gateway",backgroundColor: Colors.red, webBgColor: Colors.red);

        return;
      case 503:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Service Unavailable", backgroundColor: Colors.red, webBgColor: Colors.red);

        return;
      case 504:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Gateway timeout error!", backgroundColor: Colors.red, webBgColor: Colors.red);
        return;
      default:
        if (kDebugMode) {
          print(body);
          print(statusCode);
        }
        Fluttertoast.showToast(msg: "Exception $statusCode: Unknown exception accrued!", backgroundColor: Colors.red, webBgColor: Colors.red);
        return;
    }
  }
}
