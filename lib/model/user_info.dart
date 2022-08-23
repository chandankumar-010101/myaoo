class UserInfo {
  String? access;
  String? refresh;
  Profile? profile;

  UserInfo({this.access, this.refresh, this.profile});

  UserInfo.fromJson(Map<String, dynamic> json) {
    access = json['access'];
    refresh = json['refresh'];
    profile =
    json['profile'] != null ? Profile.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access'] = this.access;
    data['refresh'] = this.refresh;
    if (this.profile != null) {
      data['profile'] = this.profile!.toJson();
    }
    return data;
  }
}

class Profile {
  int? user;
  String? fullName;
  bool? isVerified;
  String? createdAt;
  String? updatedAt;
  int? userType;
  String? pangeaUserId;
  Null? dateOfBirth;
  String? sourceLanguage;
  String? targetLanguage;

  Profile(
      {this.user,
        this.fullName,
        this.isVerified,
        this.createdAt,
        this.updatedAt,
        this.userType,
        this.pangeaUserId,
        this.dateOfBirth,
        this.sourceLanguage,
        this.targetLanguage});

  Profile.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    fullName = json['full_name'];
    isVerified = json['is_verified'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    userType = json['user_type'];
    pangeaUserId = json['pangea_user_id'];
    dateOfBirth = json['date_of_birth'];
    sourceLanguage = json['source_language'];
    targetLanguage = json['target_language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['full_name'] = this.fullName;
    data['is_verified'] = this.isVerified;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['user_type'] = this.userType;
    data['pangea_user_id'] = this.pangeaUserId;
    data['date_of_birth'] = this.dateOfBirth;
    data['source_language'] = this.sourceLanguage;
    data['target_language'] = this.targetLanguage;
    return data;
  }
}
