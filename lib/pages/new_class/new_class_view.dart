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




 welcomeWidget() {
    final Size size = MediaQuery.of(context).size;
    return Column(
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
                    color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                    Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
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
                    color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                    Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
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
                    color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                    Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
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
                    color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                    Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
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
            setState(() {
              widget.controller.createClass = 1;
            });
          },
          child: Container(
            width: 200,
            height: 40,
            // decoration: BoxDecoration(
            //  // border: Border.all(width: 0, color:Theme.of(context).colorScheme.secondaryContainer),
            //   borderRadius: BorderRadius.circular(10),
            //   color: Theme.of(context).colorScheme.onPrimary,
            //   border: Border.all(),
            // ),
            decoration:  BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
            ),

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
    );
  }

  chooseLanguageWidget() {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: TextField(
            controller: widget.controller.classNameController,
            autofocus: true,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: "Name of Your Class",
              hintStyle:TextStyle().copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color,
                  fontSize: 14),),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/png/vector.png",
                width: 40,
                height: 40,
                fit: BoxFit.fill,
                color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,

              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: TextField(
                  controller: widget.controller.cityController,
                  autofocus: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Optional: City",
                    hintStyle:  TextStyle().copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/png/vector.png",
                width: 40,
                height: 40,
                fit: BoxFit.fill,
                color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,

              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: TextField(
                  controller: widget.controller.countryController,
                  autofocus: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Optional: Country",
                    hintStyle:  TextStyle().copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color,
                        fontSize: 14),),
                ),
              ),
            ],
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/png/md_analyst.png",
                width: 40,
                height: 40,
                fit: BoxFit.fill,
                color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,

              ),
              SizedBox(
                width: 30,
              ),

              //language level
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(

                    child: DropdownButton(
                      // Initial Value
                      hint: widget.controller.languageLevelDropdownValue.isEmpty
                          ? Center(
                        child: Text(
                          "Select language level ",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      )
                          : Text(widget.controller.languageLevelDropdownValue),
                      //value: widget.controller.languageLevelDropdownValue,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      // Array list of items
                      items: widget.controller.languageLevel.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items, style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontSize: 14),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.center,),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          widget.controller.languageLevelDropdownValue =
                          newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/png/house.png",
                width: 40,
                height: 40,
                fit: BoxFit.fill,
                color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,


              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: TextField(
                    controller: widget.controller.schoolController,
                    onSubmitted: (String? value) {},
                    decoration: InputDecoration(
                      hintText: "Optional: School",
                      hintStyle:  TextStyle().copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color,
                          fontSize: 14),),
                  )),
            ],
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: TextField(
            controller: widget.controller.discriptionController,
            onSubmitted: (String? value) {},
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              hintText:
              "What should prospective students know\nabout your class? Potential exchange\nteachers?",
              hintStyle: TextStyle().copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color,
                  fontSize: 14),
            ),
            maxLines: 3,
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 450),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("1000",style:  TextStyle().copyWith(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color,
                fontSize: 14),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,)],
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child:  Center(
            child: Text("What is the target language of your classroom?", style: TextStyle().copyWith(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color,
                fontSize: 14),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,),
          ),
        ),
        Container(
            constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
            padding: EdgeInsets.all(size.height * 0.01),
            child: widget.controller.languageFlagList.isNotEmpty
                ? Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context)
                        .primaryColorLight
                ),
              ),
              child: DropdownButton(
                // Initial Value
                hint: widget.controller.sourceLanguage == null
                    ?  Center(
                  child: Text(
                    "Select Language",
                    style: TextStyle().copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color,
                        fontSize: 14),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                )
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      widget.controller.sourceLanguage!.languageFlag!,
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 10),
                    Text(
                      widget.controller.sourceLanguage!.languageName
                          .toString()
                          .capitalizeFirst ??
                          "",
                      style: TextStyle().copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color,
                          fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                isExpanded: true,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                underline: Container(),
                // Array list of items
                items:
                widget.controller.languageFlagList.map((languageFlag) {
                  // print(items.languageFlag);
                  return DropdownMenuItem(
                      value: languageFlag,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            languageFlag.languageFlag!,
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),

                          SizedBox(width: 10),
                          Text(
                            // widget.controller.sourceLanguage!.languageName.toString().capitalize??"",
                            languageFlag.languageName
                                .toString()
                                .capitalizeFirst ??
                                "",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ));
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (LanguageFlag? newValue) {
                  setState(() {
                    widget.controller.sourceLanguage = newValue!;
                  });
                },
              ),
            )
                : Container()),
        SizedBox(
          height: size.height * 0.03,
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Center(
            child: Text("What is the dominant language of your student?", style: TextStyle().copyWith(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color,
                fontSize: 14),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,),
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
          padding: EdgeInsets.all(size.height * 0.01),

          child: widget.controller.languageFlagList.isNotEmpty
              ? Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context)
                      .primaryColorLight
              ),
            ),
            child: DropdownButton(
              // Initial Value
              hint: widget.controller.targetLanguage == null
                  ? Center(
                child: Text(
                  "Select Language",
                  style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                ),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    widget.controller.targetLanguage!.languageFlag!,
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.controller.targetLanguage!.languageName
                        .toString()
                        .capitalizeFirst ??
                        "",
                    style: TextStyle().copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color,
                        fontSize: 16),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,

                    // style: const TextStyle(
                    //     fontWeight: FontWeight.w600,
                    //     fontSize: 15.0,
                    //     color: Colors.black),
                  )
                ],
              ),
              isExpanded: true,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              underline: Container(),
              // Array list of items
              items: widget.controller.languageFlagList.map((languageFlag) {
                // print(items.languageFlag);
                return DropdownMenuItem(
                    value: languageFlag,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          languageFlag.languageFlag!,
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(width: 10),
                        Text(
                          languageFlag.languageName
                              .toString()
                              .capitalizeFirst ??
                              "",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ));
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (LanguageFlag? newValue) {
                if (newValue == widget.controller.sourceLanguage) {
                  Fluttertoast.showToast(
                      msg: "Target and Dominant language cannot be same!",
                      fontSize: 16.0,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      timeInSecForIosWeb: 4
                  );
                } else {
                  setState(() {
                    widget.controller.targetLanguage = newValue!;
                  });
                }
              },
            ),
          )
              : Container(),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text("1/4", style: TextStyle().copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color,
                        fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,),
                  ),
                ),
                InkWell(
                  onTap: () {
                    widget.controller.checkFirstStep();

                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration:  BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                        Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                        shape: BoxShape.circle,
                        border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                        Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
                    ),
                    child: Icon(
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
    );
  }

  classPermissionsWidget() {
    Size size = MediaQuery.of(context).size;
    return Column(
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
                title: Text("Public", style: TextStyle().copyWith(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color,
                    fontSize: 14),
                  overflow: TextOverflow.clip,),
                value: widget.controller.publicGroup,
                onChanged: widget.controller.setPublicGroup,
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
              SwitchListTile.adaptive(
                title: Text("Open Enrollment?", style: TextStyle().copyWith(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color,
                    fontSize: 14),
                  overflow: TextOverflow.clip,),
                value: widget.controller.openEnrollment,
                onChanged: widget.controller.setOpenEnrollment,
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
              SwitchListTile.adaptive(
                title:  Text("Open to exchanges?", style: TextStyle().copyWith(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color,
                    fontSize: 14),
                  overflow: TextOverflow.clip,),
                value: widget.controller.openToExchange,
                onChanged: widget.controller.setOpentToExchange,
              ),
              Container(
                constraints: const BoxConstraints(minWidth: 100, maxWidth: 700),
                padding: EdgeInsets.all(size.height * 0.01),
                child: Row(
                  children:[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow for Exchange Requests initiated by you or another teacher. Exchanges are linked spaces in which both teachers can create rooms, and students from both classes can join the rooms for  language exchanges.",
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
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text("2/4", style: TextStyle().copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color,
                        fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.controller.createClass = 3;
                    });
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration:  BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                        Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                        shape: BoxShape.circle,
                        border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                        Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
                    ),
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
    );
  }

  studentPermissionsWidget() {
    Size size = MediaQuery.of(context).size;
    return Column(
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
          child:  Center(
            child: Text(
              "Student Permissions",
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
        //switch buttons
        Container(
          constraints: const BoxConstraints(
            minWidth: 100,
            maxWidth: 500,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SwitchListTile.adaptive(
                  title:Text("1-to-1 chats within class", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,
                  ),
                  value: widget.controller.oneToOneChatsWithinClass,
                  onChanged: widget.controller.setOneToOneChatsWithinClass,
                ),
                Row(
                  children:[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "If you allow 1-to-1 chats, your students can send and receive individual chats with other students within your class. Otherwise, they can only chat in rooms.",
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
                SwitchListTile.adaptive(
                  title: Text("1-to-1 chats within exchanges",style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.oneToOneChatsWithinExchanges,
                  onChanged: widget.controller.setOneToOneChatWithinExchanges,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "If you allow 1-to-1 chats within exchanges, your students can send and receive individual chats with students in exchange-connected classes.",
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
                SwitchListTile.adaptive(
                  title:Text("Create rooms", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.createRooms,
                  onChanged: widget.controller.setCreateRooms,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "Toggle this on to allow students to create rooms within your class",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 14),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.left,
                          )),
                    ),
                  ],
                ),
                SwitchListTile.adaptive(
                  title: Text("Create rooms in exchanges", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.createRoomsInExchanges,
                  onChanged: widget.controller.setCreateRoomsInExchange,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to create rooms within exchanges.",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontSize: 14),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
                SwitchListTile.adaptive(
                  title: Text("Create Stories", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.createStories,
                  onChanged: widget.controller.setCreateStories,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to create stories.",
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
                SwitchListTile.adaptive(
                  title: Text("Share Video", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.shareVideos,
                  onChanged: widget.controller.setShareVideos,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share videos chats/rooms",
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
                SwitchListTile.adaptive(
                  title:  Text("Share Photos", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.sharePhotos,
                  onChanged: widget.controller.setSharePhotos,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share photos in chats/rooms.",
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
                SwitchListTile.adaptive(
                  title: Text("Share Files", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.shareFiles,
                  onChanged: widget.controller.setShareFiles,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share files in chats/rooms",
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
                SwitchListTile.adaptive(
                  title:  Text("Share Location", style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                    overflow: TextOverflow.clip,),
                  value: widget.controller.shareLocation,
                  onChanged: widget.controller.setShareLocation,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share their location in chats/rooms",
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
              ],
            ),
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
              children: [
                Expanded(
                  child: Center(
                    child: Text("3/4", style: TextStyle().copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color,
                        fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,),
                  ),
                ),
                InkWell(
                  onTap: () {
                    widget.controller.submitAction();
                    // setState(() {
                    //   widget.controller.createClass = 4;
                    // });
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration:  BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                        Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                        shape: BoxShape.circle,
                        border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                        Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
                    ),
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
    );
  }

  inviteStudentsWidget1() {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Invite students to enroll\nwith your class.",
            style: TextStyle().copyWith(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color,
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
              print("hello");
            },
            child: Container(
              width: 200,
              height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.deepPurple),
              //   borderRadius: BorderRadius.circular(10),
              //   color: Colors.deepPurple,
              // ),
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
              child: Center(
                child: Text(
                  "Copy class link",
                  style: TextStyle().copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color,
                      fontSize: 14),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print("hello");
            },
            child: Container(
              width: 200,
              height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.deepPurple),
              //   borderRadius: BorderRadius.circular(10),
              //     color:Theme.of(context).colorScheme.onPrimary
              // ),
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
              child: Center(
                child: Text(
                  "Copy class code",
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
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print("hello");
            },
            child: Container(
              width: 200,
              height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.deepPurple),
              //   borderRadius: BorderRadius.circular(10),
              //   color:Theme.of(context).colorScheme.onPrimary
              // ),
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
              child: Center(
                child: Text(
                  "Invite from phone contacts",
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
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print("hello");
            },
            child: Container(
              width: 200,
              height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.deepPurple),
              //   borderRadius: BorderRadius.circular(10),
              //   color:  Theme.of(context).colorScheme.onPrimary
              // ),
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
              child: Center(
                child: Text(
                  "Invite with email",
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
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print("hellow");
            },
            child: Container(
              width: 200,
              height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.deepPurple),
              //   borderRadius: BorderRadius.circular(10),
              //   color:Theme.of(context).colorScheme.onPrimary,
              // ),
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
              child: Center(
                child: Text(
                  "Add from Clever",
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
                children: [
                  Expanded(
                    child: Center(
                      child: Text("4/4",style: TextStyle().copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color,
                          fontSize: 14),
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.controller.createClass = 6;
                      });
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration:  BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                          Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                          shape: BoxShape.circle,
                          border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                          Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
                      ),
                      child:const  Icon(
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
    );
  }
  inviteStudentsWidget() {
    final Size size = MediaQuery.of(context).size;
    print(widget.controller.class_code);
    final room = Matrix.of(context).client.getRoomById(widget.controller.class_code!);

    return SizedBox(
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
              FluffyShare.share(
                  AppConfig.inviteLinkPrefix + room!.canonicalAlias,
                  context);
            },
            child: Container(
              width: 200,
              height: 40,
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
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
             await  Clipboard.setData(ClipboardData(text: widget.controller.class_code.toString()));
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Copied to clipboard")));
            },
            child: Container(
              width: 200,
              height: 40,
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
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
          InkWell(
            onTap: () {
              print("hellow");
            },
            child: Container(
              width: 200,
              height: 40,
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
              child: Center(
                child: Text(
                  "Invite from phone contacts",
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
            onTap: () {
              print("hellow");
            },
            child: Container(
              width: 200,
              height: 40,
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
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
          InkWell(
            onTap: () {
              print("hellow");
            },
            child: Container(
              width: 200,
              height: 40,
              decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                  Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
              ),
              child: Center(
                child: Text(
                  "Add from Clever",
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
            height: size.height * 0.03,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
                vertical: size.height * 0.02,
              ),
              child: Row(
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.controller.createClass = 6;
                      });
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration:  BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                          Theme.of(context).primaryColor:Theme.of(context).colorScheme.onPrimary,
                          shape: BoxShape.circle,
                          border: Border.all(color: Theme.of(context).colorScheme.onPrimary==Colors.white?
                          Theme.of(context).primaryColorLight:Theme.of(context).colorScheme.onPrimary)
                      ),
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
    );
  }

  loadWidget() {
    switch (widget.controller.createClass) {
      case 0:
        return welcomeWidget();
      case 1:
        return chooseLanguageWidget();
      case 2:
        return classPermissionsWidget();
      case 3:
        return studentPermissionsWidget();
      case 4:
        return inviteStudentsWidget();
      default:
        return welcomeWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text("Create a Class" ,style:TextStyle(color: Theme.of(context).textTheme
              .bodyText1!
              .color,fontSize: 14),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,),
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
            child: loadWidget(),
          ),
        ));
  }
}