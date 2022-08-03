import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:http/http.dart';

class Requests {
  final String baseUrl;
  Requests(this.baseUrl);

  Future<Response> post(
      {required String url, required Map<dynamic, dynamic> body}) async {
    try {
      print('calling' + _uriBuilder(url).toString());
      print(body);

      Response response = await http.post(_uriBuilder(url),
          body: jsonEncode(body),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
          });

      return response;
    } on HttpException catch (err) {
      print('HttpException');
      print(err.message);
      throw HttpException(err.message);
    } catch (err) {
      print('Exception in POST section');
      print(err.toString());
      throw HttpException(err.toString());
    }
  }

  Uri _uriBuilder(url) => Uri.parse(baseUrl + url);

  Map<dynamic, dynamic> _parseEachToString(Map<dynamic, dynamic> json) {
    for (String key in json.keys) {
      if (json[key].runtimeType != String) {
        if (json[key].runtimeType == List) {
          json[key].forEach((item) {
            _parseEachToString(json[key]);
          });
        }
        if (json[key].runtimeType == Map) {
          _parseEachToString(json[key]);
        }
        if (json[key].runtimeType == int || json[key].runtimeType == double) {
          json[key] = json[key].toString();
        }
      }
    }

    return json;
  }
}
