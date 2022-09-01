import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';

import '../../config/app_config.dart';
import '../../utils/fluffy_share.dart';

class InviteStudent extends StatefulWidget {
  const InviteStudent({Key? key}) : super(key: key);

  @override
  State<InviteStudent> createState() => _InviteStudentState();
}

class _InviteStudentState extends State<InviteStudent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String roomId = VRouter.of(context).queryParameters['id']??"";
    final room = Matrix.of(context).client.getRoomById(roomId);
   // print(widget.controller.class_code);
   // final room =
   // Matrix.of(context).client.getRoomById(widget.controller.class_code!);

    return Scaffold(
      //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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

        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child:SizedBox(
              width: size.width,
              height: size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Invite students to enroll\nwith your class.",
                    style: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      print(roomId);

                      FluffyShare.share(
                          AppConfig.inviteLinkPrefix + room!.canonicalAlias,
                          context);
                    },
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary == Colors.white
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onPrimary ==
                                  Colors.white
                                  ? Theme.of(context).primaryColorLight
                                  : Theme.of(context).colorScheme.onPrimary)),
                      child: Center(
                        child: Text(
                          "Copy class link",
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      // await Clipboard.setData(
                      //     ClipboardData(text: widget.controller.class_code.toString()));
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Copied to clipboard")));
                    },
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary == Colors.white
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onPrimary ==
                                  Colors.white
                                  ? Theme.of(context).primaryColorLight
                                  : Theme.of(context).colorScheme.onPrimary)),
                      child: Center(
                        child: Text(
                          "Copy class code",
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     print("hellow");
                  //   },
                  //   child: Container(
                  //     width: 200,
                  //     height: 40,
                  //     decoration: BoxDecoration(
                  //         color: Theme.of(context).colorScheme.onPrimary == Colors.white
                  //             ? Theme.of(context).primaryColor
                  //             : Theme.of(context).colorScheme.onPrimary,
                  //         borderRadius: BorderRadius.circular(10),
                  //         border: Border.all(
                  //             color: Theme.of(context).colorScheme.onPrimary ==
                  //                 Colors.white
                  //                 ? Theme.of(context).primaryColorLight
                  //                 : Theme.of(context).colorScheme.onPrimary)),
                  //     child: Center(
                  //       child: Text(
                  //         "Invite from phone contacts",
                  //         style: TextStyle().copyWith(
                  //             color: Theme.of(context).textTheme.bodyText1!.color,
                  //             fontSize: 14),
                  //         overflow: TextOverflow.clip,
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  InkWell(
                    onTap: () {
                      print("hellow");
                    },
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary == Colors.white
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onPrimary ==
                                  Colors.white
                                  ? Theme.of(context).primaryColorLight
                                  : Theme.of(context).colorScheme.onPrimary)),
                      child: Center(
                        child: Text(
                          "Invite with email",
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     print("hellow");
                  //   },
                  //   child: Container(
                  //     width: 200,
                  //     height: 40,
                  //     decoration: BoxDecoration(
                  //         color: Theme.of(context).colorScheme.onPrimary == Colors.white
                  //             ? Theme.of(context).primaryColor
                  //             : Theme.of(context).colorScheme.onPrimary,
                  //         borderRadius: BorderRadius.circular(10),
                  //         border: Border.all(
                  //             color: Theme.of(context).colorScheme.onPrimary ==
                  //                 Colors.white
                  //                 ? Theme.of(context).primaryColorLight
                  //                 : Theme.of(context).colorScheme.onPrimary)),
                  //     child: Center(
                  //       child: Text(
                  //         "Add from Clever",
                  //         style: TextStyle().copyWith(
                  //             color: Theme.of(context).textTheme.bodyText1!.color,
                  //             fontSize: 14),
                  //         overflow: TextOverflow.clip,
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: size.height * 0.03,
                  // ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: size.height * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                "4/4",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context).textTheme.bodyText1!.color,
                                    fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
