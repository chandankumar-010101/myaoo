class UserInfo {
  UserInfo({
    required this.access,
    required this.refresh,
    required this.profile,
  });
  late final String access;
  late final String refresh;
  late final Profile profile;

  UserInfo.fromJson(Map<String, dynamic> json){
    access = json['access'];
    refresh = json['refresh'];
    profile = Profile.fromJson(json['profile']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['access'] = access;
    _data['refresh'] = refresh;
    _data['profile'] = profile.toJson();
    return _data;
  }
}

class Profile {
  Profile({
    required this.user,
    required this.fullName,
    required this.isVerified,
    required this.createdAt,
    required this.updatedAt,
    required this.userType,
    required this.pangeaUserId,
    required this.dateOfBirth,
    required this.sourceLanguage,
    required this.targetLanguage,
  });
  late final int user;
  late final String fullName;
  late final bool isVerified;
  late final String createdAt;
  late final String updatedAt;
  late final int userType;
  late final String pangeaUserId;
  late final String dateOfBirth;
  late final String sourceLanguage;
  late final String targetLanguage;


  Profile.fromJson(Map<String, dynamic> json){
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
    final _data = <String, dynamic>{};
    _data['user'] = user;
    _data['full_name'] = fullName;
    _data['is_verified'] = isVerified;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['user_type'] = userType;
    _data['pangea_user_id'] = pangeaUserId;
    _data['date_of_birth'] = dateOfBirth;
    _data['source_language'] = sourceLanguage;
    _data['target_language'] = targetLanguage;
    return _data;
  }
}