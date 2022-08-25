class ChoreoInitCallModel {
  String? l1_lang;
  String? l2_lang;
  String? text;
  String? user_id;
  String? room_id;
  toJson() {
    return {
      'l1_lang': l1_lang,
      'l2_lang': l2_lang,
      'text': text,
      'user_id': user_id,
      'room_id': room_id
    };
  }
}
