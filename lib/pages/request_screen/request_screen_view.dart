import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/utils/api/class_details.dart';
import 'package:pangeachat/widgets/star_rating.dart';
import 'package:vrouter/vrouter.dart';

import '../../model/class_detail_model.dart';

class RequestScreenView extends StatefulWidget {
  RequestScreenView({Key? key}) : super(key: key);

  @override
  State<RequestScreenView> createState() => _RequestScreenViewState();
}

class _RequestScreenViewState extends State<RequestScreenView> {
  String text =
      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium. Sed ut perspiciatis unde omnis iste natus error sit voluptatem. ";

  // final ScreenArguments screenArguments ;
  ClassDetails classDetails = ClassDetails();

  ClassDetailUi? classDetailUi;

  callMethod(context) async {
    final routes = VRouter.of(context).queryParameters;
    if (routes["id"] != null) {
      classDetailUi = await classDetails.updateUserAge(routes["id"]);
    } else {
      // String? get roomId => VRouter.of(context).pathParameters['roomid'];
      classDetailUi = await classDetails
          .updateUserAge(VRouter.of(context).pathParameters['roomid']);
    }
  }

  @override
  Widget build(BuildContext context) {
    final routes = VRouter.of(context).queryParameters;
    log("User type${box.read("usertype")}");
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: callMethod(context),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Container();
          }
          if (classDetailUi == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 40, 50, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          classDetailUi!.profilePic != null
                              ? Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        classDetailUi!.profilePic.toString(),
                                    fit: BoxFit.cover,
                                    color: Colors.grey,
                                    imageBuilder: (context, imageProvider) {
                                      return Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: imageProvider)),
                                      );
                                    },
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2.0),
                                      shape: BoxShape.circle),
                                )
                              : Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          width: 2.0),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.people,
                                      size: 40,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ),
                          Positioned(
                              bottom: 4,
                              left: 60,
                              child: InkWell(
                                onTap: () async {},
                                child: Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: const Icon(
                                    Icons.school,
                                    color: Colors.black,
                                    size: 15.0,
                                  ),
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${classDetailUi?.classAuthor}",
                            style: TextStyle(
                                color: AppConfig.violetColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: AppConfig.violetColor,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "${classDetailUi?.city}",
                                style: TextStyle(
                                    color: AppConfig.violetColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 50.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.grey.shade200, width: 2.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ratings",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              StarRating(
                                color: const Color(0xffFFC403),
                                rating: double.parse(
                                    classDetailUi!.rating.toString()),
                                starCount: 5,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Number of Students",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.people,
                                color: Colors.grey,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${classDetailUi?.totalStudent.toString()}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Source Language",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Target Language",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${classDetailUi?.dominantLanguage}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_right_alt_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${classDetailUi?.targetLanguage}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: const Text("About me ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: Text("${classDetailUi?.description}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: const Text("Class Permissions",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      classDetailUi!.permissions!.isPublic!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Public Class",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isOpenEnrollment!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Open for enrollment",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isOpenEnrollment!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Open for exchange",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.oneToOneChatClass!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "1 to 1 Chat allowed",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.oneToOneChatExchange!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "1 to 1 chat within exchange",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isCreateRooms!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Create rooms",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isCreateRoomsExchange!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Create rooms within exchange",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isShareVideo!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Share videos",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isSharePhoto!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Share photos",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isShareFiles!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Share files",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isShareLocation!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Share location",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox(),
                      classDetailUi!.permissions!.isCreateStories!
                          ? Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: AppConfig.violetColor,
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  "Share stories",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12.0),
                                )
                              ],
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
                box.read("usertype") == 2
                    ? Container(
                        margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              height: 40,
                              color: AppConfig.violetColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: const Text("Request an Exchange",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0)),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 40,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: const Center(
                                child: Text(
                                  "Message Hayao",
                                  style: TextStyle(
                                      color: AppConfig.violetColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      color: AppConfig.violetColor,
                                      width: 2.0)),
                            )
                          ],
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              height: 40,
                              color: AppConfig.violetColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: const Text("Request enroll",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0)),
                            ),
                          ],
                        ),
                      ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1.0, 1.0),
                              blurRadius: 1.0)
                        ]),
                    child: Center(
                      child: Text("Class analytics",
                          style: TextStyle().copyWith(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0)
                      ]),
                  child: Center(
                    child: Text("Add students",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0)
                      ]),
                  child: Center(
                    child: Text("Find a language exchange",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0)
                      ]),
                  child: Center(
                    child: Text("Class permissions",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0)
                      ]),
                  child: Center(
                    child: Text("Student permissions",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0)
                      ]),
                  child: Center(
                    child: Text("Class Info",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0)
                      ]),
                  child: Center(
                    child: Text("Payment Info",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 40),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0)
                      ]),
                  child: Center(
                    child: Text("Delete Class",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
