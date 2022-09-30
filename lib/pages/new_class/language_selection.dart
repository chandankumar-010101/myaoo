import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/services/controllers.dart';
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
    languageFlagList = await PangeaServices.getFlags();
    languageFlag2List = await PangeaServices.getFlags2();

    setState(() {});
  }

  bool validation() {
    if (classNameController.text.isEmpty) {
      PangeaControllers.toastMsg(msg: "Class name is required!");

      return false;
    }
    if (discriptionController.text.isEmpty) {
      PangeaControllers.toastMsg(msg:  "Description is required!");
      return false;
    }
    if (targetLanguage == null ||
        sourceLanguage == null ||
        languageLevelDropdownValue.isEmpty ||
        languageLevel == 0) {
      PangeaControllers.toastMsg(msg:  "Language must be selected!");

      return false;
    }
    if (classNameController.text.length >= 50) {
      PangeaControllers.toastMsg(msg:  "Class name length should below 50");
      return false;
    }
    if (cityController.text.length >= 50) {
      PangeaControllers.toastMsg(msg:  "City length should below 50");
      return false;
    }
    if (schoolController.text.length >= 50) {
      PangeaControllers.toastMsg(msg:  "School length should below 50");

      return false;
    }
    if (countryController.text.length >= 50) {
      PangeaControllers.toastMsg(msg:  "Country length should below 50");

      return false;
    }
    if (discriptionController.text.length >= 2000) {
      PangeaControllers.toastMsg(msg:  "Description length should below  2000");

      return false;
    }
    return true;
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

  fetchSourceLanguage() {
    List<LanguageFlag> list = languageFlag2List
        .where((element) => element.languageName == box.read("source_lang"))
        .toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    Padding(
    padding: EdgeInsets.all(5),
       child: Image.network(
          list.first.languageFlag!,
          fit: BoxFit.cover,
          width: 40,
          height: 40,
        ),),
        SizedBox(width: 10),
        Text(
          list.first.languageName.toString().capitalizeFirst ?? "",
          style: TextStyle().copyWith(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontSize: 14),
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
  fetchTargetLanguage() {
    List<LanguageFlag> list = languageFlagList
        .where((element) => element.languageName == box.read("target_lang"))
        .toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: Image.network(
          list.first.languageFlag!,
          fit: BoxFit.cover,
          width: 40,
          height: 40,

        ),),
        SizedBox(width: 10),
        Text(
          list.first.languageName.toString().capitalizeFirst ?? "",
          style: TextStyle().copyWith(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontSize: 14),
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  final box = GetStorage();

  void createLanguage() {
    if (!validation()) {
      return;
    }
    final int languageLevel = fetchLangLevel();
    if (classNameController.text.isEmpty) {
      PangeaControllers.toastMsg(msg: "Class name is required!",success: false);

      return;
    }
    if (discriptionController.text.isEmpty) {
      PangeaControllers.toastMsg(msg: "Description is required!",success: false);

      return;
    }
    if (targetLanguage == null ||
        sourceLanguage == null ||
        languageLevelDropdownValue.isEmpty ||
        languageLevel == 0) {
      PangeaControllers.toastMsg(msg: "Language must be selected!",success: false);
      return;
    }
    if (classNameController.text.length >= 50) {
      PangeaControllers.toastMsg(msg:  "Class name length should below 50",success: false);
      return;
    }
    if (cityController.text.length >= 50) {
      PangeaControllers.toastMsg(msg:  "City length should below 50",success: false);

      return;
    }
    if (schoolController.text.length >= 50) {
      PangeaControllers.toastMsg(msg:  "School length should below 50",success: false);
      return;
    }
    if (countryController.text.length >= 50) {
      PangeaControllers.toastMsg(msg: "Country length should below 50",success: false);
      return;
    }
    if (discriptionController.text.length >= 2000) {
      PangeaControllers.toastMsg(msg: "Description length should below  2000",success: false);

      return;
    }
    box.write("className", classNameController.text);
    box.write("cityName", cityController.text);
    box.write("countryName", countryController.text);
    box.write("languageLevel", languageLevel);
    box.write("scoolName", schoolController.text);
    box.write("disc", discriptionController.text);
    box.write("targetLanguage", sourceLanguage!.languageName);
    box.write("sourceLanage", targetLanguage!.languageName);
    context.vRouter.to("/newclass/class_permissions");
  }

  @override
  void initState() {
    super.initState();
    getFlags();
    classNameController.text = "";
    cityController.text = "";
    countryController.text = "";
    discriptionController.text = "";
    schoolController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String id = context.vRouter.queryParameters['class_id'] ?? "";

    if (id.isNotEmpty) {
      box.read("class_name") != null
          ? classNameController.text = box.read("class_name")
          : null;
      box.read("city_name") != null
          ? cityController.text = box.read("city_name")
          : null;
      box.read("country_name") != null
          ? countryController.text = box.read("country_name")
          : null;
      box.read("school_name") != null
          ? schoolController.text = box.read("school_name")
          : null;
      box.read("disc") != null
          ? discriptionController.text = box.read("disc")
          : null;
      if (box.read("language_level") != null) {
        switch (box.read("language_level")) {
          case 1:
            setState(() {
              languageLevelDropdownValue = 'A1';
            });
            break;
          case 2:
            setState(() {
              languageLevelDropdownValue = 'A2';
            });
            break;
          case 3:
            setState(() {
              languageLevelDropdownValue = 'B1';
            });
            break;
          case 4:
            setState(() {
              languageLevelDropdownValue = 'B2';
            });
            break;
          case 5:
            setState(() {
              languageLevelDropdownValue = 'C1';
            });
            break;
          case 6:
            setState(() {
              languageLevelDropdownValue = 'C2';
            });
            break;
        }
      }
      box.remove("class_name");
      box.remove("city_name");
      box.remove("school_name");
      box.remove("country_name");
      box.remove("disc");
    }

    return Scaffold(
      appBar:  AppBar(
              backgroundColor: Theme.of(context).backgroundColor,
              title: Text(
                id.isEmpty?"Create a Class":"Update class Info",
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
                icon: Icon(Icons.arrow_back, color:Theme.of(context).textTheme.bodyText1!.color),
                onPressed: () {
                  id.isNotEmpty?VRouter.of(context).to('/classDetails', queryParameters: {"id": id}): context.vRouter.to("/newclass");
                },
              ))
          ,
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
                enabled: id.isNotEmpty?false:true,
                controller: classNameController,
                autofocus: true,
                maxLength: 50,
                autocorrect: false,
                decoration: InputDecoration(
                  filled: id.isNotEmpty?true:null,
                  fillColor: id.isNotEmpty?Colors.grey:null,
                  hintText: "Name of Your Class",
                  hintStyle: TextStyle().copyWith(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: 14),
                ),
                textAlign: TextAlign.center,
              ),),
            Container(
              constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
              padding: EdgeInsets.all(size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    "assets/png/vector.svg",
                    fit: BoxFit.fill,
                    color:
                        Theme.of(context).colorScheme.onPrimary == Colors.white
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onPrimary,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: cityController,
                      autofocus: true,
                      maxLength: 50,
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
              constraints:
                  BoxConstraints(minWidth: 100, maxWidth: 650, minHeight: 40),
              padding: EdgeInsets.all(size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    "assets/png/vector.svg",
                    fit: BoxFit.fill,
                    color:
                        Theme.of(context).colorScheme.onPrimary == Colors.white
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onPrimary,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: countryController,
                      maxLength: 50,
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
                  SvgPicture.asset(
                    "assets/png/md_analyst.svg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                    color:
                        Theme.of(context).colorScheme.onPrimary == Colors.white
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onPrimary,
                  ),

                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      color: id.isNotEmpty?Colors.grey:null,
                      border: Border.all(
                          color: id.isNotEmpty?Colors.transparent:Theme.of(context).primaryColorLight),
                    ),
                    child: id.isEmpty
                        ? DropdownButton(
                            // Initial Value
                            hint: languageLevelDropdownValue.isEmpty
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
                            items: languageLevel.map((String items) {
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
                                languageLevelDropdownValue = newValue!;
                              });
                            },
                          )
                        : Container(
                            width: size.width,
                            height: 40,
                            child: Center(
                              child: Text(languageLevelDropdownValue),
                            ),
                          ),
                  )),
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
              padding: EdgeInsets.all(size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: SvgPicture.asset(
                      "assets/png/house.svg",
                      height: 40,
                      alignment: Alignment.center,
                      width: 40,
                      fit: BoxFit.contain,
                      color: Theme.of(context).colorScheme.onPrimary ==
                              Colors.white
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    controller: schoolController,
                    maxLength: 50,
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
                maxLength: 2000,
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
              constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
              padding: EdgeInsets.all(size.height * 0.01),
              child: Center(
                child: Text(
                  "What is the base language of your class?",
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
              child: languageFlag2List.isNotEmpty ? Container(

                      decoration: BoxDecoration(
                        color: id.isNotEmpty?Colors.grey:null,
                        border: Border.all(
                            color: id.isNotEmpty?Colors.transparent:Theme.of(context).primaryColorLight),
                      ),
                      child: id.isEmpty
                          ? DropdownButton(
                              underline: const SizedBox(),
                              icon: Icon(Icons.keyboard_arrow_down),
                              hint: targetLanguage == null
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
                                  : Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                            style: TextStyle().copyWith(
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .color,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ),
                              isExpanded: true,
                              items: languageFlag2List.map(
                                (val) {
                                  return DropdownMenuItem(
                                      value: val,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                      ));
                                },
                              ).toList(),
                              onChanged: (LanguageFlag? newValue) {
                                setState(() {
                                  targetLanguage = newValue!;
                                });
                              },
                            )
                          :fetchSourceLanguage(),
                    )
                  : Container(),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),

            ///text for language name
            Container(
              constraints: BoxConstraints(minWidth: 100, maxWidth: 650),
              padding: EdgeInsets.all(size.height * 0.01),
              child: Center(
                child: Text(
                  "What is the target language of your students?",
                  style: TextStyle().copyWith(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: 14),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ///flag and language
            Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
                padding: EdgeInsets.all(size.height * 0.01),
                child: languageFlagList.isNotEmpty
                    ? Container(
                        decoration: BoxDecoration(
                         color:id.isNotEmpty?Colors.grey:null,
                          border: Border.all(
                              color:id.isNotEmpty?Colors.grey:Theme.of(context).primaryColorLight),
                        ),
                        child: id.isEmpty
                            ? DropdownButton(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            sourceLanguage!.languageFlag!,
                                            fit: BoxFit.cover,
                                            width: 40,
                                            height: 40,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            sourceLanguage!.languageName
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
                                items: languageFlagList.map((languageFlag) {
                                  // print(items.languageFlag);
                                  return DropdownMenuItem(
                                      value: languageFlag,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                              )
                            :  fetchTargetLanguage(),
                )
                    : Container()),

            SizedBox(
              height: size.height * 0.03,
            ),

          ///buttons
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                ),
                child: id.isEmpty
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //Todo: need to update
                          Expanded(
                            child: Center(
                              child: Text(
                                "1/4",
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
                              createLanguage();
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
                              child: Icon(
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
                                  queryParameters: {"id": id});
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
                              final int languageLevel = fetchLangLevel();
                              if (discriptionController.text.isEmpty) {
                                PangeaControllers.toastMsg(msg:  "Class Description is required!");
                                return;
                              }
                              if (cityController.text.length >= 50) {
                                PangeaControllers.toastMsg(msg:  "City length should below 20");

                                return;
                              }
                              if (schoolController.text.length >= 50) {
                                PangeaControllers.toastMsg(msg:  "School length should below 20");

                                return;
                              }
                              if (countryController.text.length >= 50) {
                                PangeaControllers.toastMsg(msg:  "Country length should below 12");
                                return;
                              }
                              if (discriptionController.text.length >= 2000) {
                                PangeaControllers.toastMsg(msg:  "Description length should below 2000");
                                return;
                              }
                              final result = await showFutureLoadingDialog(
                                context: context,
                                future: () => PangeaServices.updateClassDetails(
                                  context: context,
                                  desc: discriptionController.text,
                                  city: cityController.text,
                                  roomId: id.toString(),
                                  languageLevel: languageLevel,
                                  country: countryController.text,
                                  schoolName: schoolController.text,
                                ),
                              );
                              if (result != null || result.result!) {
                                print("updated");
                                VRouter.of(context).to('/classDetails',
                                    queryParameters: {"id": id});
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
                                  "Update",
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
                      )),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
