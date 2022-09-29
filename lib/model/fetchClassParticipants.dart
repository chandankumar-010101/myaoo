class FetchClassParticipants {
  RoomMembers? roomMembers;

  FetchClassParticipants({this.roomMembers});

  FetchClassParticipants.fromJson(Map<String, dynamic> json) {
    roomMembers = json['room_members'] != null
        ? RoomMembers.fromJson(json['room_members'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (roomMembers != null) {
      data['room_members'] = roomMembers!.toJson();
    }
    return data;
  }
}

class RoomMembers {
  List<String>? members;
  int? total;

  RoomMembers({this.members, this.total});

  RoomMembers.fromJson(Map<String, dynamic> json) {
    members = json['members'].cast<String>();
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['members'] = members;
    data['total'] = total;
    return data;
  }
}
