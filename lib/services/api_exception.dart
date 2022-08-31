
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApiException{

  static exception({required int statusCode, required String body, required BuildContext context}) {
    switch (statusCode) {
      case 400:
        if (kDebugMode) {
          print(body);
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode: Bad request")));
        return;
      case 401:
        if (kDebugMode) {
          print(body);
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode: Unauthorized access")));
        return;
      case 403:
        if (kDebugMode) {
          print(body);
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode: Don't have permissions!")));
        return;
      case 500:
        if (kDebugMode) {
          print(body);
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode: Internal Server Error")));
        return;
      case 502:
        if (kDebugMode) {
          print(body);
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode: Bad Gateway")));
        return;
      case 503:
        if (kDebugMode) {
          print(body);
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode: Service Unavailable")));
        return;
      case 504:
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode: Gateway timeout error!")));
        return;
      default:
        if (kDebugMode) {
          print(body);
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("$statusCode:")));
        return;
        }

  }
}