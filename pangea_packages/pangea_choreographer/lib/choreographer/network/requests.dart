import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:http/http.dart';

class Requests {
  static String apiKey = '';
  final String baseUrl;
  final bool skipApiKey;
  Requests(this.baseUrl, {this.skipApiKey = false});

  Future<Response> post(
      {required String url, required Map<dynamic, dynamic> body}) async {
    print('calling' + _uriBuilder(url).toString());
    print(body);
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
    if (!skipApiKey) {
      headers.addAll({'api_key': apiKey});
    }
    Response response = await http.post(_uriBuilder(url),
        body: jsonEncode(body), headers: headers);
    if (response.statusCode != 200 && response.statusCode != 201) {
      try {
        print(jsonDecode(response.body).toString());
      } catch (err) {}
      throw HttpException(jsonDecode(response.body)['detail'].toString());
    }
    if (response.statusCode != 200 && response.statusCode != 201) {
      print(response.body);
    }

    return response;
  }

  Future<Response> get({required String url}) async {
    print('calling' + _uriBuilder(url).toString());
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
    if (!skipApiKey) {
      headers.addAll({'api_key': apiKey});
    }
    Response response = await http.get(_uriBuilder(url), headers: headers);
    if (response.statusCode != 200 && response.statusCode != 201) {
      try {
        print(jsonDecode(response.body).toString());
      } catch (err) {}
      throw HttpException(jsonDecode(response.body)['detail'].toString());
    }
    if (response.statusCode != 200 && response.statusCode != 201) {
      print(response.body);
    }

    return response;
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
