class ReportUser {
  String? classRoomName;
  String? classTeacherName;
  String? reportedUser;
  String? classTeacherEmail;
  String? offensive;
  String? reason;

  ReportUser(
      {this.classRoomName,
        this.classTeacherName,
        this.reportedUser,
        this.classTeacherEmail,
        this.offensive,
        this.reason});

  ReportUser.fromJson(Map<String, dynamic> json) {
    classRoomName = json['class_room_name'];
    classTeacherName = json['class_teacher_name'];
    reportedUser = json['reported_user'];
    classTeacherEmail = json['class_teacher_email'];
    offensive = json['offensive'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['class_room_name'] = this.classRoomName;
    data['class_teacher_name'] = this.classTeacherName;
    data['reported_user'] = this.reportedUser;
    data['class_teacher_email'] = this.classTeacherEmail;
    data['offensive'] = this.offensive;
    data['reason'] = this.reason;
    return data;
  }
}