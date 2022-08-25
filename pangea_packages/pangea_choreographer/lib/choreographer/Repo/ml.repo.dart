import '../models/message_service.model.dart';
import '../network/requests.dart';
import '../network/urls.dart';

class MlRepo {
  static Future<void> sendPayloads(MessageServiceModel serviceModel) async {
    final Requests req = Requests(Urls.baseUrl);

    await req.post(url: Urls.messageService, body: serviceModel.toJson());
  }
}
