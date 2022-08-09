// To parse this JSON data, do
//
//     final searchViewModel = searchViewModelFromJson(jsonString);

import 'dart:convert';

SearchViewModel searchViewModelFromJson(String str) =>
    SearchViewModel.fromJson(json.decode(str));

String searchViewModelToJson(SearchViewModel data) =>
    json.encode(data.toJson());

class SearchViewModel {
  SearchViewModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  dynamic next;
  String? previous;
  List<Result>? results;

  factory SearchViewModel.fromJson(Map<String, dynamic> json) =>
      SearchViewModel(
        count: json["count"] == null ? null : json["count"],
        next: json["next"],
        previous: json["previous"] == null ? null : json["previous"],
        results: json["results"] == null
            ? null
            : List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count == null ? null : count,
        "next": next,
        "previous": previous == null ? null : previous,
        "results": results == null
            ? null
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  Result(
      {this.id,
      this.className,
      this.city,
      this.country,
      this.dominantLanguage,
      this.targetLanguage,
      this.description,
      this.languageLevel,
      this.createdAt,
      this.pangeaClassRoomId,
      this.flags,
      this.classAuthor,
      this.rating,
      this.profilePic});

  int? id;
  String? className;
  String? city;
  String? country;
  String? dominantLanguage;
  String? targetLanguage;
  String? description;
  int? languageLevel;
  DateTime? createdAt;
  String? pangeaClassRoomId;
  List<Flag>? flags;
  String? classAuthor;
  int? rating;
  dynamic profilePic;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
      id: json["id"] == null ? null : json["id"],
      className: json["class_name"] == null ? null : json["class_name"],
      city: json["city"] == null ? null : json["city"],
      country: json["country"] == null ? null : json["country"],
      dominantLanguage:
          json["dominant_language"] == null ? null : json["dominant_language"],
      targetLanguage:
          json["target_language"] == null ? null : json["target_language"],
      description: json["description"] == null ? null : json["description"],
      languageLevel:
          json["language_level"] == null ? null : json["language_level"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      pangeaClassRoomId: json["pangea_class_room_id"] == null
          ? null
          : json["pangea_class_room_id"],
      flags: json["flags"] == null
          ? null
          : List<Flag>.from(json["flags"].map((x) => Flag.fromJson(x))),
      classAuthor: json["class_author"] == null ? null : json["class_author"],
      rating: json["rating"] == null ? null : json["rating"],
      profilePic: json["profile_pic"] == null ? null : json["profile_pic"]);

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "class_name": className == null ? null : className,
        "city": city == null ? null : city,
        "country": country == null ? null : country,
        "dominant_language": dominantLanguage == null ? null : dominantLanguage,
        "target_language": targetLanguage == null ? null : targetLanguage,
        "description": description == null ? null : description,
        "language_level": languageLevel == null ? null : languageLevel,
        "created_at": createdAt == null ? null : createdAt,
        "pangea_class_room_id":
            pangeaClassRoomId == null ? null : pangeaClassRoomId,
        "flags": flags == null
            ? null
            : List<dynamic>.from(flags!.map((x) => x.toJson())),
        "class_author": classAuthor == null ? null : classAuthor,
        "rating": rating == null ? null : rating,
      };
}

class Flag {
  Flag({
    this.id,
    this.languageName,
    this.languageType,
    this.languageFlag,
  });

  int? id;
  String? languageName;
  int? languageType;
  String? languageFlag;

  factory Flag.fromJson(Map<String, dynamic> json) => Flag(
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
