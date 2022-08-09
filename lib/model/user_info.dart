// To parse this JSON data, do
//
//     final userInfo = userInfoFromJson(jsonString);

import 'dart:convert';

UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

String userInfoToJson(UserInfo data) => json.encode(data.toJson());

class UserInfo {
  UserInfo({
    this.access,
    this.refresh,
    this.profile,
  });

  String? access;
  String? refresh;
  Profile? profile;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    access: json["access"] == null ? null : json["access"],
    refresh: json["refresh"] == null ? null : json["refresh"],
    profile: json["profile"] == null ? null : Profile.fromJson(json["profile"]),
  );

  Map<String, dynamic> toJson() => {
    "access": access == null ? null : access,
    "refresh": refresh == null ? null : refresh,
    "profile": profile == null ? null : profile?.toJson(),
  };

  
}

class Profile {
  Profile({

    this.user,
    this.fullName,
    this.isVerified,
    this.createdAt,
    this.updatedAt,
    this.userType,
    this.pangeaUserId,
    this.dateOfBirth,
    this.sourceLanguage,
    this.targetLanguage,
  });

  int? user;
  String? fullName;
  bool? isVerified;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? userType;
  String? pangeaUserId;
  dynamic? dateOfBirth;
  String? sourceLanguage;
  String? targetLanguage;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    user: json["user"] == null ? null : json["user"],
    fullName: json["full_name"] == null ? null : json["full_name"],
    isVerified: json["is_verified"] == null ? null : json["is_verified"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    userType: json["user_type"] == null ? null : json["user_type"],
    pangeaUserId: json["pangea_user_id"] == null ? null : json["pangea_user_id"],
    dateOfBirth: json["date_of_birth"],
    sourceLanguage: json["source_language"] == null ? null : json["source_language"],
    targetLanguage: json["target_language"] == null ? null : json["target_language"],
  );

  Map<String, dynamic> toJson() => {
    "user": user == null ? null : user,
    "full_name": fullName == null ? null : fullName,
    "is_verified": isVerified == null ? null : isVerified,
    "created_at": createdAt == null ? null : "${createdAt?.year.toString().padLeft(4, '0')}-${createdAt?.month.toString().padLeft(2, '0')}-${createdAt?.day.toString().padLeft(2, '0')}",
    "updated_at": updatedAt == null ? null : "${updatedAt?.year.toString().padLeft(4, '0')}-${updatedAt?.month.toString().padLeft(2, '0')}-${updatedAt?.day.toString().padLeft(2, '0')}",
    "user_type": userType == null ? null : userType,
    "pangea_user_id": pangeaUserId == null ? null : pangeaUserId,
    "date_of_birth": dateOfBirth,
    "source_language": sourceLanguage == null ? null : sourceLanguage,
    "target_language": targetLanguage == null ? null : targetLanguage,
  };
}
