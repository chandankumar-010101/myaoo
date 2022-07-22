import 'dart:convert';

import 'package:pangeachat/pages/chat/IT_bar/models/initial_send_model.dart';
import 'package:pangeachat/pages/chat/IT_bar/models/receive_text_model.dart';
import 'package:pangeachat/pages/chat/IT_bar/models/subsequent_model.dart';
import 'package:universal_html/html.dart';

import '../network/requests.dart';
import '../network/urls.dart';
import 'package:http/http.dart';
import 'dart:math';

class ItRepo {
  static Future<ReceiveTextModel> firstCall(InitialTextModel initalText) async {
    final Requests req = Requests(Urls.baseUrl);

    final Response res =
        await req.post(url: Urls.firstStep, body: initalText.toJson());

    ReceiveTextModel receiveText =
        ReceiveTextModel.fromJson(jsonDecode(res.body));
    for (int i = 0; i < receiveText.continuances!.length; i++) {
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
    final decodedBody = jsonDecode(res.body);
    for (int i = 0; i < decodedBody['continuances'].length; i++) {
      if (decodedBody['continuances'][i].runtimeType == String) {
        decodedBody['continuances'][i] = {
          "probability": Random().nextDouble(),
          "level": 1,
          "description": "Unlikely",
          "text": decodedBody['continuances'][i]
        };
      }
    }

    ReceiveTextModel receiveText = ReceiveTextModel.fromJson(decodedBody);

    for (int i = 0; i < receiveText.continuances!.length; i++) {
      receiveText.continuances![i].index = i;
    }
    return receiveText;
  }
}
