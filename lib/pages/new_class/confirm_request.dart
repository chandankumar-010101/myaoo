import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/config/environment.dart';
import 'package:pangeachat/model/class_detail_model.dart';
import 'package:pangeachat/services/services.dart';
import 'package:pangeachat/utils/url_launcher.dart';
import 'package:pangeachat/widgets/star_rating.dart';
import 'package:vrouter/vrouter.dart';

class ConfirmRequest extends StatefulWidget {
  const ConfirmRequest({Key? key}) : super(key: key);

  @override
  State<ConfirmRequest> createState() => _ConfirmRequestState();
}

class _ConfirmRequestState extends State<ConfirmRequest> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Class Profile"),
      ),
      body: FutureBuilder(
        future: PangeaServices.fetchClassInfo(context),
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
                                      child: Image.network(Environment.baseAPI +
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
                                      child: Image.network(Environment.baseAPI +
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
                    child: Expanded(
                      child: Text(
                        data.description ?? "Description",
                        style: const TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  box.read("usertype") == 2? box.read("clientID") == data.classAuthorId?Container():Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.only(top: 10),
                    child: Flex(
                      direction:
                      size.width >= 1000 ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: size.width >= 1000
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [

                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            onPressed: () {
                              final String id =
                                  context.vRouter.queryParameters['id'] ?? "";
                              final box = GetStorage();
                              if (id.isNotEmpty) {
                                box.write("public", data.permissions!.isPublic);
                                box.write("openEnrollment",
                                    data.permissions!.isOpenEnrollment);
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
                        const  SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.onPrimary,
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
                  ):box.read("clientID") == data.classAuthorId?Container(): Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.only(top: 10),
                    child: Flex(
                      direction:
                      size.width >= 1000 ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: size.width >= 1000
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            onPressed: () {
                              context.vRouter.to("/request_ui",queryParameters: {"room_id": "${data.pangeaClassRoomId}"});
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
                                  borderRadius: BorderRadius.circular(25.0)),
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary ==
                                    Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.onPrimary,
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


}
