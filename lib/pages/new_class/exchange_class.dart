import 'package:flutter/material.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

class ExchangeClass extends StatefulWidget {
  const ExchangeClass({Key? key}) : super(key: key);

  @override
  State<ExchangeClass> createState() => _ExchangeClassState();
}

class _ExchangeClassState extends State<ExchangeClass> {
  late bool publicGroup;
  late bool openEnrollment;
  late bool openToExchange;

  late String class_url;
  late String class_code;

  void setPublicGroup(bool b) => setState(() => publicGroup = b);
  void setOpenEnrollment(bool b) => setState(() => openEnrollment = b);
  void setOpentToExchange(bool b) => setState(() => openToExchange = b);

  final box = GetStorage();
  createClassPermissions() {
    box.write("publicGroup", publicGroup);
    box.write("openEnrollment", openEnrollment);
    box.write("openToExchange", openToExchange);
    context.vRouter.to("/newclass/student_permissions");
  }

  @override
  void initState() {
    super.initState();
    box.read("public") == null? publicGroup = false : publicGroup = box.read("public");
    box.read("openEnrollment") == null
        ? openEnrollment = false
        : openEnrollment = box.read("openEnrollment");
    box.read("openExchange") == null
        ? openToExchange = false
        : openToExchange = box.read("openExchange");
    box.remove("public");
    box.remove("openEnrollment");
    box.remove("openExchange");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String id = context.vRouter.queryParameters['class_id'] ?? "";
    print(id);
    return Scaffold(
        appBar: id.isEmpty
            ? AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            "Exchange Class",
            style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 14),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          elevation: 10,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              context.vRouter.to("/newclass/language");
            },
          ),
        )
            : null,
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.02),
                  width: size.width,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Confirm the exchange?",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 14,fontWeight: FontWeight.w700),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
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
                        constraints:
                        BoxConstraints(minWidth: 100, maxWidth: 700),
                        padding: EdgeInsets.all(size.height * 0.01),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                 "A space will be made where you can both create rooms for your students to chat. Students from both classes will see these rooms in the exchange tab, and be able to join and chat within them.",
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
                        BoxConstraints(minWidth: 100, maxWidth: 700),
                        padding: EdgeInsets.all(size.height * 0.01),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  "While both teachers allow 1-to-1 chats in exchanges, students will have this permission in this exchange.",

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
                        BoxConstraints(minWidth: 100, maxWidth: 700),
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
                  child: id.isEmpty
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
                            createClassPermissions();
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
                                  : Theme.of(context)
                                  .colorScheme
                                  .onPrimary,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColorLight
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
                         // VRouter.of(context).to('/classDetails', queryParameters: { "id":id });

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
                                  : Theme.of(context)
                                  .colorScheme
                                  .onPrimary,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColorLight
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
                                      ? Theme.of(context)
                                      .primaryColorLight
                                      : Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontSize: 14),
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {


                        // UserDetails.enrollClassValidate(context: context, room_id: '${room_ID}');

                        final result = await showFutureLoadingDialog(
                            context: context,
                            future: () =>
                                PangeaServices.updateClassPermission(
                                  context: context,
                                  classId: id,
                                  isPublic: publicGroup.toString(),
                                  openEnrollment: openEnrollment.toString(),
                                  openToExchange: openToExchange.toString(),
                                ),
                          );
                          if(result !=null){
                            print("updated");
                            VRouter.of(context).to('/classDetails', queryParameters: { "id":id });
                            // context.vRouter.to("/classDetails/update_student_permissions",queryParameters: {"class_id": id, });
                          }


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
                                  : Theme.of(context)
                                  .colorScheme
                                  .onPrimary,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColorLight
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary)),
                          child: Center(
                            child: Text(
                              "Save",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColorLight
                                      : Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
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
          ),
        ));
  }
}
