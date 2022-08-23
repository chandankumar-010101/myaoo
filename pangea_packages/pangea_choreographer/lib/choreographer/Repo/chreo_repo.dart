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

class ChoreoRepo {
  static Future<ReceiveTextModel> firstCall(InitialTextModel initalText) async {
    final Requests req = Requests(Urls.baseUrl);

    final Response res =
        await req.post(url: Urls.firstStep, body: initalText.toJson());
    print(jsonDecode(res.body));
    ReceiveTextModel receiveText = new ReceiveTextModel()
      ..fromJson(jsonDecode(res.body));
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
    ReceiveTextModel receiveText = new ReceiveTextModel();
    if (decodedBody['continuances'].runtimeType == String) {
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
    ChoreoResponseModel receiveText =
        ChoreoResponseModel.fromJson(jsonDecode(res.body));

    return receiveText;
  }
}
