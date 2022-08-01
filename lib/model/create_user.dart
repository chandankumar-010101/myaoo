class CreateUserModel {
  int? user;
  String? fullName;
  String? email;
  bool? isVerified;
  String? createdAt;
  String? updatedAt;
  int? userType;
  String? pangeaUserId;
  Null? dateOfBirth;
  String? sourceLanguage;
  String? targetLanguage;

  CreateUserModel(
      {this.user,
        this.fullName,
        this.email,
        this.isVerified,
        this.createdAt,
        this.updatedAt,
        this.userType,
        this.pangeaUserId,
        this.dateOfBirth,
        this.sourceLanguage,
        this.targetLanguage});

  CreateUserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    fullName = json['full_name'];
    email = json['email'];
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
    data['email'] = this.email;
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
