class InviteEmail {
  String? data;
  String? pangeaClassRoomId;
  String? teacherName;

  InviteEmail({this.data, this.pangeaClassRoomId, this.teacherName});

  InviteEmail.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    pangeaClassRoomId = json['pangea_class_room_id'];
    teacherName = json['teacher_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['pangea_class_room_id'] = this.pangeaClassRoomId;
    data['teacher_name'] = this.teacherName;
    return data;
  }
}
