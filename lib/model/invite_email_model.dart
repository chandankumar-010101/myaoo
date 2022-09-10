class InviteEmail {
  List<Data>? data;
  String? pangeaClassRoomId;
  String? teacherName;

  InviteEmail({this.data, this.pangeaClassRoomId, this.teacherName});

  InviteEmail.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    pangeaClassRoomId = json['pangea_class_room_id'];
    teacherName = json['teacher_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['pangea_class_room_id'] = this.pangeaClassRoomId;
    data['teacher_name'] = this.teacherName;
    return data;
  }
}

class Data {
  String? name;
  String? email;

  Data({this.name, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    return data;
  }
}
