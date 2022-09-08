// To parse this JSON data, do
//
//     final languageFlag = languageFlagFromJson(jsonString);

import 'dart:convert';

List<LanguageFlag> languageFlagFromJson(String str) => List<LanguageFlag>.from(
    json.decode(str).map((x) => LanguageFlag.fromJson(x)));

String languageFlagToJson(List<LanguageFlag> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LanguageFlag {
  LanguageFlag({
    this.id,
    this.languageName,
    this.languageType,
    this.languageFlag,
  });

  int? id;
  String? languageName;
  int? languageType;
  String? languageFlag;

  factory LanguageFlag.fromJson(Map<String, dynamic> json) => LanguageFlag(
        id: json["id"] == null ? null : json["id"],
        languageName:
            json["language_name"] == null ? null : json["language_name"],
        languageType:
            json["language_type"] == null ? null : json["language_type"],
        languageFlag:
            json["language_flag"] == null ? null : json["language_flag"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "language_name": languageName == null ? null : languageName,
        "language_type": languageType == null ? null : languageType,
        "language_flag": languageFlag == null ? null : languageFlag,
      };
}
