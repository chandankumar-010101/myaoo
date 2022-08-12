class AddClassPermissionModel {
  AddClassPermissionModel({
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
  });
  late final String pangeaClass;
  late final String isPublic;
  late final String isOpenEnrollment;
  late final String isOpenExchange;
  late final String oneToOneChatClass;
  late final String oneToOneChatExchange;
  late final String isCreateRooms;
  late final String isCreateRoomsExchange;
  late final String isShareVideo;
  late final String isSharePhoto;
  late final String isShareFiles;
  late final String isShareLocation;
  late final String isCreateStories;

  AddClassPermissionModel.fromJson(Map<String, dynamic> json){
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
    return _data;
  }
}