class ClassCodeModel {
  String? className;
  String? dominantLanguage;
  String? targetLanguage;
  String? pangeaClassRoomId;
  String? classCode;

  ClassCodeModel(
      {this.className,
        this.dominantLanguage,
        this.targetLanguage,
        this.pangeaClassRoomId,
        this.classCode});

  ClassCodeModel.fromJson(Map<String, dynamic> json) {
    className = json['class_name'];
    dominantLanguage = json['dominant_language'];
    targetLanguage = json['target_language'];
    pangeaClassRoomId = json['pangea_class_room_id'];
    classCode = json['class_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['class_name'] = this.className;
    data['dominant_language'] = this.dominantLanguage;
    data['target_language'] = this.targetLanguage;
    data['pangea_class_room_id'] = this.pangeaClassRoomId;
    data['class_code'] = this.classCode;
    return data;
  }
}
