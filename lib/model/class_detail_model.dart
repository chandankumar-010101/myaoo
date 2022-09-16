
class FetchClassInfoModel {
  FetchClassInfoModel({
    required this.id,
    required this.className,
    required this.city,
    required this.country,
    required this.dominantLanguage,
    required this.targetLanguage,
    required this.description,
    required this.languageLevel,
    required this.createdAt,
    required this.pangeaClassRoomId,
    required this.schoolName,
    required this.classCode,
    required this.user,
    required this.permissions,
    required this.flags,
    required this.classAuthor,
    required this.classAuthorId,
    required this.rating,
    required this.profilePic,
    required this.totalStudent,
    required this.isExchange,

  });
  late final int id;
  late final String className;
  late final String city;
  late final String country;
  late final String dominantLanguage;
  late final String targetLanguage;
  late final String description;
  late final int languageLevel;
  late final String createdAt;
  late final String pangeaClassRoomId;
  late final String schoolName;
  late final String classCode;
  late final int user;
  late final Permissions permissions;
  late final List<Flags> flags;
  late final String classAuthor;
  late final String classAuthorId;
  late final int rating;
  late final String profilePic;
  late final int totalStudent;
  late final bool isExchange;

  FetchClassInfoModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    className = json['class_name'];
    city = json['city'];
    country = json['country'];
    dominantLanguage = json['dominant_language'];
    targetLanguage = json['target_language'];
    description = json['description'];
    languageLevel = json['language_level'];
    createdAt = json['created_at'];
    pangeaClassRoomId = json['pangea_class_room_id'];
    schoolName = json['school_name'];
    classCode = json['class_code'];
    user = json['user'];
    permissions = Permissions.fromJson(json['permissions']);
    flags = List.from(json['flags']).map((e)=>Flags.fromJson(e)).toList();
    classAuthor = json['class_author'];
    classAuthorId = json['class_author_id'];
    rating = json['rating'];
    profilePic = json["profile_pic"]??"";
    totalStudent = json['total_student'];
    isExchange = json['is_exchange']??false;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['class_name'] = className;
    _data['city'] = city;
    _data['country'] = country;
    _data['dominant_language'] = dominantLanguage;
    _data['target_language'] = targetLanguage;
    _data['description'] = description;
    _data['language_level'] = languageLevel;
    _data['created_at'] = createdAt;
    _data['pangea_class_room_id'] = pangeaClassRoomId;
    _data['school_name'] = schoolName;
    _data['class_code'] = classCode;
    _data['user'] = user;
    _data['permissions'] = permissions.toJson();
    _data['flags'] = flags.map((e)=>e.toJson()).toList();
    _data['class_author'] = classAuthor;
    _data['class_author_id'] = classAuthorId;
    _data['rating'] = rating;
    _data['profile_pic'] = profilePic;
    _data['total_student'] = totalStudent;

    return _data;
  }
}

class Permissions {
  Permissions({
    required this.pangeaClass,
    required this.isPublic,
    required this.isOpenEnrollment,
    required this.isOpenExchange,
    required this.oneToOneChatClass,
    required this.oneToOneChatExchange,
    required this.isCreateRooms,
    required this.isCreateRoomsExchange,
    required this.isShareVideo,
    required this.isSharePhoto,
    required this.isShareFiles,
    required this.isShareLocation,
    required this.isCreateStories,
    required this.sendVoice,
  });
  late final int pangeaClass;
  late final bool isPublic;
  late final bool isOpenEnrollment;
  late final bool isOpenExchange;
  late final bool oneToOneChatClass;
  late final bool oneToOneChatExchange;
  late final bool isCreateRooms;
  late final bool isCreateRoomsExchange;
  late final bool isShareVideo;
  late final bool isSharePhoto;
  late final bool isShareFiles;
  late final bool isShareLocation;
  late final bool isCreateStories;
  late final bool sendVoice;

  Permissions.fromJson(Map<String, dynamic> json){
    pangeaClass = json['pangea_class'];
    isPublic = json['is_public'];
    isOpenEnrollment = json['is_open_enrollment'];
    isOpenExchange = json['is_open_exchange'];
    oneToOneChatClass = json['one_to_one_chat_class'];
    oneToOneChatExchange = json['one_to_one_chat_exchange'];
    isCreateRooms = json['is_create_rooms'];
    isCreateRoomsExchange = json['is_create_rooms_exchange'];
    isShareVideo = json['is_share_video'];
    isSharePhoto = json['is_share_photo'];
    isShareFiles = json['is_share_files'];
    isShareLocation = json['is_share_location'];
    isCreateStories = json['is_create_stories'];
    sendVoice = json['is_voice_notes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pangea_class'] = pangeaClass;
    _data['is_public'] = isPublic;
    _data['is_open_enrollment'] = isOpenEnrollment;
    _data['is_open_exchange'] = isOpenExchange;
    _data['one_to_one_chat_class'] = oneToOneChatClass;
    _data['one_to_one_chat_exchange'] = oneToOneChatExchange;
    _data['is_create_rooms'] = isCreateRooms;
    _data['is_create_rooms_exchange'] = isCreateRoomsExchange;
    _data['is_share_video'] = isShareVideo;
    _data['is_share_photo'] = isSharePhoto;
    _data['is_share_files'] = isShareFiles;
    _data['is_share_location'] = isShareLocation;
    _data['is_create_stories'] = isCreateStories;
    _data['is_voice_notes']=sendVoice;
    return _data;
  }
}

class Flags {
  Flags({
    required this.id,
    required this.languageName,
    required this.languageType,
    required this.languageFlag,
  });
  late final int id;
  late final String languageName;
  late final int languageType;
  late final String languageFlag;

  Flags.fromJson(Map<String, dynamic> json){
    id = json['id'];
    languageName = json['language_name'];
    languageType = json['language_type'];
    languageFlag = json['language_flag'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['language_name'] = languageName;
    _data['language_type'] = languageType;
    _data['language_flag'] = languageFlag;
    return _data;
  }
}




