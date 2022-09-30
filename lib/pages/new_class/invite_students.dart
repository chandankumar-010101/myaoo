import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/src/room.dart';
import 'package:pangea_choreographer/choreographer/widgets/it_shimmer.dart';
import 'package:pangeachat/pages/google_classroom/google_classroom.dart';
import 'package:pangeachat/services/controllers.dart';
import 'package:pangeachat/services/services.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';

import '../../config/app_config.dart';
import '../../config/environment.dart';
import '../../model/class_detail_model.dart';
import '../../utils/fluffy_share.dart';
import 'package:universal_html/html.dart' as html;

class InviteStudent extends StatefulWidget {
  const InviteStudent({Key? key}) : super(key: key);

  @override
  State<InviteStudent> createState() => _InviteStudentState();
}

class _InviteStudentState extends State<InviteStudent> {
  PangeaControllers getxController = Get.put(PangeaControllers());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String roomId = VRouter.of(context).queryParameters['id'] ?? "";
    // final room = Matrix.of(context).client.getRoomById(roomId);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:  Icon(Icons.arrow_back,
                color: Theme.of(context).textTheme.bodyText1!.color),
            onPressed: () {
              VRouter.of(context).to('/classDetails', queryParameters: {"id": roomId});
            },
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            "Invite Students",
            style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 18, fontWeight: FontWeight.w700),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          elevation: 10,
          automaticallyImplyLeading: false,
        ),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: FutureBuilder(
                future: PangeaServices.fetchClassInfo(context,  roomId),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.hasData) {
                    FetchClassInfoModel data = snapshot.data as FetchClassInfoModel;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Invite students to enroll\nin your class.",
                          style: TextStyle().copyWith(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 14, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () async {
                            final String classCode = data.classCode ?? "";
                            if (classCode.isNotEmpty) {
                              final String initial_url = kIsWeb ? html.window.origin! : Environment.frontendURL;
                              FluffyShare.share(initial_url + "/#/" + "join_with_link?code=$classCode", context);
                              // await Clipboard.setData(
                              //     ClipboardData(text: classCode));
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //     const SnackBar(content: Text("Copied to clipboard")));

                            }
                            //  Room? room = Matrix.of(context).client.getRoomById(roomId);
                            //  if(room != null){
                            // String  initial_url =  kIsWeb? html.window.origin!: Environment.frontendURL;
                            // // print(initial_url);
                            // // print(Environment.frontendURL);
                            //    FluffyShare.share(
                            //        initial_url+"/#"+"join_with_link?code=$classCode",
                            //        context);
                            // }
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Unable to find class code")));
                            }
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
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                        ? Theme.of(context).primaryColorLight
                                        : Theme.of(context).colorScheme.onPrimary)),
                            child: Center(
                              child: Text(
                                "Copy class link",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white ? Colors.white : Colors.white, fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () async {
                            final String classCode = data.classCode ?? "";
                            if (classCode.isNotEmpty) {
                              await Clipboard.setData(ClipboardData(text: classCode));
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Copied to clipboard")));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content: Text("Unable to find class Code"),
                                backgroundColor: Colors.red,
                              ));
                            }
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
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                        ? Theme.of(context).primaryColorLight
                                        : Theme.of(context).colorScheme.onPrimary)),
                            child: Center(
                              child: Text(
                                "Copy class code",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white ? Colors.white : Colors.white, fontSize: 14),
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
                            VRouter.of(context).to("/invite_email", queryParameters: {"id": roomId});
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
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                        ? Theme.of(context).primaryColorLight
                                        : Theme.of(context).colorScheme.onPrimary)),
                            child: Center(
                              child: Text(
                                "Invite with email",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white ? Colors.white : Colors.white, fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return new WillPopScope(
                                    onWillPop: () async => false,
                                    child: Dialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                      child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: GoogleClassroom(
                                            roomId: roomId,
                                          )),
                                    ),
                                  );
                                });
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
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                        ? Theme.of(context).primaryColorLight
                                        : Theme.of(context).colorScheme.onPrimary)),
                            child: Center(
                              child: Text(
                                "Google Classroom",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white ? Colors.white : Colors.white, fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
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
                                          color: Theme.of(context).colorScheme.onPrimary == Colors.white ? Colors.white : Colors.white, fontSize: 14),
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
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        ));
  }
}
