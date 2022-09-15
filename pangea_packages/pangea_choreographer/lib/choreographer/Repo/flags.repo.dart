import 'dart:convert';

import 'package:http/http.dart';
import 'package:pangea_choreographer/choreographer/network/requests.dart';
import 'package:pangea_choreographer/choreographer/network/urls.dart';

import '../models/flag_model.dart';

class FlagRepo {
  static Future<List<LanguageFlag>> fetchFlags() async {
    final Requests req = Requests(Urls.flagsBaseUrl, skipApiKey: true);
    final Response res = await req.get(url: Urls.flags);

    final decodedBody =
        jsonDecode(utf8.decode(res.bodyBytes).toString()) as List;
    List<LanguageFlag> langFlag =
        decodedBody.map((e) => LanguageFlag.fromJson(e)).toList();
    return langFlag;
  }
}
