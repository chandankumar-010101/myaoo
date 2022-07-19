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
