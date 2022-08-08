class CreateClassToJson {
  String? className;
  String? city;
  String? country;
  String? dominantLanguage;
  String? targetLanguage;
  String? description;
  String? languageLevel;
  String? pangeaClassRoomId;

  CreateClassToJson(
      {this.className,
        this.city,
        this.country,
        this.dominantLanguage,
        this.targetLanguage,
        this.description,
        this.languageLevel,
        this.pangeaClassRoomId});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['class_name'] = this.className;
    data['city'] = this.city;
    data['country'] = this.country;
    data['dominant_language'] = this.dominantLanguage;
    data['target_language'] = this.targetLanguage;
    data['description'] = this.description;
    data['language_level'] = this.languageLevel;
    data['pangea_class_room_id'] = this.pangeaClassRoomId;
    return data;
  }
}

class CreateClassFromJson {
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

  CreateClassFromJson(
      {this.id,
        this.className,
        this.city,
        this.country,
        this.dominantLanguage,
        this.targetLanguage,
        this.description,
        this.languageLevel,
        this.createdAt,
        this.pangeaClassRoomId});

  CreateClassFromJson.fromJson(Map<String, dynamic> json) {
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
  }
}

