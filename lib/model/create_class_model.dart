class CreateClassToJson {
  CreateClassToJson({
    required this.className,
    required this.city,
    required this.country,
    required this.dominantLanguage,
    required this.targetLanguage,
    required this.description,
    required this.languageLevel,
    required this.pangeaClassRoomId,
    required this.schoolName,
  });
  late final String className;
  late final String city;
  late final String country;
  late final String dominantLanguage;
  late final String targetLanguage;
  late final String description;
  late final int languageLevel;
  late final String pangeaClassRoomId;
  late final String schoolName;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['class_name'] = className;
    _data['city'] = city;
    _data['country'] = country;
    _data['dominant_language'] = dominantLanguage;
    _data['target_language'] = targetLanguage;
    _data['description'] = description;
    _data['language_level'] = languageLevel;
    _data['pangea_class_room_id'] = pangeaClassRoomId;
    _data['school_name'] = schoolName;
    return _data;
  }
}

class CreateClassFromJson {
  CreateClassFromJson({
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
    this.schoolName,
    required this.flags,
    required this.classAuthor,
    required this.rating,
    this.profilePic,
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
  late final Null schoolName;
  late final List<Flags> flags;
  late final String classAuthor;
  late final int rating;
  late final Null profilePic;

  CreateClassFromJson.fromJson(Map<String, dynamic> json){
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
    schoolName = null;
    flags = List.from(json['flags']).map((e)=>Flags.fromJson(e)).toList();
    classAuthor = json['class_author'];
    rating = json['rating'];
    profilePic = null;
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
    _data['flags'] = flags.map((e)=>e.toJson()).toList();
    _data['class_author'] = classAuthor;
    _data['rating'] = rating;
    _data['profile_pic'] = profilePic;
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
