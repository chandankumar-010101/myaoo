import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vrouter/vrouter.dart';

class ClassPermissions extends StatefulWidget {
  const ClassPermissions({Key? key}) : super(key: key);

  @override
  State<ClassPermissions> createState() => _ClassPermissionsState();
}

class _ClassPermissionsState extends State<ClassPermissions> {
  bool publicGroup = false;
  bool openEnrollment = false;
  bool openToExchange = false;



  late String class_url;
  late String class_code;


  void setPublicGroup(bool b) => setState(() => publicGroup = b);
  void setOpenEnrollment(bool b) => setState(() => openEnrollment = b);
  void setOpentToExchange(bool b) => setState(() => openToExchange = b);


  createClassPermissions(){
    final box = GetStorage();
    box.write("publicGroup", publicGroup);
    box.write("openEnrollment", openEnrollment);
    box.write("openToExchange", openToExchange);
    context.vRouter.to("/newclass/student_permissions");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            "Create a Class",
            style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 14),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          elevation: 10,
          automaticallyImplyLeading: false,
          leading:  IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              context.vRouter.to("/newclass/language");
            },
          ),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1, vertical: size.height * 0.02),
                  width: size.width,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Class Permissions",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                //switch buttons
                Container(
                  constraints: BoxConstraints(
                    minWidth: 100,
                    maxWidth: 500,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile.adaptive(
                        title: Text(
                          "Public",
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                        ),
                        value: publicGroup,
                        onChanged: setPublicGroup,
                      ),
                      Container(
                        constraints: BoxConstraints(minWidth: 100, maxWidth: 700),
                        padding: EdgeInsets.all(size.height * 0.01),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  "Public classes are discoverable in the classes tab. Private classes are hidden to anyone not already in the class but can still be joined by a private invite link.",
                                  style: TextStyle().copyWith(
                                      color:
                                      Theme.of(context).textTheme.bodyText1!.color,
                                      fontSize: 14),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SwitchListTile.adaptive(
                        title: Text(
                          "Open Enrollment?",
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                        ),
                        value: openEnrollment,
                        onChanged: setOpenEnrollment,
                      ),
                      Container(
                        constraints: BoxConstraints(minWidth: 100, maxWidth: 700),
                        padding: EdgeInsets.all(size.height * 0.01),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  "If your class is Open Enrollment, new Students can request to enroll. Otherwise, your class is invite Only, and new students will need a private link or class code.",
                                  style: TextStyle().copyWith(
                                      color:
                                      Theme.of(context).textTheme.bodyText1!.color,
                                      fontSize: 14),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SwitchListTile.adaptive(
                        title: Text(
                          "Open to exchanges?",
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                        ),
                        value: openToExchange,
                        onChanged: setOpentToExchange,
                      ),
                      Container(
                        constraints: const BoxConstraints(minWidth: 100, maxWidth: 700),
                        padding: EdgeInsets.all(size.height * 0.01),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  "Toggle this on to allow for Exchange Requests initiated by you or another teacher. Exchanges are linked spaces in which both teachers can create rooms, and students from both classes can join the rooms for  language exchanges.",
                                  style: TextStyle().copyWith(
                                      color:
                                      Theme.of(context).textTheme.bodyText1!.color,
                                      fontSize: 14),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "2/4",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                  fontSize: 14),
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if(ModalRoute.of(context)!.settings.name =="class_permissions"){

                              createClassPermissions();

                            }else{
                              //update
                            }

                          },
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.onPrimary,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Theme.of(context).colorScheme.onPrimary ==
                                        Colors.white
                                        ? Theme.of(context).primaryColorLight
                                        : Theme.of(context).colorScheme.onPrimary)),
                            child: const Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: size.height * 0.03,
                ),
              ],
            ),
          ),
        ));
  }
}
