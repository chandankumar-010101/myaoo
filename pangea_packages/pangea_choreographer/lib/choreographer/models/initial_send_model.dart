class InitialTextModel {
  String? text;
  String? src_lang;
  String? tgt_lang;
  String? user_id;
  String? room_id;
  String? class_id;
  toJson() {
    return {
      'text': text,
      'src_lang': src_lang,
      'tgt_lang': tgt_lang,
      'user_id': user_id,
      'room_id': room_id,
      'class_id': class_id
    };
  }

  fromJson(json) {
    text = json['text'];
    src_lang = json['src_lang'];
    tgt_lang = json['tgt_lang'];
    user_id = json['user_id'];
    room_id = json['room_id'];
    class_id = json['class_id'];
  }
}
