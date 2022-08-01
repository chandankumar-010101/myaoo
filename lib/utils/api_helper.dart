import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiFunctions extends GetConnect {
  Future<Map<String, dynamic>?> postApi({
    required dynamic body,
    required String url,
  }) async {
    Map<String, dynamic>? responseBody;

    try {
      final response = await post(url, body,
          headers: {
            "Authorization":

            "Bearer sk_test_51KlnbkGmtyen5sA4423BOI6Ph0mVxv4NMB3EHYmkShaR9K50tgUxE8PeaGFWqq5F8uA8KUDije2HlmRlYQJHU72n00hbReRpvw",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          contentType: "application/x-www-form-urlencoded");

      log("message ${response.body}");
      if (response.statusCode == 200) {
        responseBody = json.decode(response.bodyString!);
      } else if (response.statusCode == 401) {
        responseBody = json.decode(response.bodyString!);
        Get.rawSnackbar(
            message: "$responseBody",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      } else if (response.statusCode == 400) {
        responseBody = json.decode(response.bodyString!);
        Get.rawSnackbar(
            message: "$responseBody",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
    } on SocketException {
      Get.rawSnackbar(
          message: "Internet Exception",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } catch (e) {
      Get.rawSnackbar(
          message: " $e Error Occured",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } finally {}
    return responseBody;
  }

  Future<Map<String, dynamic>?> postMethod({
    required dynamic body,
    required String url,
  }) async {
    log("Body is $body and Url is $url");
    Map<String, dynamic>? responseBody;

    try {
      final response = await post(
        url,
        body,
      );

      log("message ${response.body}");
      if (response.statusCode == 200) {
        responseBody = json.decode(response.bodyString!);
      } else if (response.statusCode == 401) {
        responseBody = json.decode(response.bodyString!);
        Get.rawSnackbar(
            message: "$responseBody",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      } else if (response.statusCode == 400) {
        responseBody = json.decode(response.bodyString!);
        Get.rawSnackbar(
            message: responseBody!["message"],
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
    } on SocketException {
      Get.rawSnackbar(
          message: "Internet Exception",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } catch (e) {
      Get.rawSnackbar(
          message: " $e Error Occured",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } finally {}
    return responseBody;
  }

  Future<Map<String, dynamic>?> getMethod({required String url, token}) async {
    Map<String, dynamic>? responseBody;

    try {
      final response = await get(url);

      log("message ${response.statusCode}");
      if (response.statusCode == 200) {
        log("1 ${response.bodyString}");
        responseBody = response.body;
        log("Hellow $responseBody");
      } else if (response.statusCode == 401) {
        // responseBody = json.decode(response.bodyString!);
        log("2");
        Get.rawSnackbar(
            message: "$responseBody",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      } else if (response.statusCode == 400) {
        // responseBody = json.decode(response.bodyString!);
        log("3");
        Get.rawSnackbar(
            message: responseBody!["message"],
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
    } on SocketException {
      Get.rawSnackbar(
          message: "Internet Exception",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } catch (e) {
      Get.rawSnackbar(
          message: " $e Error Occured",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } finally {}
    log("Response $responseBody");
    return responseBody;
  }

  Future<Map<String, dynamic>?> postHeaderMethod(
      {required String url, body, token}) async {
    Map<String, dynamic>? responseBody;

    try {
      var response = await post(
        url,
        body,
        headers: {"Authorization": "Bearer $token"},
      );

      log("Status Code is  ${response.statusCode} and ${response.bodyString} ");
      if (response.statusCode == 200) {
        responseBody = json.decode(response.bodyString!);
      } else if (response.statusCode == 401) {
        responseBody = json.decode(response.bodyString!);
        Get.rawSnackbar(
            message: "$responseBody",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      } else if (response.statusCode == 400) {
        responseBody = json.decode(response.bodyString!);
        Get.rawSnackbar(
            message: responseBody!["message"],
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
    } on SocketException {
      Get.rawSnackbar(
          message: "Internet Exception",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } catch (e) {
      log("Catch" + e.toString());
      Get.rawSnackbar(
          message: " $e Error Occured",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } finally {}
    return responseBody;
  }

  Future<Map<String, dynamic>?> getParameterMethod(
      {required String url, token}) async {
    Map<String, dynamic>? responseBody;

    try {
      final response = await get(url);

      log("Response of Url: $url is  ${response.body}");
      if (response.statusCode == 200) {
        log("200 and Url is $url");
        responseBody = json.decode(response.bodyString!);
      } else if (response.statusCode == 401) {
        responseBody = json.decode(response.bodyString!);
        log("401 Error  and Url is $url");
        Get.rawSnackbar(
            message: "$responseBody",
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      } else if (response.statusCode == 400) {
        log("400 Error and Url is $url");
        responseBody = json.decode(response.bodyString!);
        Get.rawSnackbar(
            message: responseBody!["message"],
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED,
            backgroundColor: Colors.red);
      }
    } on SocketException {
      Get.rawSnackbar(
          message: "Internet Exception",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } catch (e) {
      log("Catch Error $e and Url is $url");
      Get.rawSnackbar(
          message: " $e Error Occured",
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
          backgroundColor: Colors.red);
    } finally {}
    return responseBody;
  }

}

