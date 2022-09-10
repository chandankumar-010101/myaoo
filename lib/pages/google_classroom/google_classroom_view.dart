import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:googleapis/bigtableadmin/v2.dart';
import 'package:googleapis/chat/v1.dart' as googleapi;
import 'package:pangeachat/main.dart';
import 'package:pangeachat/model/course/course_model.dart';
import 'package:pangeachat/pages/google_classroom/google_classroom.dart';

class GoogleClassroomView extends StatefulWidget {
  GoogleClassroomController? controller;
  Key? key;
  GoogleClassroomView({this.controller, this.key});

  @override
  State<GoogleClassroomView> createState() => _GoogleClassroomViewState();
}

class _GoogleClassroomViewState extends State<GoogleClassroomView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  CourseModel? selectedCourse;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.controller!.isLoggedIn ? loggedIn() : loginToGoogle(),
        widget.controller!.isLoading
            ? SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.2),
                      //     offset: Offset(1, -1),
                      //   ),
                      // ],
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          height: Get.height * 0.20,
                          width: Get.width * 0.30,
                          child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.15),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.black.withOpacity(0.2),
                                  //     offset: Offset(1, -1),
                                  //   ),
                                  // ],
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircularProgressIndicator(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Fetching all classrooms...",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Theme.of(context).colorScheme.onPrimary == Colors.white ? Colors.black : Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
        Positioned(
          right: 20,
          top: 20,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close)),
        )
      ],
    );
  }

  loginToGoogle() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login with Google Classroom",
            style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 26, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      widget.controller!.authifNotGoogleUser();
                    },
                    child: Text("Login"),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(100, 50)),
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.onPrimary == Colors.white
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onPrimary,
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  loggedIn() {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 60, right: 60, bottom: 60),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Courses",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary == Colors.white ? Colors.black : Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      widget.controller!.isLoading = true;
                    });
                    widget.controller!.getCourses(googleSignIn.currentUser!);
                  },
                  icon: Icon(Icons.refresh)),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(googleSignIn.currentUser!.displayName!),
                  TextButton(
                      onPressed: () {
                        googleSignIn.signOut();
                        setState(() {
                          widget.controller!.isLoggedIn = false;
                          widget.controller!.isLoading = false;
                        });
                      },
                      child: Text("Sign out"))
                ],
              )
            ],
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).primaryColorDark.withOpacity(0.5),
                      ),
                      child: widget.controller!.coursesList != null
                          ? ListView.builder(
                              itemCount: widget.controller!.coursesList!.length,
                              itemBuilder: (_, i) => ListTile(
                                selected: selectedCourse == widget.controller!.coursesList![i],
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                title: Text(widget.controller!.coursesList![i].name),
                                subtitle: Text("Total Students:${widget.controller!.coursesList![i].students!.length}"),
                                onTap: () {
                                  setState(() {
                                    selectedCourse = widget.controller!.coursesList![i];
                                  });
                                },
                              ),
                            )
                          : Center(
                              child: Text("No Courses found"),
                            ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).primaryColorDark.withOpacity(0.8),
                      ),
                      child: selectedCourse != null && selectedCourse!.students != null && selectedCourse!.students!.isNotEmpty
                          ? ListView.builder(
                              itemCount: selectedCourse!.students!.length,
                              itemBuilder: (_, i) => ListTile(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                title: Text(selectedCourse!.students![i].profile!.name!.fullName!),
                                subtitle: Text(selectedCourse!.students![i].profile!.emailAddress!),
                              ),
                            )
                          : Center(
                              child: Text("No Students found"),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
