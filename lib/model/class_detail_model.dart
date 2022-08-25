// To parse this JSON data, do
//
//     final classDetailUi = classDetailUiFromJson(jsonString);

import 'dart:convert';

ClassDetailModel classDetailModelFromJson(String str) =>

    ClassDetailModel.fromJson(json.decode(str));

String classDetailUiToJson(ClassDetailModel data) => json.encode(data.toJson());

class ClassDetailModel {
  ClassDetailModel({
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
    this.user,
    this.permissions,
    this.classAuthor,
    this.classAuthorId,
    this.rating,
    this.profilePic,
    this.totalStudent,
    this.flags,
  });

  int? id;
  String? className;
  String? city;
  String? country;
  String? dominantLanguage;
  String? targetLanguage;
  String? description;
  int? languageLevel;
  String? createdAt;
  String? pangeaClassRoomId;
  String? schoolName;
  int? user;
  Permissions? permissions;
  String? classAuthor;
  String? classAuthorId;
  int? rating;
  String? profilePic;
  int? totalStudent;
  List<Flag>? flags;

  factory ClassDetailModel.fromJson(Map<String, dynamic> json) => ClassDetailModel(
        id: json["id"] == null ? null : json["id"],
        className: json["class_name"] == null ? null : json["class_name"],
        city: json["city"] == null ? null : json["city"],
        country: json["country"] == null ? null : json["country"],
        dominantLanguage: json["dominant_language"] == null
            ? null
            : json["dominant_language"],
        targetLanguage:
            json["target_language"] == null ? null : json["target_language"],
        description: json["description"] == null ? null : json["description"],
        languageLevel:
            json["language_level"] == null ? null : json["language_level"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        pangeaClassRoomId: json["pangea_class_room_id"] == null
            ? null
            : json["pangea_class_room_id"],
        schoolName: json["school_name"] == null ? null : json["school_name"],
        user: json["user"] == null ? null : json["user"],
        permissions: json["permissions"] == null
            ? null
            : Permissions.fromJson(json["permissions"]),
        flags: List<Flag>.from(json["flags"].map((x) => Flag.fromJson(x))),
        classAuthor: json["class_author"] == null ? null : json["class_author"],
        classAuthorId:
            json["class_author_id"] == null ? null : json["class_author_id"],
        rating: json["rating"] == null ? null : json["rating"],
        profilePic: json["profile_pic"] == null ? null : json["profile_pic"],
        totalStudent:
            json["total_student"] == null ? null : json["total_student"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "class_name": className == null ? null : className,
        "city": city == null ? null : city,
        "country": country == null ? null : country,
        "dominant_language": dominantLanguage == null ? null : dominantLanguage,
        "target_language": targetLanguage == null ? null : targetLanguage,
        "description": description == null ? null : description,
        "language_level": languageLevel == null ? null : languageLevel,
        "created_at": createdAt == null ? null : "$createdAt",
        "pangea_class_room_id":
            pangeaClassRoomId == null ? null : pangeaClassRoomId,
        "school_name": schoolName == null ? null : schoolName,
        "user": user == null ? null : user,
        "permissions": permissions == null ? null : permissions!.toJson(),
        "class_author": classAuthor == null ? null : classAuthor,
        "class_author_id": classAuthorId == null ? null : classAuthorId,
        "rating": rating == null ? null : rating,
        "profile_pic": profilePic == null ? null : profilePic,
        "total_student": totalStudent == null ? null : totalStudent,
        "flags": List<dynamic>.from(flags!.map((x) => x.toJson())),
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
class Permissions {
  Permissions({
    this.pangeaClass,
    this.isPublic,
    this.isOpenEnrollment,
    this.isOpenExchange,
    this.oneToOneChatClass,
    this.oneToOneChatExchange,
    this.isCreateRooms,
    this.isCreateRoomsExchange,
    this.isShareVideo,
    this.isSharePhoto,
    this.isShareFiles,
    this.isShareLocation,
    this.isCreateStories,
  });

  int? pangeaClass;
  bool? isPublic;
  bool? isOpenEnrollment;
  bool? isOpenExchange;
  bool? oneToOneChatClass;
  bool? oneToOneChatExchange;
  bool? isCreateRooms;
  bool? isCreateRoomsExchange;
  bool? isShareVideo;
  bool? isSharePhoto;
  bool? isShareFiles;
  bool? isShareLocation;
  bool? isCreateStories;

  factory Permissions.fromJson(Map<String, dynamic> json) => Permissions(
        pangeaClass: json["pangea_class"] == null ? null : json["pangea_class"],
        isPublic: json["is_public"] == null ? null : json["is_public"],
        isOpenEnrollment: json["is_open_enrollment"] == null
            ? null
            : json["is_open_enrollment"],
        isOpenExchange:
            json["is_open_exchange"] == null ? null : json["is_open_exchange"],
        oneToOneChatClass: json["one_to_one_chat_class"] == null
            ? null
            : json["one_to_one_chat_class"],
        oneToOneChatExchange: json["one_to_one_chat_exchange"] == null
            ? null
            : json["one_to_one_chat_exchange"],
        isCreateRooms:
            json["is_create_rooms"] == null ? null : json["is_create_rooms"],
        isCreateRoomsExchange: json["is_create_rooms_exchange"] == null
            ? null
            : json["is_create_rooms_exchange"],
        isShareVideo:
            json["is_share_video"] == null ? null : json["is_share_video"],
        isSharePhoto:
            json["is_share_photo"] == null ? null : json["is_share_photo"],
        isShareFiles:
            json["is_share_files"] == null ? null : json["is_share_files"],
        isShareLocation: json["is_share_location"] == null
            ? null
            : json["is_share_location"],
        isCreateStories: json["is_create_stories"] == null
            ? null
            : json["is_create_stories"],
      );

  Map<String, dynamic> toJson() => {
        "pangea_class": pangeaClass == null ? null : pangeaClass,
        "is_public": isPublic == null ? null : isPublic,
        "is_open_enrollment":
            isOpenEnrollment == null ? null : isOpenEnrollment,
        "is_open_exchange": isOpenExchange == null ? null : isOpenExchange,
        "one_to_one_chat_class":
            oneToOneChatClass == null ? null : oneToOneChatClass,
        "one_to_one_chat_exchange":
            oneToOneChatExchange == null ? null : oneToOneChatExchange,
        "is_create_rooms": isCreateRooms == null ? null : isCreateRooms,
        "is_create_rooms_exchange":
            isCreateRoomsExchange == null ? null : isCreateRoomsExchange,
        "is_share_video": isShareVideo == null ? null : isShareVideo,
        "is_share_photo": isSharePhoto == null ? null : isSharePhoto,
        "is_share_files": isShareFiles == null ? null : isShareFiles,
        "is_share_location": isShareLocation == null ? null : isShareLocation,
        "is_create_stories": isCreateStories == null ? null : isCreateStories,
      };
}
