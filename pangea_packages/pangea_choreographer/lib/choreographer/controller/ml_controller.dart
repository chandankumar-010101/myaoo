import 'package:pangea_choreographer/choreographer/controller/choreo_controller.dart';
import 'package:pangea_choreographer/choreographer/models/message_service.model.dart';

import '../Repo/ml.repo.dart';

class MlController {
  final ChoreoController controller;
  MlController(this.controller);

  sendPayloads(String message, String message_id) async {
    MessageServiceModel serviceModel = MessageServiceModel()
      ..class_id = controller.state!.classId
      ..room_id = controller.state!.roomId
      ..message = message.toString()
      ..msg_id = message_id.toString()
      ..payload_ids = controller.state!.payLoadIds
      ..user_id = controller.state!.userId;
    try {
      MlRepo.sendPayloads(serviceModel);
    } catch (err) {
      print(err.toString() + ' in sendPayloads');
    }
  }
}
