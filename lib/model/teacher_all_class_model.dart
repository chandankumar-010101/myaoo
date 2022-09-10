// To parse this JSON data, do
//
//     final teacherAllClassModel = teacherAllClassModelFromJson(jsonString);

import 'dart:convert';

TeacherAllClassModel teacherAllClassModelFromJson(String str) => TeacherAllClassModel.fromJson(json.decode(str));

String teacherAllClassModelToJson(TeacherAllClassModel data) => json.encode(data.toJson());

class TeacherAllClassModel {
  TeacherAllClassModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  dynamic next;
  dynamic previous;
  List<Result>? results;

  factory TeacherAllClassModel.fromJson(Map<String, dynamic> json) => TeacherAllClassModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results!.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.id,
    this.className,
    this.city,
    this.country,
    this.dominantLanguage,
    this.targetLanguage,
    this.description,
    this.languageLevel,
    this.createdAt,
    this.pangeaClassRoomId,
    this.schoolName,
    this.classCode,
    this.flags,
    this.classAuthor,
    this.classAuthorId,
    this.rating,
    this.profilePic,
    this.totalStudent,
  });

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
  String? schoolName;
  String? classCode;
  List<Flag>? flags;
  String? classAuthor;
  String? classAuthorId;
  int? rating;
  dynamic profilePic;
  int? totalStudent;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    className: json["class_name"],
    city: json["city"],
    country: json["country"],
    dominantLanguage: json["dominant_language"],
    targetLanguage: json["target_language"],
    description: json["description"],
    languageLevel: json["language_level"],
    createdAt: DateTime.parse(json["created_at"]),
    pangeaClassRoomId: json["pangea_class_room_id"],
    schoolName: json["school_name"],
    classCode: json["class_code"],
    flags: List<Flag>.from(json["flags"].map((x) => Flag.fromJson(x))),
    classAuthor: json["class_author"],
    classAuthorId: json["class_author_id"],
    rating: json["rating"],
    profilePic: json["profile_pic"],
    totalStudent: json["total_student"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "class_name": className,
    "city": city,
    "country": country,
    "dominant_language": dominantLanguage,
    "target_language": targetLanguage,
    "description": description,
    "language_level": languageLevel,
    "created_at": "${createdAt?.year.toString().padLeft(4, '0')}-${createdAt?.month.toString().padLeft(2, '0')}-${createdAt?.day.toString().padLeft(2, '0')}",
    "pangea_class_room_id": pangeaClassRoomId,
    "school_name": schoolName,
    "class_code": classCode,
    "flags": List<dynamic>.from(flags!.map((x) => x.toJson())),
    "class_author": classAuthor,
    "class_author_id": classAuthorId,
    "rating": rating,
    "profile_pic": profilePic,
    "total_student": totalStudent,
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
    id: json["id"],
    languageName: json["language_name"],
    languageType: json["language_type"],
    languageFlag: json["language_flag"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "language_name": languageName,
    "language_type": languageType,
    "language_flag": languageFlag,
  };
}
