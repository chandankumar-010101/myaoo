class ReceiveTextModel {
  String? translation;
  List<Continuances>? continuances;
  bool isFinal = false;
  int? translationId;
  int? payload_id;
  ReceiveTextModel({this.translation, this.continuances, this.translationId});

  fromJson(Map<String, dynamic> json) {
    translation = json['translation'];
    if (json['continuances'] != null) {
      continuances = <Continuances>[];
      if (!isFinal) {
        json['continuances'].forEach((v) {
          continuances!.add(new Continuances.fromJson(v));
        });
      }
    }
    translationId = json['translation_id'];
    payload_id = json['payload_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['translation'] = this.translation;
    if (this.continuances != null) {
      data['continuances'] = this.continuances!.map((v) => v.toJson()).toList();
    }
    data['translation_id'] = this.translationId;
    data['payload_id'] = payload_id;
    return data;
  }
}

class Continuances {
  double? probability;
  int? level;
  String? description;
  String? text;
  int? index;
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
