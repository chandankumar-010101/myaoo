import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/utils/url_launcher.dart';
import 'package:pangeachat/widgets/star_rating.dart';
import 'package:vrouter/vrouter.dart';
import '../../model/class_detail_model.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import '../../services/class_services.dart';
import '../../utils/api_urls.dart';
import '../../widgets/matrix.dart';
import 'package:http/http.dart' as http;

class RequestScreenView extends StatefulWidget {
  const RequestScreenView({Key? key}) : super(key: key);

  @override
  State<RequestScreenView> createState() => _RequestScreenViewState();
}

class _RequestScreenViewState extends State<RequestScreenView> {
  String text =
      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium. Sed ut perspiciatis unde omnis iste natus error sit voluptatem. ";


  ClassDetailModel? classDetailUi;

  final box = GetStorage();

  Future<void> fetchUserInfo() async {
    final String accessToken = box.read("access") ?? "";
    final String roomID = VRouter.of(context).queryParameters["id"] ?? "";
    if (accessToken.isNotEmpty && roomID.isNotEmpty) {
      await http.get(
        Uri.parse(ApiUrls.getClassDetails + roomID),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $accessToken",
        },
      ).then((value) {
        if (value.statusCode == 200 || value.statusCode == 201) {
          classDetailUi = classDetailUiFromJson(value.body);
        } else {
          print(value.statusCode);
          print("Exception while fetching data");
        }
      }).catchError((e) {
        print("Error accured");
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUserInfo();
  }



  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    Size size1 = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text("Class Permissions "),
      ),
      body: FutureBuilder(
        future: fetchUserInfo(),
        builder: (context, snapshot) {
          if(snapshot.connectionState  == ConnectionState.waiting){
            return Center(child:CircularProgressIndicator());
          }else{
            return SingleChildScrollView(
              child: size >= 1100
                  ? Column(
                children: [
                  size >= 1380
                      ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 40, 50, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                classDetailUi!.profilePic != null
                                    ? Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0),
                                  child: CachedNetworkImage(
                                    imageUrl: classDetailUi!
                                        .profilePic
                                        .toString(),
                                    fit: BoxFit.cover,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    imageBuilder: (context,
                                        imageProvider) {
                                      return Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            shape:
                                            BoxShape.circle,
                                            image: DecorationImage(
                                                image:
                                                imageProvider)),
                                      );
                                    },
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                          width: 2.0),
                                      shape: BoxShape.circle),
                                )
                                    : Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                          width: 2.0),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(
                                        5.0),
                                    child: Icon(
                                      Icons.people,
                                      size: 40,
                                      color: Theme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 4,
                                    left: 60,
                                    child: InkWell(
                                      onTap: () async {},
                                      child: Container(
                                        padding:
                                        const EdgeInsets.all(2.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            border: Border.all(
                                                color:
                                                Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                                width: 2)),
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
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Text(
                                  "${classDetailUi?.classAuthor}",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontSize: 15),
                                ),
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      size: 20.0,
                                    ),
                                    const SizedBox(
                                      width: 6.0,
                                    ),
                                    Text(
                                      "${classDetailUi?.city}",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontSize: 12),
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
                          border: Border.all(
                              color: Colors.grey.shade200,
                              width: 2.0),
                        ),
                        child: Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ratings",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    StarRating(
                                      color: const Color(0xffFFC403),
                                      rating: double.parse(
                                          classDetailUi!.rating
                                              .toString()),
                                      starCount: 5,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Number of Students",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
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
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Source Language",
                                        style: const TextStyle()
                                            .copyWith(
                                            color:
                                            Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons
                                            .arrow_right_alt_outlined,
                                        size: 20,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Target Language",
                                        style: const TextStyle()
                                            .copyWith(
                                            color:
                                            Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.network(
                                              "https://staging.api.pangea.chat${classDetailUi!.flags![0].languageFlag.toString()}")),
                                    ]),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "${classDetailUi?.dominantLanguage}",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt_outlined,
                                      size: 20,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(children: [
                                      SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.network(
                                              "https://staging.api.pangea.chat${classDetailUi!.flags![1].languageFlag.toString()}")),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "${classDetailUi?.targetLanguage}",
                                        style: const TextStyle()
                                            .copyWith(
                                            color:
                                            Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ]),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: Text(
                          "About me ",
                          style: const TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: Text(
                          "${classDetailUi?.description}",
                          style: const TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: InkWell(
                          onTap: () {
                            // print("wst");
                          },
                          child: Text(
                            "Class Permissions",
                            style: const TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            classDetailUi!.permissions!.isPublic!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Public Class",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isOpenEnrollment!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Open for enrollment",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isOpenEnrollment!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Open for exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.oneToOneChatClass!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "1 to 1 Chat allowed",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!
                                .oneToOneChatExchange!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "1 to 1 chat within exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isCreateRooms!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Create rooms",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!
                                .isCreateRoomsExchange!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Create rooms within exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isShareVideo!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share videos",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isSharePhoto!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share photos",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isShareFiles!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share files",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isShareLocation!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share location",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isCreateStories!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share stories",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox()
                          ],
                        ),
                      ),
                      box.read("usertype") == 2
                          ? box.read("clientID") ==
                          classDetailUi!.classAuthorId
                          ? Container()
                          : Container(
                        margin: const EdgeInsets.fromLTRB(
                            50, 30, 50, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 200,
                              child: OutlinedButton(
                                style: OutlinedButton
                                    .styleFrom(
                                  shape:
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius
                                          .circular(
                                          25.0)),
                                  side: BorderSide(
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                  ),
                                ),
                                onPressed: () {
                                  final String id = context
                                      .vRouter
                                      .queryParameters[
                                  'id'] ??
                                      "";
                                  final box = GetStorage();
                                  if (id.isEmpty) {
                                    // print(
                                    //     "Unable to find class id");
                                  } else {
                                    box.write(
                                        "public",
                                        classDetailUi!
                                            .permissions!
                                            .isPublic);
                                    box.write(
                                        "openEnrollment",
                                        classDetailUi!
                                            .permissions!
                                            .isOpenEnrollment);
                                    box.write(
                                        "openExchange",
                                        classDetailUi!
                                            .permissions!
                                            .isOpenExchange);
                                    context.vRouter.to(
                                        "/classDetails/exchange_class",
                                        queryParameters: {
                                          "class_id": id,
                                        });
                                  }
                                },
                                child: Text(
                                  "Request an Exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color: Theme.of(
                                          context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 200,
                              child: OutlinedButton(
                                style: OutlinedButton
                                    .styleFrom(
                                  shape:
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius
                                          .circular(
                                          25.0)),
                                  side: BorderSide(
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                  ),
                                ),
                                onPressed: () {
                                  final routes =
                                      VRouter.of(context)
                                          .queryParameters;
                                  VRouter.of(context)
                                      .pathParameters[
                                  'roomid'];
                                  // print(classDetailUi!
                                  //     .classAuthorId
                                  //     .toString());
                                  // print(classDetailUi!.classAuthor
                                  //     .toString());

                                  if (routes["id"] !=
                                      null) {
                                    UrlLauncher(context,
                                        'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                        .openMatrixToUrl();
                                  } else {
                                    // String? get roomId => VRouter.of(context).pathParameters['roomid'];
                                    UrlLauncher(context,
                                        'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                        .openMatrixToUrl();
                                  }
                                },
                                child: Text(
                                  "Message ${classDetailUi?.classAuthor}",
                                  style: const TextStyle()
                                      .copyWith(
                                      color: Theme.of(
                                          context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                          : Container(
                        margin: const EdgeInsets.fromLTRB(
                            50, 30, 50, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Flexible(
                                flex: 0,
                                fit: FlexFit.tight,
                                child: OutlinedButton(
                                  style:
                                  OutlinedButton.styleFrom(
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            25.0)),
                                    side: BorderSide(
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary ==
                                          Colors.white
                                          ? Theme.of(context)
                                          .primaryColor
                                          : Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Request an Exchange",
                                    style: const TextStyle()
                                        .copyWith(
                                        color: Theme.of(
                                            context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight:
                                        FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 200,
                              child: Flexible(
                                flex: 0,
                                fit: FlexFit.tight,
                                child: OutlinedButton(
                                  style:
                                  OutlinedButton.styleFrom(
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            25.0)),
                                    side: BorderSide(
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary ==
                                          Colors.white
                                          ? Theme.of(context)
                                          .primaryColor
                                          : Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                  onPressed: () {
                                    final routes =
                                        VRouter.of(context)
                                            .queryParameters;
                                    VRouter.of(context)
                                        .pathParameters[
                                    'roomid'];
                                    // print(classDetailUi!
                                    //     .classAuthorId
                                    //     .toString());
                                    // print(classDetailUi!.classAuthor
                                    //     .toString());

                                    if (routes["id"] != null) {
                                      UrlLauncher(context,
                                          'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                          .openMatrixToUrl();
                                    } else {
                                      // String? get roomId => VRouter.of(context).pathParameters['roomid'];
                                      UrlLauncher(context,
                                          'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                          .openMatrixToUrl();
                                    }
                                  },
                                  child: Text(
                                    "Message ${classDetailUi?.classAuthor}",
                                    style: const TextStyle()
                                        .copyWith(
                                        color: Theme.of(
                                            context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight:
                                        FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      box.read("clientID") ==
                          classDetailUi!.classAuthorId
                          ? Flexible(
                        flex: 0,
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(
                              50, 10, 10, 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton
                                          .styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      onPressed: () {
                                        print(
                                            "${classDetailUi!.flags![0].languageFlag.toString()}");
                                        print(
                                            "${classDetailUi!.flags![1].languageFlag.toString()}");
                                      },
                                      child: Text(
                                        "Class analytics",
                                        style: const TextStyle()
                                            .copyWith(
                                            color: Theme.of(
                                                context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton
                                          .styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Add students",
                                        style: const TextStyle()
                                            .copyWith(
                                            color: Theme.of(
                                                context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton
                                          .styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Find a language exchange",
                                        style: const TextStyle()
                                            .copyWith(
                                            color: Theme.of(
                                                context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton
                                          .styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      onPressed: () {
                                        //print("haay haay");
                                        final String id = context
                                            .vRouter
                                            .queryParameters[
                                        'id'] ??
                                            "";
                                        final box =
                                        GetStorage();
                                        if (id.isEmpty) {
                                          // print(
                                          //     "Unable to find class id");
                                        } else {
                                          box.write(
                                              "public",
                                              classDetailUi!
                                                  .permissions!
                                                  .isPublic);
                                          box.write(
                                              "openEnrollment",
                                              classDetailUi!
                                                  .permissions!
                                                  .isOpenEnrollment);
                                          box.write(
                                              "openExchange",
                                              classDetailUi!
                                                  .permissions!
                                                  .isOpenExchange);
                                          context.vRouter.to(
                                              "/classDetails/update_class_permissions",
                                              queryParameters: {
                                                "class_id": id,
                                              });
                                        }
                                      },
                                      child: Text(
                                        "Class permissions",
                                        style: const TextStyle()
                                            .copyWith(
                                            color: Theme.of(
                                                context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton
                                          .styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      onPressed: () {
                                        //print("haay");
                                        final String id = context
                                            .vRouter
                                            .queryParameters[
                                        'id'] ??
                                            "";
                                        final box =
                                        GetStorage();
                                        if (id.isEmpty) {
                                          // print(
                                          //     "Unable to find class id");
                                        } else {
                                          box.write(
                                              "oneToOneClass",
                                              classDetailUi!
                                                  .permissions!
                                                  .oneToOneChatClass);
                                          box.write(
                                              "oneToOneExchange",
                                              classDetailUi!
                                                  .permissions!
                                                  .oneToOneChatExchange);
                                          box.write(
                                              "createRoom",
                                              classDetailUi!
                                                  .permissions!
                                                  .isCreateRooms);
                                          box.write(
                                              "createRoomExchange",
                                              classDetailUi!
                                                  .permissions!
                                                  .isCreateRoomsExchange);
                                          box.write(
                                              "createStories",
                                              classDetailUi!
                                                  .permissions!
                                                  .isCreateStories);
                                          box.write(
                                              "shareVideo",
                                              classDetailUi!
                                                  .permissions!
                                                  .isShareVideo);
                                          box.write(
                                              "sharePhotos",
                                              classDetailUi!
                                                  .permissions!
                                                  .isSharePhoto);
                                          box.write(
                                              "shareFiles",
                                              classDetailUi!
                                                  .permissions!
                                                  .isShareFiles);
                                          box.write(
                                              "shareLocation",
                                              classDetailUi!
                                                  .permissions!
                                                  .isShareLocation);
                                          context.vRouter.to(
                                              "/classDetails/update_student_permissions",
                                              queryParameters: {
                                                "class_id": id,
                                              });
                                        }
                                      },
                                      child: Text(
                                          "Students permissions",
                                          style: const TextStyle()
                                              .copyWith(
                                              color: Theme.of(
                                                  context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              fontWeight:
                                              FontWeight
                                                  .w400,
                                              fontSize:
                                              12)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton
                                          .styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      onPressed: () {
                                        final String id = context
                                            .vRouter
                                            .queryParameters[
                                        'id'] ??
                                            "";
                                        final box =
                                        GetStorage();
                                        if (id.isEmpty) {
                                          // print(
                                          //     "Unable to find class id");
                                        } else {
                                          box.write(
                                              "class_name",
                                              classDetailUi!
                                                  .className);
                                          box.write(
                                              "city_name",
                                              classDetailUi!
                                                  .city);
                                          box.write(
                                              "country_name",
                                              classDetailUi!
                                                  .country);
                                          box.write(
                                              "language_level",
                                              classDetailUi!
                                                  .languageLevel);
                                          box.write(
                                              "school_name",
                                              classDetailUi!
                                                  .schoolName);
                                          box.write(
                                              "disc",
                                              classDetailUi!
                                                  .description);
                                          box.write(
                                              "source_lang",
                                              classDetailUi!
                                                  .dominantLanguage);
                                          box.write(
                                              "target_lang",
                                              classDetailUi!
                                                  .targetLanguage);
                                          context.vRouter.to(
                                              "/classDetails/update_language",
                                              queryParameters: {
                                                "class_id": id,
                                              });
                                        }
                                      },
                                      child: Text(
                                        "Class Info",
                                        style: const TextStyle()
                                            .copyWith(
                                            color: Theme.of(
                                                context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: OutlinedButton(
                                      style: OutlinedButton
                                          .styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                25.0)),
                                        side: BorderSide(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Payment Info",
                                        style: const TextStyle()
                                            .copyWith(
                                            color: Theme.of(
                                                context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: Flexible(
                                      child: OutlinedButton(
                                        style: OutlinedButton
                                            .styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius
                                                  .circular(
                                                  25.0)),
                                          side: BorderSide(
                                            width: 2,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary ==
                                                Colors.white
                                                ? Theme.of(
                                                context)
                                                .primaryColor
                                                : Theme.of(
                                                context)
                                                .colorScheme
                                                .onPrimary,
                                          ),
                                        ),
                                        onPressed: () async {
                                          final String id = context
                                              .vRouter
                                              .queryParameters[
                                          'id'] ??
                                              "";
                                          final confirmed =
                                          await showOkCancelAlertDialog(
                                            useRootNavigator:
                                            false,
                                            context: context,
                                            title: L10n.of(
                                                context)!
                                                .areYouSure,
                                            okLabel: L10n.of(
                                                context)!
                                                .ok,
                                            cancelLabel:
                                            L10n.of(context)!
                                                .cancel,
                                          );
                                          if (confirmed ==
                                              OkCancelResult
                                                  .ok) {
                                            final room = Matrix
                                                .of(context)
                                                .client
                                                .getRoomById(
                                                id);
                                            if (room != null) {
                                              final success =
                                              await showFutureLoadingDialog(
                                                  context:
                                                  context,
                                                  future: () =>
                                                      room.leave());
                                              if (success
                                                  .error ==
                                                  null) {
                                                final box =
                                                GetStorage();
                                                String token =
                                                box.read(
                                                    "access");
                                                if (kDebugMode) {
                                                  print(token);
                                                }
                                                ClassServices
                                                    .deleteClass(
                                                    roomId: room
                                                        .id,
                                                    context:
                                                    context);
                                                if (kDebugMode) {
                                                  print(
                                                      room.id);
                                                }

                                                VRouter.of(
                                                    context)
                                                    .to('/rooms');
                                              }
                                            } else {
                                              // print(
                                              //     "room is null");
                                            }
                                          }
                                        },
                                        child: Text(
                                          "Delete Class",
                                          style: const TextStyle()
                                              .copyWith(
                                              color: Theme.of(
                                                  context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .color,
                                              fontWeight:
                                              FontWeight
                                                  .w400,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                          : Container(),
                    ],
                  )
                      : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 40, 50, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                classDetailUi!.profilePic != null
                                    ? Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0),
                                  child: CachedNetworkImage(
                                    imageUrl: classDetailUi!
                                        .profilePic
                                        .toString(),
                                    fit: BoxFit.cover,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    imageBuilder: (context,
                                        imageProvider) {
                                      return Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            shape:
                                            BoxShape.circle,
                                            image: DecorationImage(
                                                image:
                                                imageProvider)),
                                      );
                                    },
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                          width: 2.0),
                                      shape: BoxShape.circle),
                                )
                                    : Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary ==
                                              Colors.white
                                              ? Theme.of(
                                              context)
                                              .primaryColor
                                              : Theme.of(
                                              context)
                                              .colorScheme
                                              .onPrimary,
                                          width: 2.0),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(
                                        5.0),
                                    child: Icon(
                                      Icons.people,
                                      size: 40,
                                      color: Theme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 4,
                                    left: 60,
                                    child: InkWell(
                                      onTap: () async {},
                                      child: Container(
                                        padding:
                                        const EdgeInsets.all(2.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary ==
                                                    Colors.white
                                                    ? Theme.of(
                                                    context)
                                                    .primaryColor
                                                    : Theme.of(
                                                    context)
                                                    .colorScheme
                                                    .onPrimary,
                                                width: 2)),
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
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Text(
                                  "${classDetailUi?.classAuthor}",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontSize: 15),
                                ),
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary ==
                                          Colors.white
                                          ? Theme.of(context)
                                          .primaryColor
                                          : Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      size: 20.0,
                                    ),
                                    const SizedBox(
                                      width: 6.0,
                                    ),
                                    Text(
                                      "${classDetailUi?.city}",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontSize: 12),
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
                          border: Border.all(
                              color: Colors.grey.shade200,
                              width: 2.0),
                        ),
                        child: Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ratings",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    StarRating(
                                      color: const Color(0xffFFC403),
                                      rating: double.parse(
                                          classDetailUi!.rating
                                              .toString()),
                                      starCount: 5,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Number of Students",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
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
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Source Language",
                                        style: const TextStyle()
                                            .copyWith(
                                            color:
                                            Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons
                                            .arrow_right_alt_outlined,
                                        size: 20,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Target Language",
                                        style: const TextStyle()
                                            .copyWith(
                                            color:
                                            Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.network(
                                              "https://staging.api.pangea.chat${classDetailUi!.flags![0].languageFlag.toString()}")),
                                    ]),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "${classDetailUi?.dominantLanguage}",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt_outlined,
                                      size: 20,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(children: [
                                      SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.network(
                                              "https://staging.api.pangea.chat${classDetailUi!.flags![1].languageFlag.toString()}")),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "${classDetailUi?.targetLanguage}",
                                        style: const TextStyle()
                                            .copyWith(
                                            color:
                                            Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ]),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: Text(
                          "About me ",
                          style: const TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: Text(
                          "${classDetailUi?.description}",
                          style: const TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: InkWell(
                          onTap: () {
                            //print("wst");
                          },
                          child: Text(
                            "Class Permissions",
                            style: const TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.fromLTRB(50, 10, 50, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            classDetailUi!.permissions!.isPublic!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Public Class",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isOpenEnrollment!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Open for enrollment",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isOpenEnrollment!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Open for exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.oneToOneChatClass!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "1 to 1 Chat allowed",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!
                                .oneToOneChatExchange!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "1 to 1 chat within exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isCreateRooms!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Create rooms",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!
                                .isCreateRoomsExchange!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Create rooms within exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isShareVideo!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share videos",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isSharePhoto!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share photos",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!.permissions!.isShareFiles!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share files",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isShareLocation!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share location",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox(),
                            classDetailUi!
                                .permissions!.isCreateStories!
                                ? Row(
                              children: [
                                Container(
                                  decoration:
                                  const BoxDecoration(
                                      color: AppConfig
                                          .violetColor,
                                      shape:
                                      BoxShape.circle),
                                  padding:
                                  const EdgeInsets.all(3.0),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Share stories",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                                : const SizedBox()
                          ],
                        ),
                      ),
                      box.read("usertype") == 2
                          ? box.read("clientID") ==
                          classDetailUi!.classAuthorId
                          ? Container()
                          : Container(
                        margin: const EdgeInsets.fromLTRB(
                            50, 30, 50, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 200,
                              child: OutlinedButton(
                                style: OutlinedButton
                                    .styleFrom(
                                  shape:
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius
                                          .circular(
                                          25.0)),
                                  side: BorderSide(
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Request an Exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color: Theme.of(
                                          context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 200,
                              child: OutlinedButton(
                                style: OutlinedButton
                                    .styleFrom(
                                  shape:
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius
                                          .circular(
                                          25.0)),
                                  side: BorderSide(
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                  ),
                                ),
                                onPressed: () {
                                  final routes =
                                      VRouter.of(context)
                                          .queryParameters;
                                  VRouter.of(context)
                                      .pathParameters[
                                  'roomid'];
                                  // print(classDetailUi!
                                  //     .classAuthorId
                                  //     .toString());
                                  // print(classDetailUi!.classAuthor
                                  //     .toString());

                                  if (routes["id"] !=
                                      null) {
                                    UrlLauncher(context,
                                        'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                        .openMatrixToUrl();
                                  } else {
                                    // String? get roomId => VRouter.of(context).pathParameters['roomid'];
                                    UrlLauncher(context,
                                        'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                        .openMatrixToUrl();
                                  }
                                },
                                child: Text(
                                  "Message ${classDetailUi?.classAuthor}",
                                  style: const TextStyle()
                                      .copyWith(
                                      color: Theme.of(
                                          context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                          : Container(
                        margin: const EdgeInsets.fromLTRB(
                            50, 30, 50, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 200,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(
                                          25.0)),
                                  side: BorderSide(
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Request an Exchange",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 200,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(
                                          25.0)),
                                  side: BorderSide(
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary ==
                                        Colors.white
                                        ? Theme.of(context)
                                        .primaryColor
                                        : Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                  ),
                                ),
                                onPressed: () {
                                  final routes =
                                      VRouter.of(context)
                                          .queryParameters;
                                  VRouter.of(context)
                                      .pathParameters['roomid'];
                                  // print(classDetailUi!
                                  //     .classAuthorId
                                  //     .toString());
                                  // print(classDetailUi!.classAuthor
                                  //     .toString());

                                  if (routes["id"] != null) {
                                    UrlLauncher(context,
                                        'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                        .openMatrixToUrl();
                                  } else {
                                    // String? get roomId => VRouter.of(context).pathParameters['roomid'];
                                    UrlLauncher(context,
                                        'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                        .openMatrixToUrl();
                                  }
                                },
                                child: Text(
                                  "Message ${classDetailUi?.classAuthor}",
                                  style: const TextStyle()
                                      .copyWith(
                                      color:
                                      Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      box.read("clientID") ==
                          classDetailUi!.classAuthorId
                          ? Flexible(
                        flex: 0,
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(
                              50, 10, 50, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(children: [
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Class analytics",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(
                                              context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Add students",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(
                                              context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Find a language exchange",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(
                                              context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                              ]),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () {
                                      //print("haay haay");
                                      final String id = context
                                          .vRouter
                                          .queryParameters[
                                      'id'] ??
                                          "";
                                      final box = GetStorage();
                                      if (id.isEmpty) {
                                        // print(
                                        //     "Unable to find class id");
                                      } else {
                                        box.write(
                                            "public",
                                            classDetailUi!
                                                .permissions!
                                                .isPublic);
                                        box.write(
                                            "openEnrollment",
                                            classDetailUi!
                                                .permissions!
                                                .isOpenEnrollment);
                                        box.write(
                                            "openExchange",
                                            classDetailUi!
                                                .permissions!
                                                .isOpenExchange);
                                        context.vRouter.to(
                                            "/classDetails/update_class_permissions",
                                            queryParameters: {
                                              "class_id": id,
                                            });
                                      }
                                    },
                                    child: Text(
                                      "Class permissions",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(
                                              context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () {
                                      //print("haay");
                                      final String id = context
                                          .vRouter
                                          .queryParameters[
                                      'id'] ??
                                          "";
                                      final box = GetStorage();
                                      if (id.isEmpty) {
                                        // print(
                                        //     "Unable to find class id");
                                      } else {
                                        box.write(
                                            "oneToOneClass",
                                            classDetailUi!
                                                .permissions!
                                                .oneToOneChatClass);
                                        box.write(
                                            "oneToOneExchange",
                                            classDetailUi!
                                                .permissions!
                                                .oneToOneChatExchange);
                                        box.write(
                                            "createRoom",
                                            classDetailUi!
                                                .permissions!
                                                .isCreateRooms);
                                        box.write(
                                            "createRoomExchange",
                                            classDetailUi!
                                                .permissions!
                                                .isCreateRoomsExchange);
                                        box.write(
                                            "createStories",
                                            classDetailUi!
                                                .permissions!
                                                .isCreateStories);
                                        box.write(
                                            "shareVideo",
                                            classDetailUi!
                                                .permissions!
                                                .isShareVideo);
                                        box.write(
                                            "sharePhotos",
                                            classDetailUi!
                                                .permissions!
                                                .isSharePhoto);
                                        box.write(
                                            "shareFiles",
                                            classDetailUi!
                                                .permissions!
                                                .isShareFiles);
                                        box.write(
                                            "shareLocation",
                                            classDetailUi!
                                                .permissions!
                                                .isShareLocation);
                                        context.vRouter.to(
                                            "/classDetails/update_student_permissions",
                                            queryParameters: {
                                              "class_id": id,
                                            });
                                      }
                                    },
                                    child: Text(
                                        "Students permissions",
                                        style: const TextStyle()
                                            .copyWith(
                                            color: Theme.of(
                                                context)
                                                .textTheme
                                                .bodyText1!
                                                .color,
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            fontSize: 12)),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () {
                                      final String id = context
                                          .vRouter
                                          .queryParameters[
                                      'id'] ??
                                          "";
                                      final box = GetStorage();
                                      if (id.isEmpty) {
                                        // print(
                                        //     "Unable to find class id");
                                      } else {
                                        box.write(
                                            "class_name",
                                            classDetailUi!
                                                .className);
                                        box.write(
                                            "city_name",
                                            classDetailUi!
                                                .city);
                                        box.write(
                                            "country_name",
                                            classDetailUi!
                                                .country);
                                        box.write(
                                            "language_level",
                                            classDetailUi!
                                                .languageLevel);
                                        box.write(
                                            "school_name",
                                            classDetailUi!
                                                .schoolName);
                                        box.write(
                                            "disc",
                                            classDetailUi!
                                                .description);
                                        box.write(
                                            "source_lang",
                                            classDetailUi!
                                                .dominantLanguage);
                                        box.write(
                                            "target_lang",
                                            classDetailUi!
                                                .targetLanguage);
                                        context.vRouter.to(
                                            "/classDetails/update_language",
                                            queryParameters: {
                                              "class_id": id,
                                            });
                                      }
                                    },
                                    child: Text(
                                      "Class Info",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(
                                              context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                              ]),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Payment Info",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(
                                              context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                    style: OutlinedButton
                                        .styleFrom(
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              25.0)),
                                      side: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary ==
                                            Colors.white
                                            ? Theme.of(context)
                                            .primaryColor
                                            : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    onPressed: () async {
                                      final String id = context
                                          .vRouter
                                          .queryParameters[
                                      'id'] ??
                                          "";
                                      final confirmed =
                                      await showOkCancelAlertDialog(
                                        useRootNavigator: false,
                                        context: context,
                                        title: L10n.of(context)!
                                            .areYouSure,
                                        okLabel:
                                        L10n.of(context)!
                                            .ok,
                                        cancelLabel:
                                        L10n.of(context)!
                                            .cancel,
                                      );
                                      if (confirmed ==
                                          OkCancelResult.ok) {
                                        final room = Matrix.of(
                                            context)
                                            .client
                                            .getRoomById(id);
                                        if (room != null) {
                                          final success =
                                          await showFutureLoadingDialog(
                                              context:
                                              context,
                                              future: () =>
                                                  room.leave());
                                          if (success.error ==
                                              null) {
                                            final box =
                                            GetStorage();
                                            String token = box
                                                .read("access");
                                            if (kDebugMode) {
                                              print(token);
                                            }
                                            ClassServices
                                                .deleteClass(
                                                context:
                                                context,
                                                roomId: room
                                                    .id);
                                            if (kDebugMode) {
                                              print(room.id);
                                            }

                                            VRouter.of(context)
                                                .to('/rooms');
                                          }
                                        } else {
                                          //print("room is null");
                                        }
                                      }
                                    },
                                    child: Text(
                                      "Delete Class",
                                      style: const TextStyle()
                                          .copyWith(
                                          color: Theme.of(
                                              context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight:
                                          FontWeight
                                              .w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      )
                          : Container(),
                    ],
                  ),
                ],
              )
                  : Column(
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
                              margin:
                              const EdgeInsets.only(top: 10.0),
                              child: CachedNetworkImage(
                                imageUrl: classDetailUi!.profilePic
                                    .toString(),
                                fit: BoxFit.cover,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                imageBuilder:
                                    (context, imageProvider) {
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
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary ==
                                          Colors.white
                                          ? Theme.of(context)
                                          .primaryColor
                                          : Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      width: 2.0),
                                  shape: BoxShape.circle),
                            )
                                : Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary ==
                                          Colors.white
                                          ? Theme.of(context)
                                          .primaryColor
                                          : Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      width: 2.0),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.people,
                                  size: 40,
                                  color:
                                  Theme.of(context).primaryColor,
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
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            width: 2)),
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
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontSize: 15),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                  size: 20.0,
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  "${classDetailUi?.city}",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontSize: 12),
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
                      border: Border.all(
                          color: Colors.grey.shade200, width: 2.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ratings",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
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
                                Text(
                                  "",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
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
                            Text(
                              "Number of Students",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
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
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
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
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Text(
                                      "Source Language",
                                      style: const TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt_outlined,
                                    size: 20,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Text(
                                      "Target Language",
                                      style: const TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Image.network(
                                          "https://staging.api.pangea.chat${classDetailUi!.flags![0].languageFlag.toString()}")),
                                ]),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${classDetailUi?.dominantLanguage}",
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  size: 20,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(children: [
                                  SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Image.network(
                                          "https://staging.api.pangea.chat${classDetailUi!.flags![1].languageFlag.toString()}")),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${classDetailUi?.targetLanguage}",
                                    style: const TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ]),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: Text(
                      "About me ",
                      style: const TextStyle().copyWith(
                          color:
                          Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: Text(
                      "${classDetailUi?.description}",
                      style: const TextStyle().copyWith(
                          color:
                          Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: Text(
                      "Class Permissions",
                      style: const TextStyle().copyWith(
                          color:
                          Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
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
                            Text(
                              "Public Class",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Open for enrollment",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Open for exchange",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "1 to 1 Chat allowed",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "1 to 1 chat within exchange",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Create rooms",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Create rooms within exchange",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Share videos",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Share photos",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Share files",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Share location",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
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
                            Text(
                              "Share stories",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            )
                          ],
                        )
                            : const SizedBox()
                      ],
                    ),
                  ),
                  box.read("usertype") == 2
                      ? box.read("clientID") == classDetailUi!.classAuthorId
                      ? Container()
                      : Container(
                    margin:
                    const EdgeInsets.fromLTRB(50, 30, 50, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Request an Exchange",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {
                              final routes = VRouter.of(context)
                                  .queryParameters;
                              VRouter.of(context)
                                  .pathParameters['roomid'];
                              // print(classDetailUi!
                              //     .classAuthorId
                              //     .toString());
                              // print(classDetailUi!.classAuthor
                              //     .toString());

                              if (routes["id"] != null) {
                                UrlLauncher(context,
                                    'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                    .openMatrixToUrl();
                              } else {
                                // String? get roomId => VRouter.of(context).pathParameters['roomid'];
                                UrlLauncher(context,
                                    'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                    .openMatrixToUrl();
                              }
                            },
                            child: Text(
                              "Message ${classDetailUi?.classAuthor}",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                      : Container(
                    margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Request an Exchange",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {
                              final routes =
                                  VRouter.of(context).queryParameters;
                              VRouter.of(context)
                                  .pathParameters['roomid'];
                              // print(classDetailUi!
                              //     .classAuthorId
                              //     .toString());
                              // print(classDetailUi!.classAuthor
                              //     .toString());

                              if (routes["id"] != null) {
                                UrlLauncher(context,
                                    'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                    .openMatrixToUrl();
                              } else {
                                // String? get roomId => VRouter.of(context).pathParameters['roomid'];
                                UrlLauncher(context,
                                    'https://matrix.to/#/${classDetailUi!.classAuthorId.toString()}')
                                    .openMatrixToUrl();
                              }
                            },
                            child: Text(
                              "Message ${classDetailUi?.classAuthor}",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  box.read("clientID") == classDetailUi!.classAuthorId
                      ? size >= 1080
                      ? Container(
                    margin:
                    const EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Class analytics",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Add students",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Find a language exchange",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {
                                //print("haay haay");
                                final String id = context.vRouter
                                    .queryParameters['id'] ??
                                    "";
                                final box = GetStorage();
                                if (id.isEmpty) {
                                  // print(
                                  //     "Unable to find class id");
                                } else {
                                  box.write(
                                      "public",
                                      classDetailUi!
                                          .permissions!.isPublic);
                                  box.write(
                                      "openEnrollment",
                                      classDetailUi!.permissions!
                                          .isOpenEnrollment);
                                  box.write(
                                      "openExchange",
                                      classDetailUi!.permissions!
                                          .isOpenExchange);
                                  context.vRouter.to(
                                      "/classDetails/update_class_permissions",
                                      queryParameters: {
                                        "class_id": id,
                                      });
                                }
                              },
                              child: Text(
                                "Class permissions",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {
                                // print("haay");
                                final String id = context.vRouter
                                    .queryParameters['id'] ??
                                    "";
                                final box = GetStorage();
                                if (id.isEmpty) {
                                  // print(
                                  //     "Unable to find class id");
                                } else {
                                  box.write(
                                      "oneToOneClass",
                                      classDetailUi!.permissions!
                                          .oneToOneChatClass);
                                  box.write(
                                      "oneToOneExchange",
                                      classDetailUi!.permissions!
                                          .oneToOneChatExchange);
                                  box.write(
                                      "createRoom",
                                      classDetailUi!.permissions!
                                          .isCreateRooms);
                                  box.write(
                                      "createRoomExchange",
                                      classDetailUi!.permissions!
                                          .isCreateRoomsExchange);
                                  box.write(
                                      "createStories",
                                      classDetailUi!.permissions!
                                          .isCreateStories);
                                  box.write(
                                      "shareVideo",
                                      classDetailUi!.permissions!
                                          .isShareVideo);
                                  box.write(
                                      "sharePhotos",
                                      classDetailUi!.permissions!
                                          .isSharePhoto);
                                  box.write(
                                      "shareFiles",
                                      classDetailUi!.permissions!
                                          .isShareFiles);
                                  box.write(
                                      "shareLocation",
                                      classDetailUi!.permissions!
                                          .isShareLocation);
                                  context.vRouter.to(
                                      "/classDetails/update_student_permissions",
                                      queryParameters: {
                                        "class_id": id,
                                      });
                                }
                              },
                              child: Text("Students permissions",
                                  style: const TextStyle()
                                      .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize: 12)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {
                                final String id = context.vRouter
                                    .queryParameters['id'] ??
                                    "";
                                final box = GetStorage();
                                if (id.isEmpty) {
                                  //print("Unable to find class id");
                                } else {
                                  box.write("class_name",
                                      classDetailUi!.className);
                                  box.write("city_name",
                                      classDetailUi!.city);
                                  box.write("country_name",
                                      classDetailUi!.country);
                                  box.write(
                                      "language_level",
                                      classDetailUi!
                                          .languageLevel);
                                  box.write("school_name",
                                      classDetailUi!.schoolName);
                                  box.write("disc",
                                      classDetailUi!.description);
                                  box.write(
                                      "source_lang",
                                      classDetailUi!
                                          .dominantLanguage);
                                  box.write(
                                      "target_lang",
                                      classDetailUi!
                                          .targetLanguage);
                                  context.vRouter.to(
                                      "/classDetails/update_language",
                                      queryParameters: {
                                        "class_id": id,
                                      });
                                }
                              },
                              child: Text(
                                "Class Info",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Payment Info",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () async {
                                final String id = context.vRouter
                                    .queryParameters['id'] ??
                                    "";
                                final confirmed =
                                await showOkCancelAlertDialog(
                                  useRootNavigator: false,
                                  context: context,
                                  title: L10n.of(context)!
                                      .areYouSure,
                                  okLabel: L10n.of(context)!.ok,
                                  cancelLabel:
                                  L10n.of(context)!.cancel,
                                );
                                if (confirmed ==
                                    OkCancelResult.ok) {
                                  final room = Matrix.of(context)
                                      .client
                                      .getRoomById(id);
                                  if (room != null) {
                                    final success =
                                    await showFutureLoadingDialog(
                                        context: context,
                                        future: () =>
                                            room.leave());
                                    if (success.error == null) {
                                      final box = GetStorage();
                                      String token =
                                      box.read("access");
                                      if (kDebugMode) {
                                        print(token);
                                      }
                                      ClassServices.deleteClass(
                                          context: context,
                                          roomId: room.id);
                                      if (kDebugMode) {
                                        print(room.id);
                                      }

                                      VRouter.of(context)
                                          .to('/rooms');
                                    }
                                  } else {
                                    //print("room is null");
                                  }
                                }
                              },
                              child: Text(
                                "Delete Class",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  )
                      : Container(
                    margin:
                    const EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Class analytics",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: Flexible(
                            flex: 0,
                            fit: FlexFit.tight,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary ==
                                      Colors.white
                                      ? Theme.of(context)
                                      .primaryColor
                                      : Theme.of(context)
                                      .colorScheme
                                      .onPrimary,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Add students",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Find a language exchange",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {
                              //print("haay haay");
                              final String id = context.vRouter
                                  .queryParameters['id'] ??
                                  "";
                              final box = GetStorage();
                              if (id.isEmpty) {
                                // print(
                                //     "Unable to find class id");
                              } else {
                                box.write(
                                    "public",
                                    classDetailUi!
                                        .permissions!.isPublic);
                                box.write(
                                    "openEnrollment",
                                    classDetailUi!.permissions!
                                        .isOpenEnrollment);
                                box.write(
                                    "openExchange",
                                    classDetailUi!.permissions!
                                        .isOpenExchange);
                                context.vRouter.to(
                                    "/classDetails/update_class_permissions",
                                    queryParameters: {
                                      "class_id": id,
                                    });
                              }
                            },
                            child: Text(
                              "Class permissions",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {
                              //print("haay");
                              final String id = context.vRouter
                                  .queryParameters['id'] ??
                                  "";
                              final box = GetStorage();
                              if (id.isEmpty) {
                                // print(
                                //     "Unable to find class id");
                              } else {
                                box.write(
                                    "oneToOneClass",
                                    classDetailUi!.permissions!
                                        .oneToOneChatClass);
                                box.write(
                                    "oneToOneExchange",
                                    classDetailUi!.permissions!
                                        .oneToOneChatExchange);
                                box.write(
                                    "createRoom",
                                    classDetailUi!.permissions!
                                        .isCreateRooms);
                                box.write(
                                    "createRoomExchange",
                                    classDetailUi!.permissions!
                                        .isCreateRoomsExchange);
                                box.write(
                                    "createStories",
                                    classDetailUi!.permissions!
                                        .isCreateStories);
                                box.write(
                                    "shareVideo",
                                    classDetailUi!.permissions!
                                        .isShareVideo);
                                box.write(
                                    "sharePhotos",
                                    classDetailUi!.permissions!
                                        .isSharePhoto);
                                box.write(
                                    "shareFiles",
                                    classDetailUi!.permissions!
                                        .isShareFiles);
                                box.write(
                                    "shareLocation",
                                    classDetailUi!.permissions!
                                        .isShareLocation);
                                context.vRouter.to(
                                    "/classDetails/update_student_permissions",
                                    queryParameters: {
                                      "class_id": id,
                                    });
                              }
                            },
                            child: Text("Students permissions",
                                style: const TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {
                              final String id = context.vRouter
                                  .queryParameters['id'] ??
                                  "";
                              final box = GetStorage();
                              if (id.isEmpty) {
                                //print("Unable to find class id");
                              } else {
                                box.write("class_name",
                                    classDetailUi!.className);
                                box.write("city_name",
                                    classDetailUi!.city);
                                box.write("country_name",
                                    classDetailUi!.country);
                                box.write("language_level",
                                    classDetailUi!.languageLevel);
                                box.write("school_name",
                                    classDetailUi!.schoolName);
                                box.write("disc",
                                    classDetailUi!.description);
                                box.write(
                                    "source_lang",
                                    classDetailUi!
                                        .dominantLanguage);
                                box.write(
                                    "target_lang",
                                    classDetailUi!
                                        .targetLanguage);
                                context.vRouter.to(
                                    "/classDetails/update_language",
                                    queryParameters: {
                                      "class_id": id,
                                    });
                              }
                            },
                            child: Text(
                              "Class Info",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Payment Info",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context)
                                    .primaryColor
                                    : Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            onPressed: () async {
                              final String id = context.vRouter
                                  .queryParameters['id'] ??
                                  "";
                              final confirmed =
                              await showOkCancelAlertDialog(
                                useRootNavigator: false,
                                context: context,
                                title:
                                L10n.of(context)!.areYouSure,
                                okLabel: L10n.of(context)!.ok,
                                cancelLabel:
                                L10n.of(context)!.cancel,
                              );
                              if (confirmed ==
                                  OkCancelResult.ok) {
                                final room = Matrix.of(context)
                                    .client
                                    .getRoomById(id);
                                if (room != null) {
                                  final success =
                                  await showFutureLoadingDialog(
                                      context: context,
                                      future: () =>
                                          room.leave());
                                  if (success.error == null) {
                                    final box = GetStorage();
                                    String token =
                                    box.read("access");
                                    if (kDebugMode) {
                                      print(token);
                                    }
                                    ClassServices.deleteClass(
                                        context: context,
                                        roomId: room.id);
                                    if (kDebugMode) {
                                      print(room.id);
                                    }

                                    VRouter.of(context)
                                        .to('/rooms');
                                  }
                                } else {
                                  // print("room is null");
                                }
                              }
                            },
                            child: Text(
                              "Delete Class",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                      : Container(),
                ],
              ),
            );
            // return SingleChildScrollView(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         width: size1.width,
            //         color: Colors.red,
            //         child:  Row(
            //           mainAxisAlignment:MainAxisAlignment.start,                        children: [
            //             Stack(
            //               children: [
            //                 classDetailUi!.profilePic != null
            //                     ? Container(
            //                   margin:
            //                   const EdgeInsets.only(top: 10.0),
            //                   child: CachedNetworkImage(
            //                     imageUrl: classDetailUi!.profilePic
            //                         .toString(),
            //                     fit: BoxFit.cover,
            //                     color: Theme.of(context)
            //                         .colorScheme
            //                         .onPrimary ==
            //                         Colors.white
            //                         ? Theme.of(context).primaryColor
            //                         : Theme.of(context)
            //                         .colorScheme
            //                         .onPrimary,
            //                     imageBuilder:
            //                         (context, imageProvider) {
            //                       return Container(
            //                         height: 90,
            //                         width: 90,
            //                         decoration: BoxDecoration(
            //                             shape: BoxShape.circle,
            //                             image: DecorationImage(
            //                                 image: imageProvider)),
            //                       );
            //                     },
            //                   ),
            //                   decoration: BoxDecoration(
            //                       border: Border.all(
            //                           color: Theme.of(context)
            //                               .colorScheme
            //                               .onPrimary ==
            //                               Colors.white
            //                               ? Theme.of(context)
            //                               .primaryColor
            //                               : Theme.of(context)
            //                               .colorScheme
            //                               .onPrimary,
            //                           width: 2.0),
            //                       shape: BoxShape.circle),
            //                 )
            //                     : Container(
            //                   height: 90,
            //                   width: 90,
            //                   decoration: BoxDecoration(
            //                       border: Border.all(
            //                           color: Theme.of(context)
            //                               .colorScheme
            //                               .onPrimary ==
            //                               Colors.white
            //                               ? Theme.of(context)
            //                               .primaryColor
            //                               : Theme.of(context)
            //                               .colorScheme
            //                               .onPrimary,
            //                           width: 2.0),
            //                       shape: BoxShape.circle),
            //                   child: Padding(
            //                     padding: const EdgeInsets.all(5.0),
            //                     child: Icon(
            //                       Icons.people,
            //                       size: 40,
            //                       color:
            //                       Theme.of(context).primaryColor,
            //                     ),
            //                   ),
            //                 ),
            //                 Positioned(
            //                     bottom: 4,
            //                     left: 60,
            //                     child: InkWell(
            //                       onTap: () async {},
            //                       child: Container(
            //                         padding: const EdgeInsets.all(2.0),
            //                         decoration: BoxDecoration(
            //                             shape: BoxShape.circle,
            //                             color: Theme.of(context)
            //                                 .colorScheme
            //                                 .onPrimary,
            //                             border: Border.all(
            //                                 color: Theme.of(context)
            //                                     .colorScheme
            //                                     .onPrimary,
            //                                 width: 2)),
            //                         child: const Icon(
            //                           Icons.school,
            //                           color: Colors.black,
            //                           size: 15.0,
            //                         ),
            //                       ),
            //                     ))
            //               ],
            //             ),
            //             const SizedBox(
            //               width: 15.0,
            //             ),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "${classDetailUi?.classAuthor}",
            //                   style: const TextStyle().copyWith(
            //                       color: Theme.of(context)
            //                           .textTheme
            //                           .bodyText1!
            //                           .color,
            //                       fontSize: 15),
            //                 ),
            //                 Row(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   mainAxisSize: MainAxisSize.min,
            //                   children: [
            //                     Icon(
            //                       Icons.location_pin,
            //                       color: Theme.of(context)
            //                           .colorScheme
            //                           .onPrimary,
            //                       size: 20.0,
            //                     ),
            //                     const SizedBox(
            //                       width: 6.0,
            //                     ),
            //                     Text(
            //                       "${classDetailUi?.city}",
            //                       style: const TextStyle().copyWith(
            //                           color: Theme.of(context)
            //                               .textTheme
            //                               .bodyText1!
            //                               .color,
            //                           fontSize: 12),
            //                     )
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // );

          }

        },
      ),
    );
  }
}
