import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pangeachat/model/flag_model.dart';
import 'package:pangeachat/pages/new_space/new_class_controller.dart';
import '../homeserver_picker/home_controller.dart';
import 'new_space.dart';

class WelcomeNewSpace extends StatefulWidget {
  final NewSpaceController controller;
  const WelcomeNewSpace(this.controller, {Key? key}) : super(key: key);

  @override
  State<WelcomeNewSpace> createState() => _WelcomeNewSpaceState();
}

class _WelcomeNewSpaceState extends State<WelcomeNewSpace> {
  welcomeWidget() {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        const Text(
          "Pangea Chat is designed to help teachers,\nboth online and in-person, facilitate\nCommunicative Language Teaching.\nWith Pangea Chat, you can:",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
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
                    "png/partner.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Partner with\nteachers from arround\nthe world\nfor language exchanges.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    "png/grow.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Find students and\ngrow your online class\nwith Open Enrollment.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
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
                    "png/Comment.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Engage Students in\nauthentic conversations\nfrom day one with\nAI and games.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    "png/time.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Save time with\nautomatic Diagnostic\nLanguage Assessment.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
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
            _controller.createClass.value = 1;
          },
          child: Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepPurple,
            ),
            child: Center(
              child: Text(
                "Create a Class",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Object? statename;
  Object? statename2;

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
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
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
                "png/vector.png",
                width: 40,
                height: 40,
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
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
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
                "png/vector.png",
                width: 40,
                height: 40,
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
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
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
                "png/md_analyst.png",
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 30,
              ),

              //language level
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: DropdownButton(
                    // Initial Value
                    value: widget.controller.languageLevelDropdownValue,
                    isExpanded: true,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    // Array list of items
                    items: widget.controller.languageLevel.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
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
                "png/house.png",
                width: 40,
                height: 40,
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
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
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
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            maxLines: 3,
          ),
        ),

        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 450),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("1000")],
          ),
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Center(
            child: Text("What is the target language of your classroom?"),
          ),
        ),
        Container(
            constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
            padding: EdgeInsets.all(size.height * 0.01),
            child: widget.controller.languageFlagList.isEmpty
                ? Container()
                : DropdownButton(
                    // Initial Value
                    hint: widget.controller.sourceLanguage == null
                        ? const Center(
                            child: Text(
                              "Select Language",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                  color: Colors.black),
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
                                    .toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0,
                                    color: Colors.black),
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
                                languageFlag.languageName.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0,
                                    color: Colors.black),
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
                  )),

        SizedBox(
          height: size.height * 0.03,
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
          padding: EdgeInsets.all(size.height * 0.01),
          child: Center(
            child: Text("What is the dominant language of your student?"),
          ),
        ),
        Container(
            constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
            padding: EdgeInsets.all(size.height * 0.01),
            child: widget.controller.languageFlagList.isEmpty
                ? Container()
                : DropdownButton(
              // Initial Value
              hint: widget.controller.targetLanguage == null
                  ? const Center(
                child: Text(
                  "Select Language",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Colors.black),
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
                        .toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                        color: Colors.black),
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
                          languageFlag.languageName.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Colors.black),
                        )
                      ],
                    ));
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (LanguageFlag? newValue) {
                setState(() {
                  widget.controller.targetLanguage = newValue!;
                });
              },
            )),

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
                    child: Text("1/4"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _controller.createClass.value = 2;
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
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
    // print(_newClassController.schoolController.value.text);
    // bool _switchValue = false;
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
              style: TextStyle(color: Colors.black, fontSize: 14),
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
                title: Text("Public"),
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
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SwitchListTile.adaptive(
                title: Text("Open Enrollment?"),
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
                          "If your class is Open Enrollment, new Students can request to enroll. Otherwise, your class is invite Only, and new students will need a private link or class code.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SwitchListTile.adaptive(
                title: Text("Open to exchanges?"),
                value: widget.controller.publicGroup,
                onChanged: widget.controller.setPublicGroup,
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 700),
                padding: EdgeInsets.all(size.height * 0.01),
                child:  Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow for Exchange Requests initiated by you or another teacher. Exchanges are linked spaces in which both teachers can create rooms, and students from both classes can join the rooms for  language exchanges.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
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
                const Expanded(
                  child: Center(
                    child: Text("2/4"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _controller.createClass.value = 3;
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
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

  studentPermissionsWidget() {
   bool _switchValue = false;
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
              "Student Permissions",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ),
        //switch buttons
        Container(
          constraints: BoxConstraints(
            minWidth: 100,
            maxWidth: 500,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SwitchListTile.adaptive(
                  title: Text("1-to-1 chats within class"),
                  value: widget.controller.publicGroup,
                  onChanged: widget.controller.setPublicGroup,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "If you allow 1-to-1 chats, your students can send and receive individual chats with other students within your class. Otherwise, they can only chat in rooms.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1-to-1 chats within  exchanges",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "If you allow 1-to-1 chats within exchanges, your students can send and receive individual chats with students in exchange-connected classes.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create rooms",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "Toggle this on to allow students to create rooms within your class",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create rooms in exchanges",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to create rooms within exchanges.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create stories",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to create stories.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Share videos",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share videos chats/rooms",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Share photos",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share photos in chats/rooms.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Share files",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share files in chats/rooms",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Share location",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeTrackColor: Color(0xFFCCBDEA),
                      activeColor: Colors.deepPurple,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Toggle this on to allow students to share their location in chats/rooms",
                          style: TextStyle(color: Colors.black, fontSize: 14),
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
                const Expanded(
                  child: Center(
                    child: Text("3/4"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _controller.createClass.value = 4;
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
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

  // paymentsWidget() {
  //   Size size = MediaQuery.of(context).size;
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       SizedBox(
  //         height: size.height * 0.04,
  //       ),
  //       Container(
  //         margin: EdgeInsets.symmetric(
  //             horizontal: size.width * 0.1, vertical: size.height * 0.02),
  //         width: size.width,
  //         height: 40,
  //         child: Center(
  //           child: Text(
  //             "Payments Page",
  //             style: TextStyle(color: Colors.black, fontSize: 14),
  //           ),
  //         ),
  //       ),
  //       //switch buttons
  //
  //       SizedBox(
  //         height: size.height * 0.03,
  //       ),
  //       Padding(
  //           padding: EdgeInsets.symmetric(
  //             horizontal: size.width * 0.1,
  //             vertical: size.height * 0.02,
  //           ),
  //           child: Row(
  //             children: [
  //               const Expanded(
  //                 child: Center(
  //                   child: Text("4/5"),
  //                 ),
  //               ),
  //               InkWell(
  //                 onTap: () {
  //                   _controller.createClass.value = 5;
  //                 },
  //                 child: Container(
  //                   width: 50.0,
  //                   height: 50.0,
  //                   decoration: new BoxDecoration(
  //                     color: Colors.deepPurple,
  //                     shape: BoxShape.circle,
  //                   ),
  //                   child: Icon(
  //                     Icons.arrow_right_alt,
  //                     color: Colors.white,
  //                     size: 25,
  //                   ),
  //                 ),
  //               )
  //             ],
  //           )),
  //       SizedBox(
  //         height: size.height * 0.03,
  //       ),
  //     ],
  //   );
  // }

  inviteStudentsWidget() {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Invite students to enroll\nwith your class.",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
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
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: Center(
                child: Text(
                  "Copy class link",
                  style: TextStyle(color: Colors.white, fontSize: 14),
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
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: Center(
                child: Text(
                  "Copy class code",
                  style: TextStyle(color: Colors.white, fontSize: 14),
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
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: Center(
                child: Text(
                  "Invite from phone contacts",
                  style: TextStyle(color: Colors.white, fontSize: 14),
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
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: Center(
                child: Text(
                  "Invite with email",
                  style: TextStyle(color: Colors.white, fontSize: 14),
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
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: Center(
                child: Text(
                  "Add from Clever",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ),

          //switch buttons

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
                  const Expanded(
                    child: Center(
                      child: Text("4/4"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _controller.createClass.value = 6;
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle,
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
      ),
    );
  }

  HomeController _controller = Get.put(HomeController());
  //CreateClassController _controller = Get.put(CreateClassController());
  //
  // Future getFlags() async {
  //   var response = await ApiFunctions().get(ApiUrls.get_all_flags);
  //   log("response is ${response.body}");
  //   if (response != null) {
  //     //loading.value = false;
  //     // var li = jsonDecode(response.body);
  //     List temp = response.body;
  //     log("Flag Response is $temp");
  //     _controller.countriesList.value =
  //         temp.map((value) => LanguageFlag.fromJson(value)).toList();
  //   } else {
  //     // loading.value = false;
  //     Get.rawSnackbar(
  //         message: "Something went wrong",
  //         snackPosition: SnackPosition.BOTTOM,
  //         margin: EdgeInsets.zero,
  //         snackStyle: SnackStyle.GROUNDED,
  //         backgroundColor: Colors.red);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Create a Class"),
          centerTitle: true,
          elevation: 10,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              print(_controller.createClass.value);
            },
          ),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Obx(() {
              switch (_controller.createClass.value) {
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
            }),
          ),
        ));
  }
}
