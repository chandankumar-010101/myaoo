
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/utils/api/class_details.dart';
import 'package:pangeachat/utils/url_launcher.dart';
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
    double widthscreen = MediaQuery.of(context).size.width;
    print(widthscreen);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
            child: widthscreen >= 1080?Column(
              children: [
                widthscreen >= 1360? Column(
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
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
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
                                        color: Theme.of(context)
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
                                            .onPrimary,
                                        width: 2.0),
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.people,
                                    size: 40,
                                    color:  Theme.of(context).textTheme.bodyText1!.color,
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
                                      child: Icon(
                                        Icons.school,
                                        color: Theme.of(context).textTheme.bodyText1!.color,
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
                                style: TextStyle().copyWith(
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
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    size: 20.0,
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "${classDetailUi?.city}",
                                    style: TextStyle().copyWith(
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
                        border: Border.all(color: Colors.grey.shade200, width: 2.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ratings",
                                style: TextStyle().copyWith(
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
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.w400,
                                    ),
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
                                style: TextStyle().copyWith(
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
                                  Icon(
                                    Icons.people,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${classDetailUi?.totalStudent.toString()}",
                                    style: TextStyle().copyWith(
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
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  const  SizedBox(
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
                                  const  SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Target Language",
                                      style: TextStyle().copyWith(
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
                                  Text(
                                    "${classDetailUi?.dominantLanguage}",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                const  SizedBox(
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
                                    "${classDetailUi?.targetLanguage}",

                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
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
                      child: Text(
                        "About me ",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),

                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                      child: Text(
                        "${classDetailUi?.description}",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                      child: Text(
                        "Class Permissions",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),

                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),

                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
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
                        ? Container(
                      margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          box.read("clientID") == classDetailUi!.classAuthorId
                              ?Container(): MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color: Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            child: Text(
                              "Request an Exchange",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          box.read("clientID") == classDetailUi!.classAuthorId
                              ?Container(): GestureDetector(
                              onTap: () {
                              final routes =
                                  VRouter.of(context).queryParameters;
                              final routes1 = VRouter.of(context)
                                  .pathParameters['roomid'];
                              print(classDetailUi!.classAuthorId.toString());
                              print(classDetailUi!.classAuthor.toString());

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
                            child: Container(
                              height: 40,
                              padding:
                              const EdgeInsets.symmetric(horizontal: 40),
                              child: Center(
                                child: Text(
                                  "Message ${classDetailUi?.classAuthor}",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      width: 2.0)),
                            ),
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
                            color: Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            child: Text(
                              "Request enroll",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    box.read("clientID") == classDetailUi!.classAuthorId
                        ? widthscreen >= 800
                        ? Flexible(
                      flex: 0,
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.loose,
                                  child: MaterialButton(
                                    onPressed: () {
                                      print("ahello");
                                    },
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Class analytics",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Add students",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Find a language exchange",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Class permissions",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Students permissions",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Class Info",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Payment Info",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Delete Class",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Row(
                            //   mainAxisSize: MainAxisSize.min,
                            //   mainAxisAlignment:
                            //   MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.loose,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Class analytics",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox( width: 10,),
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.tight,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Add students",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox( width: 10,),
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.tight,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Find a language exchange",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox( width: 10,),
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.tight,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Class permissions",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(height: 10,),
                            // Row(
                            //   mainAxisSize: MainAxisSize.min,
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.tight,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Students permissions",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox( width: 10,),
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.tight,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Class Info",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox( width: 10,),
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.tight,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Payment Info",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox( width: 10,),
                            //     Flexible(
                            //       flex: 0,
                            //       fit: FlexFit.tight,
                            //       child: MaterialButton(
                            //         onPressed: () {},
                            //         height: 40,
                            //         color: Theme.of(context)
                            //             .colorScheme
                            //             .onPrimary,
                            //         shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(
                            //                 25.0)),
                            //         child: Text(
                            //           "Delete Class",
                            //           style: TextStyle().copyWith(
                            //               color: Theme.of(context)
                            //                   .textTheme
                            //                   .bodyText1!
                            //                   .color,
                            //               fontWeight: FontWeight.w400,
                            //               fontSize: 12),
                            //           // style: TextStyle(
                            //           //     color: Colors.white,
                            //           //     fontWeight: FontWeight.w400,
                            //           //     fontSize: 12.0)
                            //         ),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    )
                        : Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              print("ahello");
                            },
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Class analytics",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Add students",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Find a language exchange",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Class permissions",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Students permissions",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Class Info",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Payment Info",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Delete Class",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(),
                  ],
                ):
                Column(
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
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
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
                                        color: Theme.of(context)
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
                                            .onPrimary,
                                        width: 2.0),
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.people,
                                    size: 40,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
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
                                              .textTheme
                                              .bodyText1!
                                              .color,
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
                                style: TextStyle().copyWith(
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
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    size: 20.0,
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "${classDetailUi?.city}",
                                    style: TextStyle().copyWith(
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
                        border: Border.all(color: Colors.grey.shade200, width: 2.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ratings",
                                style: TextStyle().copyWith(
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
                                    style: TextStyle().copyWith(
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
                                style: TextStyle().copyWith(
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
                                 Icon(
                                    Icons.people,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${classDetailUi?.totalStudent.toString()}",
                                    style: TextStyle().copyWith(
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
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),

                                  const  SizedBox(
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
                                 const   SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Target Language",
                                      style: TextStyle().copyWith(
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
                                  Text(
                                    "${classDetailUi?.dominantLanguage}",
                                    style: TextStyle().copyWith(
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
                                  Text(
                                    "${classDetailUi?.targetLanguage}",

                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
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
                      child: Text(
                        "About me ",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                      child: Text(
                        "${classDetailUi?.description}",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                      child: Text(
                        "Class Permissions",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),

                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),

                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.black,
                                //     fontSize: 12.0),
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
                                style: TextStyle().copyWith(
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
                        ? Container(
                      margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          box.read("clientID") == classDetailUi!.classAuthorId
                              ?Container():  MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color: Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            child: Text(
                              "Request an Exchange",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          box.read("clientID") == classDetailUi!.classAuthorId
                              ?Container(): GestureDetector(
                            onTap: () {
                              final routes =
                                  VRouter.of(context).queryParameters;
                              final routes1 = VRouter.of(context)
                                  .pathParameters['roomid'];
                              print(classDetailUi!.classAuthorId.toString());
                              print(classDetailUi!.classAuthor.toString());

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
                            child: Container(
                              height: 40,
                              padding:
                              const EdgeInsets.symmetric(horizontal: 40),
                              child: Center(
                                child: Text(
                                  "Message ${classDetailUi?.classAuthor}",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),

                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      width: 2.0)),
                            ),
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
                            color: Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            child: Text(
                              "Request enroll",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    box.read("clientID") == classDetailUi!.classAuthorId
                        ? widthscreen >= 800
                        ? Flexible(
                      flex: 0,
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.loose,
                                  child: MaterialButton(
                                    onPressed: () {
                                      print("ahello");
                                    },
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Class analytics",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Add students",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Find a language exchange",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Class permissions",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Students permissions",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Class Info",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Payment Info",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),

                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Flexible(
                                  flex: 0,
                                  fit: FlexFit.tight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 40,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            25.0)),
                                    child: Text(
                                      "Delete Class",
                                      style: TextStyle().copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      // style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontWeight: FontWeight.w400,
                                      //     fontSize: 12.0)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                        : Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Class analytics",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Add students",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Find a language exchange",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Class permissions",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Students permissions",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Class Info",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Payment Info",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),

                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 40,
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(25.0)),
                            child: Text(
                              "Delete Class",
                              style: TextStyle().copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 12.0)
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(),
                  ],
                ),
              ],
            ) :
            Column(
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
                              color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).colorScheme.onPrimary,
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
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                        ? Theme.of(context).primaryColor
                                        : Theme.of(context).colorScheme.onPrimary,
                                    width: 2.0),
                                shape: BoxShape.circle),
                          )
                              : Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                        ? Theme.of(context).primaryColor
                                        : Theme.of(context).colorScheme.onPrimary,
                                    width: 2.0),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.people,
                                size: 40,
                                color: Theme.of(context).colorScheme.onPrimary == Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.onPrimary,
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
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          width: 2)),
                                  child: Icon(
                                    Icons.school,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
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
                            style: TextStyle().copyWith(
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
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "${classDetailUi?.city}",
                                style: TextStyle().copyWith(
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
                    border: Border.all(color: Colors.grey.shade200, width: 2.0),
                  ),
                  child: Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ratings",
                              style: TextStyle().copyWith(
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
                                  style: TextStyle().copyWith(
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
                              style: TextStyle().copyWith(
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
                                 Icon(
                                  Icons.people,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${classDetailUi?.totalStudent.toString()}",
                                  style: TextStyle().copyWith(
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
                                  Flexible(
                                    flex:1,
                                    child: Text(
                                      "Source Language",
                                      style: TextStyle().copyWith(
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
                                    flex:1,
                                    child: Text(
                                      "Target Language",
                                      style: TextStyle().copyWith(
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
                                Text(
                                  "${classDetailUi?.dominantLanguage}",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              const  SizedBox(
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
                                  "${classDetailUi?.targetLanguage}",

                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: Text(
                    "About me ",
                    style: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),

                    // style: TextStyle(
                    //     color: Colors.black,
                    //     fontWeight: FontWeight.w700,
                    //     fontSize: 14.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: Text(
                    "${classDetailUi?.description}",
                    style: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                    // style: const TextStyle(
                    //     color: Colors.black,
                    //     fontWeight: FontWeight.w400,
                    //     fontSize: 14.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: Text(
                    "Class Permissions",
                    style: TextStyle().copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                    // style: TextStyle(
                    //     color: Colors.black,
                    //     fontWeight: FontWeight.w700,
                    //     fontSize: 14.0)
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
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     fontWeight: FontWeight.w400,
                                  //     color: Colors.black,
                                  //     fontSize: 12.0),
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
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     fontWeight: FontWeight.w400,
                                  //     color: Colors.black,
                                  //     fontSize: 12.0),
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
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     fontWeight: FontWeight.w400,
                                  //     color: Colors.black,
                                  //     fontSize: 12.0),
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
                                  style: TextStyle().copyWith(
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
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     fontWeight: FontWeight.w400,
                                  //     color: Colors.black,
                                  //     fontSize: 12.0),
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
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     fontWeight: FontWeight.w400,
                                  //     color: Colors.black,
                                  //     fontSize: 12.0),
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
                                  style: TextStyle().copyWith(
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
                                  style: TextStyle().copyWith(
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
                                  style: TextStyle().copyWith(
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
                                  style: TextStyle().copyWith(
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
                                  style: TextStyle().copyWith(
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
                                  style: TextStyle().copyWith(
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
                    ? Container(
                        margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            box.read("clientID") == classDetailUi!.classAuthorId
                                ?Container():GestureDetector(
                              onTap: () {
                                final routes =
                                    VRouter.of(context).queryParameters;
                                final routes1 = VRouter.of(context)
                                    .pathParameters['roomid'];
                                print(classDetailUi!.classAuthorId.toString());
                                print(classDetailUi!.classAuthor.toString());

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
                              child: Container(
                                height: 40,
                                padding:
                                const EdgeInsets.symmetric(horizontal: 40),
                                child: Center(
                                  child: Text(
                                    "Message ${classDetailUi?.classAuthor}",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),

                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        width: 2.0)),
                              ),
                            ),
                            box.read("clientID") == classDetailUi!.classAuthorId
                                ?Container(): MaterialButton(
                              onPressed: () {},
                              height: 40,
                              color: Theme.of(context).colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: Text(
                                "Request an Exchange",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            box.read("clientID") == classDetailUi!.classAuthorId
                                ?Container():GestureDetector(
                              onTap: () {
                                final routes =
                                    VRouter.of(context).queryParameters;
                                final routes1 = VRouter.of(context)
                                    .pathParameters['roomid'];
                                print(classDetailUi!.classAuthorId.toString());
                                print(classDetailUi!.classAuthor.toString());

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
                              child: Container(
                                height: 40,
                                padding:
                                const EdgeInsets.symmetric(horizontal: 40),
                                child: Center(
                                  child: Text(
                                    "Message ${classDetailUi?.classAuthor}",
                                    style: TextStyle().copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                    // style: TextStyle(
                                    //     color: AppConfig.violetColor,
                                    //     fontWeight: FontWeight.w400,
                                    //     fontSize: 12.0),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        width: 2.0)),
                              ),
                            ),
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
                              color: Theme.of(context).colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: Text(
                                "Request enroll",
                                style: TextStyle().copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                box.read("clientID") == classDetailUi!.classAuthorId
                    ? widthscreen >= 880
                        ? Flexible(
                  flex: 0,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 0,
                              fit: FlexFit.loose,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Class analytics",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.w400,
                                  //     fontSize: 12.0)
                                ),
                              ),
                            ),
                            SizedBox( width: 10,),
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Add students",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.w400,
                                  //     fontSize: 12.0)
                                ),
                              ),
                            ),
                            SizedBox( width: 10,),
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Find a language exchange",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.w400,
                                  //     fontSize: 12.0)
                                ),
                              ),
                            ),
                           // SizedBox( width: 10,),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Class permissions",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.w400,
                                  //     fontSize: 12.0)
                                ),
                              ),
                            ),
                            SizedBox( width: 10,),
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Students permissions",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.w400,
                                  //     fontSize: 12.0)
                                ),
                              ),
                            ),
                            SizedBox( width: 10,),
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Class Info",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  // style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.w400,
                                  //     fontSize: 12.0)
                                ),
                              ),
                            ),
                           // SizedBox( width: 10,),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Payment Info",
                                  style: TextStyle().copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),

                                ),
                              ),
                            ),
                            SizedBox( width: 10,),
                            Flexible(
                              flex: 0,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                onPressed: () {},
                                height: 40,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        25.0)),
                                child: Text(
                                  "Delete Class",
                                  style: TextStyle().copyWith(
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
                      ],
                    ),
                  ),
                )
                        : Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                          child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                           MaterialButton(
                               onPressed: () {},
                               height: 40,
                               color:
                               Theme.of(context).colorScheme.onPrimary,
                               shape: RoundedRectangleBorder(
                                   borderRadius:
                                   BorderRadius.circular(25.0)),
                               child: Text(
                                 "Class analytics",
                                 style: TextStyle().copyWith(
                                     color: Theme.of(context)
                                         .textTheme
                                         .bodyText1!
                                         .color,
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12),

                               ),
                             ),
                           SizedBox(height: 10,),
                           MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color:
                      Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25.0)),
                      child: Text(
                          "Add students",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),

                      ),
                    ),
                           const SizedBox(height: 10,),
                           MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color:
                      Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25.0)),
                      child: Text(
                          "Find a language exchange",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),

                      ),
                    ),
                           const SizedBox(height: 10,),
                           MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color:
                      Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25.0)),
                      child: Text(
                          "Class permissions",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),

                      ),
                    ),
                           const SizedBox(height: 10,),
                           MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color:
                      Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25.0)),
                      child: Text(
                          "Students permissions",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),

                      ),
                    ),
                           const SizedBox(height: 10,),
                           MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color:
                      Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25.0)),
                      child: Text(
                          "Class Info",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),

                      ),
                    ),
                           const SizedBox(height: 10,),
                           MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color:
                      Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25.0)),
                      child: Text(
                          "Payment Info",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),

                      ),
                    ),
                           const SizedBox(height: 10,),
                           MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color:
                      Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25.0)),
                      child: Text(
                          "Delete Class",
                          style: TextStyle().copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                      ),
                    ),
                  ],
                ),
                        )
                    : Container(),
              ],
            ),
          );
        },
      ),
    );
  }
}
