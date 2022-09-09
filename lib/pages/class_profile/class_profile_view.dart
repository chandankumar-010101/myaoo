import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/config/environment.dart';
import 'package:pangeachat/pages/class_profile/class_profile.dart';
import 'package:pangeachat/utils/url_launcher.dart';
import 'package:pangeachat/widgets/star_rating.dart';

import '../../model/class_detail_model.dart';
import '../../services/services.dart';

class RequestScreenView extends StatefulWidget {
  final RequestScreenState controller;
  const RequestScreenView(this.controller, {Key? key}) : super(key: key);

  @override
  State<RequestScreenView> createState() => _RequestScreenViewState();
}

class _RequestScreenViewState extends State<RequestScreenView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String basePath = Environment.baseAPI;
    final List<String> data = basePath.split("/api/v1");
    final String url = data[0];
    final String roomAlias = VRouter.of(context).queryParameters['id'] ?? "";
    widget.controller.fetchSpaceInfo(roomAlias);

    //fetchParti(roomAlias);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Class Profile"),
      ),
      body: FutureBuilder(
        future: PangeaServices.fetchClassInfo(
            context, widget.controller.box.read("access") ?? "", roomAlias),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final FetchClassInfoModel data =
                snapshot.data as FetchClassInfoModel;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: size.width >= 1000
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10.0),
                              child: data.profilePic.isNotEmpty
                                  ? CachedNetworkImage(
                                      imageUrl: data.profilePic.toString(),
                                      fit: BoxFit.cover,
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
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
                                    )
                                  : Icon(
                                      Icons.people,
                                      size: 60,
                                      color: Theme.of(context).primaryColor,
                                    ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary ==
                                              Colors.white
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                      width: 2.0),
                                  shape: BoxShape.circle),
                            ),
                            Positioned(
                                bottom: 4,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(2),
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
                              data.className,
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${data.classAuthor}",
                              style: const TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  size: 20.0,
                                ),
                                Text(
                                  data.city,
                                  style: const TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border:
                          Border.all(color: Colors.grey.shade200, width: 2.0),
                    ),
                    child: Flex(
                      direction:
                          size.width >= 1000 ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: size.width >= 800
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
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
                                  rating: data.rating != null
                                      ? data.rating.toDouble()
                                      : 0.0,
                                  starCount: 5,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
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
                                  widget.controller.noOfStudents.toString(),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Source Language",
                                    style: const TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
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
                                  Text(
                                    "Target Language",
                                    style: const TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
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
                                  widget.controller.fetchFlag2(data, url)
                                ]),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  data.dominantLanguage,
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
                                  widget.controller.fetchFlag(data, url),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    data.targetLanguage,
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
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "About me ",
                      style: const TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      data.description.toString(),
                      style: const TextStyle().copyWith(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Class Permissions",
                        style: const TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      )),
                  fetchPermissions(data.permissions),
                  widget.controller.box.read("usertype") == 2
                      ? widget.controller.box.read("clientID") ==
                              data.classAuthorId
                          ? Container()
                          : Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              padding: const EdgeInsets.only(top: 10),
                              child: Flex(
                                direction: size.width >= 1000
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: size.width >= 1000
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.center,
                                children: [
                                  widget.controller.space.isEmpty
                                      ? data.permissions.isOpenExchange
                                          ? SizedBox(
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
                                                  // PangeaServices
                                                  //     .createExchangeValidateRequest(
                                                  //   roomId:
                                                  //       data.pangeaClassRoomId,
                                                  //   teacherID:
                                                  //       data.classAuthorId,
                                                  //   context: context,
                                                  // );

                                                  final box = GetStorage();

                                                  if (roomAlias.isNotEmpty) {
                                                    box.write( "public",  data.permissions.isPublic);
                                                    box.write("openEnrollment", data.permissions
                                                            .isOpenEnrollment);
                                                    box.write(
                                                        "openExchange",
                                                        data.permissions
                                                            .isOpenExchange);
                                                    box.write(
                                                        "ExchangeClientID",
                                                        data.classAuthorId);
                                                    context.vRouter.to(
                                                        "/classDetails/exchange_class",
                                                        queryParameters: {
                                                          "class_id":
                                                          roomAlias,
                                                        });
                                                  }
                                                },
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
                                            )
                                          : Container()
                                      : Container(),
                                  const SizedBox(
                                    width: 10,
                                    height: 10,
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
                                        UrlLauncher(context,
                                                'https://matrix.to/#/${data.classAuthorId.toString()}')
                                            .openMatrixToUrl();
                                      },
                                      child: Text(
                                        "Message ${data.classAuthor}",
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
                      : widget.controller.box.read("clientID") ==
                              data.classAuthorId
                          ? Container()
                          : Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              padding: EdgeInsets.only(top: 10),
                              child: Flex(
                                direction: size.width >= 1000
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: size.width >= 1000
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.center,
                                children: [
                                  widget.controller.space.isEmpty
                                      ? (data.permissions.isOpenEnrollment
                                          ? SizedBox(
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
                                                  final confirmed =
                                                      await showOkCancelAlertDialog(
                                                    useRootNavigator: false,
                                                    context: context,
                                                    title: L10n.of(context)!
                                                        .areYouSure,
                                                    okLabel:
                                                        L10n.of(context)!.ok,
                                                    cancelLabel:
                                                        L10n.of(context)!
                                                            .cancel,
                                                  );
                                                  if (confirmed ==
                                                      OkCancelResult.ok) {
                                                    if (roomAlias.isNotEmpty) {
                                                      print(data.classAuthorId);
                                                      UrlLauncher(
                                                              context,
                                                              requestToEnroll: true,
                                                              roomId: roomAlias,
                                                              'https://matrix.to/#/${data.classAuthorId.toString()}')
                                                          .openMatrixToUrl();
                                                    }
                                                  }
                                                },
                                                child: Text(
                                                  "Request an Enroll",
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
                                            )
                                          : Container())
                                      : Container(),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
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
                                        UrlLauncher(context,
                                                'https://matrix.to/#/${data.classAuthorId.toString()}')
                                            .openMatrixToUrl();
                                      },
                                      child: Text(
                                        "Message ${data.classAuthor}",
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
                  widget.controller.box.read("usertype") == 2 &&
                          widget.controller.box.read("clientID") ==
                              data.classAuthorId
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          padding: EdgeInsets.only(top: 10),
                          child: Flex(
                            direction: size.width >= 1000
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: size.width >= 1000
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
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
                                  onPressed: () {
                                    VRouter.of(context).to('/class_analytics');
                                  },
                                  child: Text(
                                    "Class Analytics",
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
                              SizedBox(
                                width: 10,
                                height: 10,
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
                                    if (roomAlias.isNotEmpty) {
                                      context.vRouter.to("/invite_students",
                                          queryParameters: {
                                            "id": roomAlias,
                                          });
                                    }
                                  },
                                  child: Text(
                                    "Add Students",
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
                              SizedBox(
                                width: 10,
                                height: 10,
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
                                    widget.controller.getxController
                                        .throughClassProfile.value = true;
                                  },
                                  child: Text(
                                    "Find a Language Exchange",
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
                  widget.controller.box.read("usertype") == 2 &&
                          widget.controller.box.read("clientID") ==
                              data.classAuthorId
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          padding: EdgeInsets.only(top: 10),
                          child: Flex(
                            direction: size.width >= 1000
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: size.width >= 1000
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
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
                                  onPressed: () {
                                    if (roomAlias.isNotEmpty) {
                                      widget.controller.box.write(
                                          "public", data.permissions.isPublic);
                                      widget.controller.box.write(
                                          "openEnrollment",
                                          data.permissions.isOpenEnrollment);
                                      widget.controller.box.write(
                                          "openExchange",
                                          data.permissions.isOpenExchange);
                                      context.vRouter.to(
                                          "/classDetails/update_class_permissions",
                                          queryParameters: {
                                            "class_id": roomAlias,
                                          });
                                    }
                                  },
                                  child: Text(
                                    "Class Permissions",
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
                              SizedBox(
                                width: 10,
                                height: 10,
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
                                    if (roomAlias.isNotEmpty) {
                                      try {
                                        widget.controller.box.write(
                                            "oneToOneClass",
                                            data.permissions.oneToOneChatClass);
                                        widget.controller.box.write(
                                            "oneToOneExchange",
                                            data.permissions
                                                .oneToOneChatExchange);
                                        widget.controller.box.write(
                                            "createRoom",
                                            data.permissions.isCreateRooms);
                                        widget.controller.box.write(
                                            "createRoomExchange",
                                            data.permissions
                                                .isCreateRoomsExchange);
                                        widget.controller.box.write(
                                            "createStories",
                                            data.permissions.isCreateStories);
                                        widget.controller.box.write(
                                            "shareVideo",
                                            data.permissions.isShareVideo);
                                        widget.controller.box.write(
                                            "sharePhotos",
                                            data.permissions.isSharePhoto);
                                        widget.controller.box.write(
                                            "shareFiles",
                                            data.permissions.isShareFiles);
                                        widget.controller.box.write(
                                            "shareLocation",
                                            data.permissions.isShareLocation);
                                      } catch (e) {
                                        if (kDebugMode) {
                                          print(e);
                                        }
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text("Error accrued: $e")));
                                      }
                                      context.vRouter.to(
                                          "/classDetails/update_student_permissions",
                                          queryParameters: {
                                            "class_id": roomAlias,
                                          });
                                    }
                                  },
                                  child: Text(
                                    "Student Permissions",
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
                              SizedBox(
                                width: 10,
                                height: 10,
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
                                    if (roomAlias.isNotEmpty) {
                                      widget.controller.box
                                          .write("class_name", data.className);
                                      widget.controller.box
                                          .write("city_name", data.city);
                                      widget.controller.box
                                          .write("country_name", data.country);
                                      widget.controller.box.write(
                                          "language_level", data.languageLevel);
                                      widget.controller.box.write(
                                          "school_name", data.schoolName);
                                      widget.controller.box
                                          .write("disc", data.description);
                                      widget.controller.box.write(
                                          "source_lang", data.dominantLanguage);
                                      widget.controller.box.write(
                                          "target_lang", data.targetLanguage);
                                      context.vRouter.to(
                                          "/classDetails/update_language",
                                          queryParameters: {
                                            "class_id": roomAlias,
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
                            ],
                          ),
                        )
                      : Container(),
                  widget.controller.box.read("usertype") == 2 &&
                          widget.controller.box.read("clientID") ==
                              data.classAuthorId
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          padding: EdgeInsets.only(top: 10),
                          child: Flex(
                            direction: size.width >= 1000
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: size.width >= 1000
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
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
                                  onPressed: () async {
                                    final confirmed =
                                        await showOkCancelAlertDialog(
                                      useRootNavigator: false,
                                      context: context,
                                      title: L10n.of(context)!.areYouSure,
                                      okLabel: L10n.of(context)!.ok,
                                      cancelLabel: L10n.of(context)!.cancel,
                                    );
                                    if (confirmed == OkCancelResult.ok) {
                                      widget.controller
                                          .kickAndRemoveClass(roomAlias);
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
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            );
          } else {
            if (snapshot.hasError) {
              if (kDebugMode) {
                print("Unable to fetch data: ${snapshot.error}");
              }
            }
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget fetchPermissions(Permissions? permissions) {
    if (permissions != null) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Flex(
          direction: MediaQuery.of(context).size.width >= 1000
              ? Axis.horizontal
              : Axis.vertical,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  permissions.isSharePhoto != null && permissions.isSharePhoto
                      // permissions?.isSharePhoto && permissions.isSharePhoto!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Share Photo"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isShareVideo != null && permissions.isShareVideo
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Share Video"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.oneToOneChatClass != null &&
                          permissions.oneToOneChatClass
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("One To One Chat"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.oneToOneChatExchange != null &&
                          permissions.oneToOneChatExchange
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("One to One Chat Exchange"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isShareFiles != null && permissions.isShareFiles
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Share Files"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isShareLocation != null &&
                          permissions.isShareLocation
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Share Location"),
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  permissions.isCreateRooms != null && permissions.isCreateRooms
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Create Rooms"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isCreateRoomsExchange != null &&
                          permissions.isCreateRoomsExchange
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Create Room Exchange"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isCreateStories != null &&
                          permissions.isCreateStories
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Create Stories"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isOpenEnrollment != null &&
                          permissions.isOpenEnrollment
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Open Enrollment"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isOpenExchange != null &&
                          permissions.isOpenExchange
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Open Exchange"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isPublic != null && permissions.isPublic!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Public"),
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return const Center(
        child: Text("Unable to load data"),
      );
    }
  }
}
