import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/model/flag_model.dart';
import 'package:vrouter/vrouter.dart';
import '../../config/app_config.dart';
import '../../utils/fluffy_share.dart';
import '../../widgets/matrix.dart';
import 'new_class.dart';
import 'package:flutter/services.dart';

class NewClassView extends StatefulWidget {
  final NewClassController controller;
  const NewClassView(this.controller, {Key? key}) : super(key: key);

  @override
  State<NewClassView> createState() => _NewClassViewState();
}

class _NewClassViewState extends State<NewClassView> {



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
          leading: widget.controller.createClass == 0
              ? Container()
              : IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      widget.controller.createClass =
                          widget.controller.createClass - 1;
                    });
                  },
                ),
        ),
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
                Text(
                  "Pangea Chat is designed to help teachers,\nboth online and in-person, facilitate\nCommunicative Language Teaching.\nWith Pangea Chat, you can:",
                  textAlign: TextAlign.center,
                  style: TextStyle().copyWith(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: 14),
                  overflow: TextOverflow.clip,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            "assets/png/partner.png",
                            fit: BoxFit.fill,
                            color:
                            Theme.of(context).colorScheme.onPrimary == Colors.white
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Partner with\nteachers from arround\nthe world\nfor language exchanges.",
                          textAlign: TextAlign.center,
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            "assets/png/grow.png",
                            fit: BoxFit.fill,
                            color:
                            Theme.of(context).colorScheme.onPrimary == Colors.white
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Find students and\ngrow your online class\nwith Open Enrollment.",
                          textAlign: TextAlign.center,
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            "assets/png/comment.png",
                            fit: BoxFit.fill,
                            color:
                            Theme.of(context).colorScheme.onPrimary == Colors.white
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Engage Students in\nauthentic conversations\nfrom day one with\nAI and games.",
                          textAlign: TextAlign.center,
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            "assets/png/time.png",
                            fit: BoxFit.fill,
                            color:
                            Theme.of(context).colorScheme.onPrimary == Colors.white
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Save time with\nautomatic Diagnostic\nLanguage Assessment.",
                          textAlign: TextAlign.center,
                          style: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    context.vRouter.to("/newclass/language");
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
                            color:
                            Theme.of(context).colorScheme.onPrimary == Colors.white
                                ? Theme.of(context).primaryColorLight
                                : Theme.of(context).colorScheme.onPrimary)),

                    child: Center(
                      child: Text(
                        "Create a Class",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
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
        ));
  }
}
