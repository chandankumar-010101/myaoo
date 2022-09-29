import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:pangeachat/model/teacher_all_class_model.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

import '../../services/controllers.dart';
import '../../utils/url_launcher.dart';
import '../../widgets/matrix.dart';

class RequestExchange extends StatefulWidget {
  const RequestExchange({Key? key}) : super(key: key);

  @override
  State<RequestExchange> createState() => _RequestExchangeState();
}

class _RequestExchangeState extends State<RequestExchange> {
  List<User>? members;
  Client? client;
  final box = GetStorage();
  List languageFlagList = [];
  TeacherAllClassModel? teacherAllClassModel;
  String? classIds;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final String requestToClass =
        VRouter.of(context).queryParameters['class_id'] ?? "";
    final String userIdOfRequestedClass =
        VRouter.of(context).queryParameters['user_id'] ?? "";

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            "Request an exchange",
            style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          elevation: 10,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon:  Icon(Icons.arrow_back, color: Theme.of(context).textTheme.bodyText1!.color),
            onPressed: () {
              context.vRouter.to("/classDetails",
                  queryParameters: {"class_id": requestToClass});
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              //switch buttons
              Container(
                constraints: const BoxConstraints(
                  minWidth: 100,
                  maxWidth: 500,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 700),
                      padding: EdgeInsets.all(size.height * 0.01),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                "A space will be made where you can both create group chats for your students to connect. Students from both classes will see these chats in the exchange tab, and be able to join and send messages within them.",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                "While both teachers allow One-to-one chats in exchanges, students will have this permission in this exchange.",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                "Either teachers can cancel the exchange at any time,",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 700),
                      padding: EdgeInsets.all(size.height * 0.01),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                "While both teachers allow students to create rooms in the exchange, students will have this permission.",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FutureBuilder(
                        future:
                            PangeaServices.fetchTeacherAllClassInfo(context),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final TeacherAllClassModel data =
                                snapshot.data as TeacherAllClassModel;
                            return ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                if (!data.results![index].isExchange!) {
                                  languageFlagList
                                      .add(data.results![index].className);
                                }
                                //languageFlagList.add(data.results![index].className);
                                return Container(
                                    constraints: BoxConstraints(
                                        minWidth: 100, maxWidth: 400),
                                    padding: EdgeInsets.all(size.height * 0.01),
                                    child: //languageFlagList.isNotEmpty
                                        Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Theme.of(context)
                                                      .primaryColorLight),
                                            ),
                                            child: DropdownButton(
                                              hint: classIds == null
                                                  ? Center(
                                                      child: Text(
                                                        "Select Class",
                                                        style: TextStyle()
                                                            .copyWith(
                                                                color: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1!
                                                                    .color,
                                                                fontSize: 14),
                                                        overflow:
                                                            TextOverflow.clip,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    )
                                                  : Text(
                                                      " ${Matrix.of(context).client.getRoomById(classIds.toString())!.displayname}"
                                                          .toString(),
                                                      style: TextStyle()
                                                          .copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText1!
                                                                  .color,
                                                              fontSize: 14),
                                                      overflow:
                                                          TextOverflow.clip,
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                              isExpanded: true,
                                              items: data.results!
                                                  .where((element) =>
                                                      !element.isExchange!)
                                                  .map(
                                                    (map) => DropdownMenuItem(
                                                      child: Text(map.className
                                                          .toString()),
                                                      value: map
                                                          .pangeaClassRoomId, //"${map.className.toString()} (${map.pangeaClassRoomId})",// map.pangeaClassRoomId,
                                                    ),
                                                  )
                                                  .toList(),
                                              onChanged: (value) {
                                                value != null
                                                    ? setState(() {
                                                        classIds =
                                                            value.toString();
                                                      })
                                                    : setState(() {
                                                        classIds = "";
                                                      });
                                              },
                                            ))
                                    //: Container()
                                    );
                                ;
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return SizedBox(
                                  height: 10,
                                );
                              },
                            );
                          } else {
                            if (snapshot.hasError) {
                              print(snapshot.error);
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }),
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
                child: requestToClass.isEmpty
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                "2/4",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 14),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (ModalRoute.of(context)!.settings.name ==
                                  "class_permissions") {
                                // createClassPermissions();
                              } else {
                                //update
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                          Colors.white
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).colorScheme.onPrimary,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColorLight
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary)),
                              child: const Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              VRouter.of(context).to('/classDetails',
                                  queryParameters: {"id": requestToClass});
                            },
                            child: Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                          Colors.white
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColorLight
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary)),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Colors.white
                                          : Colors.white,
                                      fontSize: 14),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              if (classIds != null) {
                                if (requestToClass.isNotEmpty) {
                                  final bool isExchangeExist =
                                      await PangeaServices.validateExchange(
                                          requestFromClass: classIds!,
                                          requestToClass: requestToClass,
                                          context: context);
                                  if (isExchangeExist) {
                                    PangeaControllers.toastMsg(
                                        msg:
                                            "Exchange already exist with this class",
                                        success: false);
                                    return;
                                  }
                                  if (userIdOfRequestedClass.isNotEmpty) {
                                    UrlLauncher(
                                            context,
                                            requestExchange: true,
                                            roomId: classIds!,
                                            userIdOfRequestedClass:
                                                userIdOfRequestedClass,
                                            requestToclass: requestToClass,
                                            'https://matrix.to/#/${userIdOfRequestedClass}')
                                        .openMatrixToUrl();
                                  }
                                } else {
                                  PangeaControllers.toastMsg(
                                      msg: "Exchange Class Info not found",
                                      success: false);
                                }
                              } else {
                                PangeaControllers.toastMsg(
                                    msg: "Select your Class", success: false);
                              }

                              final String clientid =
                                  box.read("ExchangeClientID") ?? "";
                            },
                            child: Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                          Colors.white
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColorLight
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary)),
                              child: Center(
                                child: Text(
                                  "Request",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Colors.white
                                          : Colors.white,
                                      fontSize: 14),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ));
  }
}
