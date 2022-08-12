import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pangeachat/config/app_config.dart';

import 'class_analytics_controller.dart';

class ClassAnalyticsScreen extends StatelessWidget {
  ClassAnalyticsScreen({Key? key}) : super(key: key);
  final controller = Get.put(ClassAnalyticsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15),
        title: const Text("Class Analytics",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            )),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(50, 50, 50, 10),
            child: Row(
              children: [
                Container(
                  height: 45,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(color: AppConfig.greyBorder)),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    icon: const Icon(Icons.arrow_drop_down_outlined,
                        color: Colors.black, size: 20),
                    hint: Obx(() => Center(
                          child: Text(
                            controller.classes.value,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: Colors.black),
                          ),
                        )),
                    isExpanded: false,
                    items: ["All Classes", "A1 Spanish", "A2 Spanish"].map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Center(
                            child: Text(val,
                                style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500)),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (String? value) {
                      controller.classes.value = value!;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 45,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(color: AppConfig.greyBorder)),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    icon: const Icon(Icons.arrow_drop_down_outlined,
                        color: Colors.black, size: 20),
                    hint: Obx(() => Center(
                          child: Text(
                            controller.sort.value,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: Colors.black),
                          ),
                        )),
                    isExpanded: false,
                    items: ["Minutes in App"].map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Center(
                            child: Text(val,
                                style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500)),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (String? value) {
                      controller.sort.value = value!;
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: AppConfig.lightGrey,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Most recent engagements",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: AppConfig.lightGrey,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Totals of this past week",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("In app",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Message",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Minutes in app",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Sent messages",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: AppConfig.greyBorder, width: 0.5)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Active chats",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                        )),
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: 6,
                    itemBuilder: (context, int index) => index % 2 == 0
                        ? Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("Eliza",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("Today, 4:13pm",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("Today, 4:13pm",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("34",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("153",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("1",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF4F4F4),
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("Marta",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF4F4F4),
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("Today, 2:13pm",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF4F4F4),
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("Today, 2:13pm",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF4F4F4),
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("5",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF4F4F4),
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("12",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF4F4F4),
                                        border: Border.all(
                                            color: AppConfig.greyBorder,
                                            width: 0.5)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text("2",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0)),
                                    ),
                                  )),
                            ],
                          ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
