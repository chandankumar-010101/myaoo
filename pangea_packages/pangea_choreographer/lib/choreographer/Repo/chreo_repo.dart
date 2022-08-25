import 'dart:convert';

import '../models/choreo_init_call.model.dart';
import '../models/choreo_init_response.model.dart';
import '../models/initial_send_model.dart';
import '../models/receive_text_model.dart';
import '../models/subsequent_model.dart';
import '../network/requests.dart';
import '../network/urls.dart';
import 'package:http/http.dart';
import 'dart:math';

import 'dart:convert' show utf8;

class ChoreoRepo {
  static Future<ReceiveTextModel> firstCall(InitialTextModel initalText) async {
    final Requests req = Requests(Urls.baseUrl);

    final Response res =
        await req.post(url: Urls.firstStep, body: initalText.toJson());

    ReceiveTextModel receiveText = new ReceiveTextModel()
      ..fromJson(jsonDecode(utf8.decode(res.bodyBytes).toString()));
    for (int i = 0; i < receiveText.continuances!.length; i++) {
      print('${receiveText.continuances![i].text}');
      receiveText.continuances![i].index = i;
    }
    return receiveText;
  }

  static Future<ReceiveTextModel> subsequentCall(
      SubsequentTextModel subseqText) async {
    final Requests req = Requests(Urls.baseUrl);

    final Response res =
        await req.post(url: Urls.subseqStep, body: subseqText.toJson());
    print(res.body);

    // TODO
    final decodedBody = jsonDecode(utf8.decode(res.bodyBytes).toString());
    ReceiveTextModel receiveText = new ReceiveTextModel();
    if (decodedBody['continuances'].runtimeType == String) {
      receiveText.continuances = [];
      receiveText.isFinal = true;
    }

    receiveText.fromJson(decodedBody);

    if (!receiveText.isFinal) {
      for (int i = 0; i < receiveText.continuances!.length; i++) {
        receiveText.continuances![i].index = i;
      }
    }

    return receiveText;
  }

  static Future<ChoreoResponseModel> chereoInit(
      ChoreoInitCallModel initCall) async {
    final Requests req = Requests(Urls.baseUrl);

    final Response res =
        await req.post(url: Urls.choreo, body: initCall.toJson());

    print(jsonDecode(res.body));
    ChoreoResponseModel receiveText = ChoreoResponseModel.fromJson(
        jsonDecode(utf8.decode(res.bodyBytes).toString()));

    return receiveText;
  }
}
