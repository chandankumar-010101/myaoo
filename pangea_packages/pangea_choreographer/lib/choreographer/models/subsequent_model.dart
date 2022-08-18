class SubsequentTextModel {
  int? translation_id;
  int? next_word_index;
  String? user_id;

  toJson() {
    return {
      'translation_id': translation_id,
      'next_word_index': next_word_index,
      'user_id': user_id
    };
  }

  fromJson(json) {
    translation_id = json['translation_id'];
    next_word_index = json['next_word_index'];
    user_id = json['user_id'];
  }
}
