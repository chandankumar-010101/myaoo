class MessageServiceModel {
  List<int>? payload_ids;
  String? msg_id;
  String? message;
  String? user_id;
  String? room_id;
  String? class_id;

  toJson() {
    return {
      'payload_ids': payload_ids,
      'msg_id': msg_id,
      'message': message,
      'user_id': user_id,
      'room_id': room_id,
      'class_id': class_id
    };
  }
}
