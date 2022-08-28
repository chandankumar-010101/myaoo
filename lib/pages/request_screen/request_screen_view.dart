import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/config/environment.dart';
import 'package:pangeachat/utils/url_launcher.dart';
import 'package:pangeachat/widgets/star_rating.dart';
import 'package:vrouter/vrouter.dart';

import '../../model/class_detail_model.dart';
import '../../services/services.dart';
import '../../widgets/matrix.dart';

class RequestScreenView extends StatefulWidget {
  const RequestScreenView({Key? key}) : super(key: key);

  @override
  State<RequestScreenView> createState() => _RequestScreenViewState();
}

class _RequestScreenViewState extends State<RequestScreenView> {

  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   String basePath =  Environment.baseAPI;
    var data =  basePath.split("/api/v1");
    String url = data[0];
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Class Profile"),
      ),
      body: FutureBuilder(
        future: PangeaServices.fetchUserInfo(context),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.hasData) {
            final ClassDetailModel data = snapshot.data! as ClassDetailModel;

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
                              child: data.profilePic != null
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
                                      size: 40,
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
                              data.className ?? "Class Name",
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
                                  data.city ?? "Add City",
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
                                      ? data.rating!.toDouble()
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
                                  data.totalStudent.toString(),
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
                                  SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Image.network(url +
                                          data.flags![0].languageFlag
                                              .toString())),
                                ]),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  data.dominantLanguage ?? "Language",
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
                                      child: Image.network(url+
                                          data.flags![1].languageFlag
                                              .toString())),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    data.targetLanguage ?? "Language",
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
                      data.description.toString() ,
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

                  box.read("usertype") == 2
                      ? box.read("clientID") == data.classAuthorId
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
                                        final String id = context.vRouter
                                                .queryParameters['id'] ??
                                            "";
                                        final box = GetStorage();
                                        if (id.isNotEmpty) {
                                          box.write("public",
                                              data.permissions!.isPublic);
                                          box.write(
                                              "openEnrollment",
                                              data.permissions!
                                                  .isOpenEnrollment);
                                          box.write("openExchange",
                                              data.permissions!.isOpenExchange);
                                          context.vRouter.to(
                                              "/classDetails/exchange_class",
                                              queryParameters: {
                                                "class_id": id,
                                              });
                                        }
                                      },
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
                      : box.read("clientID") == data.classAuthorId
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
                                          print("confirm");
                                          print(data.classAuthor);
                                          String roomId =  VRouter.of(context).queryParameters['id']??"";
                                          if(roomId.isNotEmpty){
                                            UrlLauncher(context,requestToEnroll: true,
                                                roomId:  roomId,
                                                'https://matrix.to/#/${data.classAuthorId.toString()}')
                                                .openMatrixToUrl();
                                          }

                                        }
                                      },
                                      child: Text(
                                        "Request an Enroll",
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
                  box.read("usertype") == 2 &&
                          box.read("clientID") == data.classAuthorId
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
                                    VRouter.of(context).to('class_analytics');
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
                                    UrlLauncher(context,
                                            'https://matrix.to/#/${data.classAuthorId.toString()}')
                                        .openMatrixToUrl();
                                    // final routes =
                                    //     VRouter.of(context)
                                    //         .queryParameters;
                                    // VRouter.of(context)
                                    //     .pathParameters[
                                    // 'roomid'];
                                    // // print(data
                                    // //     .classAuthorId
                                    // //     .toString());
                                    // // print(data.classAuthor
                                    // //     .toString());
                                    //
                                    // if (routes["id"] !=
                                    //     null) {
                                    //   UrlLauncher(context,
                                    //       'https://matrix.to/#/${data.classAuthorId.toString()}')
                                    //       .openMatrixToUrl();
                                    // } else {
                                    //   // String? get roomId => VRouter.of(context).pathParameters['roomid'];
                                    //
                                    // }
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
                                  onPressed: () {},
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
                  box.read("usertype") == 2 &&
                          box.read("clientID") == data.classAuthorId
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
                                    final String id =
                                        context.vRouter.queryParameters['id'] ??
                                            "";
                                    if (id.isNotEmpty) {
                                      box.write(
                                          "public", data.permissions!.isPublic);
                                      box.write("openEnrollment",
                                          data.permissions!.isOpenEnrollment);
                                      box.write("openExchange",
                                          data.permissions!.isOpenExchange);
                                      context.vRouter.to(
                                          "/classDetails/update_class_permissions",
                                          queryParameters: {
                                            "class_id": id,
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
                                    final String id =
                                        context.vRouter.queryParameters['id'] ??
                                            "";
                                    if (id.isNotEmpty) {
                                      try {
                                        box.write(
                                            "oneToOneClass",
                                            data.permissions!
                                                .oneToOneChatClass);
                                        box.write(
                                            "oneToOneExchange",
                                            data.permissions!
                                                .oneToOneChatExchange);
                                        box.write("createRoom",
                                            data.permissions!.isCreateRooms);
                                        box.write(
                                            "createRoomExchange",
                                            data.permissions!
                                                .isCreateRoomsExchange);
                                        box.write("createStories",
                                            data.permissions!.isCreateStories);
                                        box.write("shareVideo",
                                            data.permissions!.isShareVideo);
                                        box.write("sharePhotos",
                                            data.permissions!.isSharePhoto);
                                        box.write("shareFiles",
                                            data.permissions!.isShareFiles);
                                        box.write("shareLocation",
                                            data.permissions!.isShareLocation);
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
                                            "class_id": id,
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
                                    final String id =
                                        context.vRouter.queryParameters['id'] ??
                                            "";

                                    if (id.isNotEmpty) {
                                      box.write("class_name", data.className);
                                      box.write("city_name", data.city);
                                      box.write("country_name", data.country);
                                      box.write(
                                          "language_level", data.languageLevel);
                                      box.write("school_name", data.schoolName);
                                      box.write("disc", data.description);
                                      box.write(
                                          "source_lang", data.dominantLanguage);
                                      box.write(
                                          "target_lang", data.targetLanguage);
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
                            ],
                          ),
                        )
                      : Container(),
                  box.read("usertype") == 2 &&
                          box.read("clientID") == data.classAuthorId
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
                                    final String id =
                                        context.vRouter.queryParameters['id'] ??
                                            "";
                                    final confirmed =
                                        await showOkCancelAlertDialog(
                                      useRootNavigator: false,
                                      context: context,
                                      title: L10n.of(context)!.areYouSure,
                                      okLabel: L10n.of(context)!.ok,
                                      cancelLabel: L10n.of(context)!.cancel,
                                    );
                                    if (confirmed == OkCancelResult.ok) {
                                      final room = Matrix.of(context)
                                          .client
                                          .getRoomById(id);
                                      if (room != null) {
                                        final success =
                                            await showFutureLoadingDialog(
                                                context: context,
                                                future: () => room.leave());
                                        if (success.error == null) {
                                          String token = box.read("access");
                                          if (kDebugMode) {
                                            print(token);
                                          }
                                          PangeaServices.deleteClass(
                                              roomId: room.id,
                                              context: context);
                                          if (kDebugMode) {
                                            print(room.id);
                                          }

                                          VRouter.of(context).to('/rooms');
                                        }
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
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
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
            Container(
              width: MediaQuery.of(context).size.width / 3.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  permissions.isSharePhoto !=null && permissions.isSharePhoto!
                  // permissions?.isSharePhoto && permissions.isSharePhoto!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Share Photo"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isShareVideo !=null && permissions.isShareVideo!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Share Video"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.oneToOneChatClass !=null && permissions.oneToOneChatClass!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("One To One Chat"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.oneToOneChatExchange !=null && permissions.oneToOneChatExchange!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("One to One Chat Exchange"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isShareFiles !=null && permissions.isShareFiles!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Share Files"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isShareLocation !=null && permissions.isShareLocation!
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
                  permissions.isCreateRooms !=null && permissions.isCreateRooms!
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
                  permissions.isCreateRoomsExchange !=null && permissions.isCreateRoomsExchange!
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
                  permissions.isCreateStories !=null && permissions.isCreateStories!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Create Stories"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isOpenEnrollment !=null && permissions.isOpenEnrollment!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Open Enrollment"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isOpenExchange !=null && permissions.isOpenExchange!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("• "),
                            Expanded(
                              child: Text("Open Exchange"),
                            ),
                          ],
                        )
                      : Container(),
                  permissions.isPublic !=null && permissions.isPublic!
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
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
      return Center(child: Text("Unable to load data"),);
    }
  }
}
