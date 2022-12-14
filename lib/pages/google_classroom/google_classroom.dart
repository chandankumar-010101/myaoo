import 'dart:developer';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/classroom/v1.dart' as v1;
import 'package:hive_flutter/hive_flutter.dart';

import 'package:http/io_client.dart' as IO;
import 'package:http/http.dart' as http;
import 'package:pangeachat/main.dart';
import 'package:pangeachat/model/course/course_model.dart';
import 'package:pangeachat/pages/google_classroom/google_classroom_view.dart';
import 'package:pangeachat/pages/google_classroom/google_http_client.dart';
import 'package:vrouter/vrouter.dart';

import '../../model/course/courses_failure.dart';

class GoogleClassroom extends StatefulWidget {
  String? roomId;
  GoogleClassroom({this.roomId, Key? key}) : super(key: key);

  @override
  State<GoogleClassroom> createState() => GoogleClassroomController();
}

class GoogleClassroomController extends State<GoogleClassroom> {
  final key = GlobalKey();
  Box? box;
  bool isLoading = false;
  bool isLoggedIn = false;
  List<CourseModel>? coursesList = [];
  String roomId = "";

  Future<void> handleSignIn() async {
    try {
      final result = await googleSignIn.signIn();
      if (result != null && result.displayName!.isNotEmpty) {
        coursesList = await getCourses(result);
      } else {
        setState(() {
          isLoading = false;
          isLoggedIn = false;
        });
      }
    } catch (error) {
      print("Error by Google: " + error.toString());
      showAlertDialog(
        actions: [AlertDialogAction(key: key, label: "ok")],
        context: context,
        title: "Error",
        message: error.toString(),
      );
      setState(() {
        isLoading = false;
        isLoggedIn = false;
      });
    }
  }

  getCourses(GoogleSignInAccount currentUser) async {
    final a = await currentUser.authHeaders;
    final List<CourseModel> courses = [];
    final baseClient = new http.Client();
    final authenticateClient = AuthenticateClient(a, baseClient);
    final api = v1.ClassroomApi(authenticateClient);
    try {
      final response = await api.courses.list();

      if (response.courses != null) {
        for (final v1.Course course in response.courses!) {
          final List<v1.Teacher> teachers = [];
          final List<v1.Student> students = [];

          final teachersResponse = await api.courses.teachers.list(course.id!);
          final studentsResponse = await api.courses.students.list(course.id!);

          if (teachersResponse.teachers != null) {
            for (final teacher in teachersResponse.teachers!) {
              teachers.add(teacher);
            }
          }

          if (studentsResponse.students != null) {
            for (final student in studentsResponse.students!) {
              students.add(student);
            }
          }

          final CourseModel courseModel = CourseModel(
            id: course.id!,
            name: course.name!,
            teachers: teachers,
            students: students,
          );

          courses.add(courseModel);
        }
      }
    } catch (e) {
      print("Error by Google: " + e.toString());
      showAlertDialog(
        actions: [AlertDialogAction(key: key, label: "ok")],
        context: context,
        title: "Error",
        message: e.toString(),
      );
      setState(() {
        isLoading = false;
        isLoggedIn = false;
      });
    }

    log("Courses List: " + courses.map((e) => e.name).toList().toString());
    if (courses.isNotEmpty) {
      setState(() {
        isLoading = false;
        isLoggedIn = true;
      });
    } else {
      showAlertDialog(
        actions: [AlertDialogAction(key: key, label: "ok")],
        context: context,
        title: "Error",
        message: "No Classrooms/Courses were found during in your account",
      );

      setState(() {
        isLoading = false;
        isLoggedIn = true;
      });
    }
    return courses;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    roomId = widget.roomId!;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleClassroomView(controller: this, key: key);
  }
}
