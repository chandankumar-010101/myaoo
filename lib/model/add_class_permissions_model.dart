class AddClassPermissionModel {
  final String? pangeaClass;
  final String? isPublic;
  final String? isOpenEnrollment;
  final String? isOpenExchange;
  final String? oneToOneChatClass;
  final String? oneToOneChatExchange;
  final String? isCreateRooms;
  final String? isCreateRoomsExchange;
  final String? isShareVideo;
  final String? isSharePhoto;
  final String? isShareFiles;
  final String? isShareLocation;
  final String? isCreateStories;
  final String? sendVoice;

  AddClassPermissionModel({
    this.pangeaClass,
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
    this.isCreateStories,
    this.sendVoice,
  });

  AddClassPermissionModel.fromJson(Map<String, dynamic> json)
      : pangeaClass = json['pangea_class'] as String?,
        isPublic = json['is_public'] as String?,
        isOpenEnrollment = json['is_open_enrollment'] as String?,
        isOpenExchange = json['is_open_exchange'] as String?,
        oneToOneChatClass = json['one_to_one_chat_class'] as String?,
        oneToOneChatExchange = json['one_to_one_chat_exchange'] as String?,
        isCreateRooms = json['is_create_rooms'] as String?,
        isCreateRoomsExchange = json['is_create_rooms_exchange'] as String?,
        isShareVideo = json['is_share_video'] as String?,
        isSharePhoto = json['is_share_photo'] as String?,
        isShareFiles = json['is_share_files'] as String?,
        isShareLocation = json['is_share_location'] as String?,
        isCreateStories = json['is_create_stories'] as String?,
        sendVoice = json['is_voice_notes'] as String?;

  Map<String, dynamic> toJson() => {
    'pangea_class' : pangeaClass,
    'is_public' : isPublic,
    'is_open_enrollment' : isOpenEnrollment,
    'is_open_exchange' : isOpenExchange,
    'one_to_one_chat_class' : oneToOneChatClass,
    'one_to_one_chat_exchange' : oneToOneChatExchange,
    'is_create_rooms' : isCreateRooms,
    'is_create_rooms_exchange' : isCreateRoomsExchange,
    'is_share_video' : isShareVideo,
    'is_share_photo' : isSharePhoto,
    'is_share_files' : isShareFiles,
    'is_share_location' : isShareLocation,
    'is_create_stories' : isCreateStories,
    'is_voice_notes':sendVoice
  };
}