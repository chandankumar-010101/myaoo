class ExchangeClassInfo {
  String? fromClass;
  String? toClass;
  String? requestTeaacher;
  String? requestToClassAuthor;

  ExchangeClassInfo(
      {this.fromClass,
        this.toClass,
        this.requestTeaacher,
        this.requestToClassAuthor});

  ExchangeClassInfo.fromJson(Map<String, dynamic> json) {
    fromClass = json['from_class'];
    toClass = json['to_class'];
    requestTeaacher = json['request_teaacher'];
    requestToClassAuthor = json['request_to_class_author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from_class'] = this.fromClass;
    data['to_class'] = this.toClass;
    data['request_teaacher'] = this.requestTeaacher;
    data['request_to_class_author'] = this.requestToClassAuthor;
    return data;
  }
}