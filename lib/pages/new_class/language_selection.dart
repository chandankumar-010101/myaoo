import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vrouter/vrouter.dart';

import '../../model/flag_model.dart';
import '../../services/services.dart';

class ClassLanguage extends StatefulWidget {
  const ClassLanguage({Key? key}) : super(key: key);

  @override
  State<ClassLanguage> createState() => _ClassLanguageState();
}

class _ClassLanguageState extends State<ClassLanguage> {

  TextEditingController classNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();

  String languageLevelDropdownValue = '';
  var languageLevel = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'];
  List<LanguageFlag> languageFlagList = [];
  List<LanguageFlag> languageFlag2List = [];
  LanguageFlag? targetLanguage;
  LanguageFlag? sourceLanguage;

  getFlags() async {
    languageFlagList = await Services.getFlags();
    languageFlag2List = await Services.getFlags2();
  }
  int fetchLangLevel() {
    int langlevel = 0;
    switch (languageLevelDropdownValue) {
      case 'A1':
        langlevel = 1;
        return langlevel;
      case 'A2':
        langlevel = 2;
        return langlevel;
      case 'B1':
        langlevel = 3;
        return langlevel;
      case "B2":
        langlevel = 4;
        return langlevel;
      case "C1":
        langlevel = 5;
        return langlevel;
      case "C2":
        langlevel = 6;
        return langlevel;
      default:
        langlevel = 0;
        return langlevel;
    }
  }


  void createLanguage() {
    final int languageLevel =  fetchLangLevel();
    if (classNameController.text.isEmpty || discriptionController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Class name and Description is required!", fontSize: 16.0);
    } else if (targetLanguage == null ||
        sourceLanguage == null ||
        languageLevelDropdownValue.isEmpty || languageLevel == 0) {
      Fluttertoast.showToast(msg: "Language must be selected!", fontSize: 16.0);
    } else {
      print(classNameController.text);
      print(cityController.text);
      print(countryController.text);
      print(fetchLangLevel());
      print(schoolController.text);
      print(discriptionController.text);
      print(targetLanguage);
      print(sourceLanguage);
      final box = GetStorage();
      box.write("className", classNameController.text);
      box.write("cityName", cityController.text);
      box.write("countryName", countryController.text);
      box.write("languageLevel", languageLevel);
      box.write("scoolName", schoolController.text);
      box.write("disc", discriptionController.text);
      box.write("targetLanguage", targetLanguage!.languageName);
      box.write("sourceLanage", sourceLanguage!.languageName);
      context.vRouter.to("/newclass/class_permissions");
    }
  }


  @override
  void initState() {
    super.initState();
    getFlags();
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
              context.vRouter.to("/newclass");
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
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
                padding: EdgeInsets.all(size.height * 0.01),
                child: TextField(
                  controller: classNameController,
                  autofocus: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Name of Your Class",
                    hintStyle: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 14),
                  ),
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
                      color: Theme.of(context).colorScheme.onPrimary == Colors.white
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: TextField(
                         controller: cityController,
                        autofocus: true,
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: "Optional: City",
                          hintStyle: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
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
                      color: Theme.of(context).colorScheme.onPrimary == Colors.white
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: TextField(
                         controller: countryController,
                        autofocus: true,
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: "Optional: Country",
                          hintStyle: TextStyle().copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color,
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
                      "assets/png/md_analyst.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.fill,
                      color: Theme.of(context).colorScheme.onPrimary == Colors.white
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          child: DropdownButton(
                            // Initial Value
                            hint:languageLevelDropdownValue.isEmpty
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
                                : Text(languageLevelDropdownValue),
                            //value: widget.controller.languageLevelDropdownValue,
                            isExpanded: true,
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),
                            // Array list of items
                            items:
                           languageLevel.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontSize: 14),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                languageLevelDropdownValue =
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
                      color: Theme.of(context).colorScheme.onPrimary == Colors.white
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: TextField(
                          controller: schoolController,
                          onSubmitted: (String? value) {},
                          decoration: InputDecoration(
                            hintText: "Optional: School",
                            hintStyle: TextStyle().copyWith(
                                color: Theme.of(context).textTheme.bodyText1!.color,
                                fontSize: 14),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
                padding: EdgeInsets.all(size.height * 0.01),
                child: TextField(
                  controller: discriptionController,
                  onSubmitted: (String? value) {},
                  decoration: InputDecoration(
                    hintText:
                    "What should prospective students know\nabout your class? Potential exchange\nteachers?",
                    hintStyle: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
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
                  children: [
                    Text(
                      "1000",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 14),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
                padding: EdgeInsets.all(size.height * 0.01),
                child: Center(
                  child: Text(
                    "What is the target language of your classroom?",
                    style: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 14),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
                  padding: EdgeInsets.all(size.height * 0.01),
                  child: languageFlagList.isNotEmpty
                      ? Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColorLight),
                    ),
                    child: DropdownButton(
                      // Initial Value
                      hint: sourceLanguage == null
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
                            sourceLanguage!.languageFlag!,
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(width: 10),
                          Text(
                            sourceLanguage!.languageName.toString().capitalizeFirst ??
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
                      items: languageFlagList
                          .map((languageFlag) {
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
                      onChanged: (LanguageFlag? newValue) {
                        setState(() {
                          sourceLanguage = newValue!;
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
                  child: Text(
                    "What is the dominant language of your student?",
                    style: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 14),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
                padding: EdgeInsets.all(size.height * 0.01),
                child: languageFlag2List.isNotEmpty
                    ? Container(
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Theme.of(context).primaryColorLight),
                  ),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    icon:Icon(Icons.keyboard_arrow_down),
                    hint:targetLanguage == null
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
                        : Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                           targetLanguage!.languageFlag!,
                            fit: BoxFit.cover,
                            width: 40,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Text(
                           targetLanguage!.languageName
                                .toString()
                                .capitalizeFirst ??
                                "",
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    isExpanded: true,
                    items:
                  languageFlag2List.map(
                          (val) {
                        return DropdownMenuItem(
                            value: val,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  val.languageFlag!,
                                  fit: BoxFit.cover,
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  val.languageName
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
                            ));;
                      },
                    ).toList(),
                    onChanged: (LanguageFlag? newValue) {
                      setState(() {
                       targetLanguage = newValue!;
                      });
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //Todo: need to update
                      Expanded(
                        child: Center(
                          child: Text(
                            "1/4",
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

                          if(ModalRoute.of(context)!.settings.name =="language"){
                            //create class
                            createLanguage();

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
        ),);
  }
}

