class ChoreoResponseModel {
  GrammarData? grammarData;
  String? detectedLang;
  String? route;
  String? feedbackMessage;
  int? payload_id;
  ChoreoResponseModel(
      {this.grammarData, this.detectedLang, this.route, this.feedbackMessage});

  ChoreoResponseModel.fromJson(Map<String, dynamic> json) {
    grammarData = json['grammar_data'] != null
        ? new GrammarData.fromJson(json['grammar_data'])
        : null;
    detectedLang = json['detected_lang'];
    route = json['route'];
    feedbackMessage = json['feedback_message'];
    payload_id = json['payload_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.grammarData != null) {
      data['grammar_data'] = this.grammarData!.toJson();
    }
    data['detected_lang'] = this.detectedLang;
    data['route'] = this.route;
    data['feedback_message'] = this.feedbackMessage;
    return data;
  }
}

class GrammarData {
  String? text;
  List<Tokens>? tokens;
  double? slor;

  GrammarData({this.text, this.tokens, this.slor});

  GrammarData.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['tokens'] != null) {
      tokens = <Tokens>[];
      json['tokens'].forEach((v) {
        tokens!.add(new Tokens.fromJson(v));
      });
    }
    slor = json['slor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    if (this.tokens != null) {
      data['tokens'] = this.tokens!.map((v) => v.toJson()).toList();
    }
    data['slor'] = this.slor;
    return data;
  }
}

class Tokens {
  String? token;
  int? category;
  String? feedbackMessage;

  Tokens({this.token, this.category, this.feedbackMessage});

  Tokens.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    category = json['category'];
    feedbackMessage = json['feedback_message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['category'] = this.category;
    data['feedback_message'] = this.feedbackMessage;
    return data;
  }
}
