class InitialSendTextModel {
  String? text;
  String? src_lang;
  String? tgt_lang;
  int? user_id;

  toJson() {
    return {
      'text': text,
      'src_lang': src_lang,
      'tgt_lang': tgt_lang,
      'user_id': user_id
    };
  }

  fromJson(json) {
    text = json['text'];
    src_lang = json['src_lang'];
    tgt_lang = json['tgt_lang'];
    user_id = json['user_id'];
  }
}

class SubsequentTextModel {
  int? translation_id;
  int? next_word_index;
  int? user_id;

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

class ReceiveTextModel {
  String? translation;
  List<Continuances>? continuances;
  int? translationId;

  ReceiveTextModel({this.translation, this.continuances, this.translationId});

  ReceiveTextModel.fromJson(Map<String, dynamic> json) {
    translation = json['translation'];
    if (json['continuances'] != null) {
      continuances = <Continuances>[];
      json['continuances'].forEach((v) {
        continuances!.add(new Continuances.fromJson(v));
      });
    }
    translationId = json['translation_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['translation'] = this.translation;
    if (this.continuances != null) {
      data['continuances'] = this.continuances!.map((v) => v.toJson()).toList();
    }
    data['translation_id'] = this.translationId;
    return data;
  }
}

class Continuances {
  double? probability;
  int? level;
  String? description;
  String? text;

  Continuances({this.probability, this.level, this.description, this.text});

  Continuances.fromJson(Map<String, dynamic> json) {
    probability = json['probability'];
    level = json['level'];
    description = json['description'];
    text = json['text'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['probability'] = this.probability;
    data['level'] = this.level;
    data['description'] = this.description;
    data['text'] = this.text;
    return data;
  }
}
