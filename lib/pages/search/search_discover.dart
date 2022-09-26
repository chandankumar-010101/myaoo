import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:pangeachat/pages/search/search_view_controller.dart';
import '../../services/services.dart';

class SearchDiscoverView extends StatefulWidget {
  const SearchDiscoverView({Key? key}) : super(key: key);

  @override
  State<SearchDiscoverView> createState() => _SearchDiscoverViewState();
}

class _SearchDiscoverViewState extends State<SearchDiscoverView> {
  SearchViewController controller = Get.put(SearchViewController());
  var box = GetStorage();

  int? dayId;
  int? monthId;
  int? yearId;
  DateTime today = DateTime.now();

  verify() async {
    if (dayId == null || monthId == null || yearId == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please select a vaild date"),
        backgroundColor: Colors.red,
      ));
      return;
    }
    if (!isAdult("$dayId-$monthId-$yearId")) {
      Fluttertoast.showToast(
          msg: "Age is below 18 year's", webBgColor: "#ff0000",backgroundColor: Colors.red
      );
      return;
    }
    PangeaServices.updateUserAge(dayId!, monthId!, yearId!, context);
    if (!mounted) {
      setState(() {});
    }

  }

  bool isAdult(String birthDateString) {
    String datePattern = "dd-MM-yyyy";

    // Current time - at this moment

    // Parsed date to check
    DateTime birthDate = DateFormat(datePattern).parse(birthDateString);

    // Date to check but moved 18 years ahead
    DateTime adultDate = DateTime(
      birthDate.year + 18,
      birthDate.month,
      birthDate.day,
    );

    return adultDate.isBefore(today);
  }

  @override
  void initState() {
    super.initState();
    final int age1 = box.read("age") ?? 0;
    age1 == 0 ? controller.age.value = 0 : controller.age.value = age1;
  }

  @override
  Widget build(BuildContext context) {

    List list = List<int>.generate(31, (i) => i + 1);
    List month = List<int>.generate(12, (i) => i + 1);

    List year = [];
    for (var i = 1950; i < today.year; i++) {
      year.add(i);
    }
    year = List.from(year.reversed);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => controller.age.value >= 18
                  ?Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/logo.png"),
                  ),
                ),
              )
                  :  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Theme.of(context).colorScheme.onPrimary
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Please  verify that you are 18 years of age or older to enter",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 16),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 200,
                                child: DropdownButton<dynamic>(
                                  underline: Text(
                                    "",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 16),
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary,
                                    size: 30,
                                  ),
                                  isExpanded: true,
                                  value: dayId,
                                  hint: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Select Day",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontSize: 16),
                                    ),
                                  ),
                                  items: list.map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.all(8.0),
                                        child: Text(item.toString()),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) async {
                                    dayId = value;

                                    setState(() {
                                      dayId = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 200,
                                child: DropdownButton<dynamic>(
                                  underline: Text(
                                    "",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 16),
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary,
                                    size: 30,
                                  ),
                                  isExpanded: true,
                                  value: monthId,
                                  hint: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Select Month",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontSize: 16),
                                    ),
                                  ),
                                  items: month.map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.all(8.0),
                                        child: Text(item.toString()),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) async {
                                    monthId = value;

                                    setState(() {
                                      monthId = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 200,
                                child: DropdownButton<dynamic>(
                                  underline: Text(
                                    "",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontSize: 16),
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary,
                                    size: 30,
                                  ),
                                  isExpanded: true,
                                  value: yearId,
                                  hint: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Select Year",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontSize: 16),
                                    ),
                                  ),
                                  items: year.map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.all(8.0),
                                        child: Text(item.toString()),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) async {
                                    yearId = value;

                                    setState(() {
                                      yearId = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            verify();
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                border: Border.all(),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 6),
                                child: Text(
                                  "Verify",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontSize: 16),
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 134,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
