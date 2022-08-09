class AddClassPermissionModel {
  String? pangeaClass;
  String? isPublic;
  String? isOpenEnrollment;
  String? isOpenExchange;
  String? oneToOneChatClass;
  String? oneToOneChatExchange;
  String? isCreateRooms;
  String? isCreateRoomsExchange;
  String? isShareVideo;
  String? isSharePhoto;
  String? isShareFiles;
  String? isShareLocation;
  String? isCreateStories;

  AddClassPermissionModel(
      {this.pangeaClass,
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
        this.isCreateStories});

  AddClassPermissionModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pangea_class'] = this.pangeaClass;
    data['is_public'] = this.isPublic;
    data['is_open_enrollment'] = this.isOpenEnrollment;
    data['is_open_exchange'] = this.isOpenExchange;
    data['one_to_one_chat_class'] = this.oneToOneChatClass;
    data['one_to_one_chat_exchange'] = this.oneToOneChatExchange;
    data['is_create_rooms'] = this.isCreateRooms;
    data['is_create_rooms_exchange'] = this.isCreateRoomsExchange;
    data['is_share_video'] = this.isShareVideo;
    data['is_share_photo'] = this.isSharePhoto;
    data['is_share_files'] = this.isShareFiles;
    data['is_share_location'] = this.isShareLocation;
    data['is_create_stories'] = this.isCreateStories;
    return data;
  }
}
