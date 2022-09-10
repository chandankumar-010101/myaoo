//import 'dart:html';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

import '../../config/app_config.dart';
import '../../widgets/avatar.dart';
import '../../widgets/matrix.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';

import '../chat_list/spaces_entry.dart';

class RequestToEnroll extends StatefulWidget {
  const RequestToEnroll({Key? key}) : super(key: key);

  @override
  State<RequestToEnroll> createState() => _RequestToEnrollState();
}

class _RequestToEnrollState extends State<RequestToEnroll> {
  SpacesEntry? _activeSpacesEntry;
  SpacesEntry get defaultSpacesEntry => AppConfig.separateChatTypes
      ? DirectChatsSpacesEntry()
      : AllRoomsSpacesEntry();

  SpacesEntry get activeSpacesEntry {
    final id = _activeSpacesEntry;
    return (id == null || !id.stillValid(context)) ? defaultSpacesEntry : id;
  }

  String? get activeSpaceId => activeSpacesEntry.getSpace(context)?.id;
  Future<void> _waitForFirstSync() async {
    final client = Matrix.of(context).client;
    await client.roomsLoading;
    await client.accountDataLoading;
    if (client.prevBatch?.isEmpty ?? true) {
      await client.onFirstSync.stream.first;
    }
    // Load space members to display DM rooms
    final spaceId = activeSpaceId;
    if (spaceId != null) {
      final space = client.getRoomById(spaceId)!;
      final localMembers = space.getParticipants().length;
      final actualMembersCount = (space.summary.mInvitedMemberCount ?? 0) +
          (space.summary.mJoinedMemberCount ?? 0);
      if (localMembers < actualMembersCount) {
        await space.requestParticipants();
      }
    }
  }

  List<Room> get spaces =>
      Matrix.of(context).client.rooms.where((r) => r.isSpace).toList();



  @override
  Widget build(BuildContext context) {
    final String roomId = VRouter.of(context).queryParameters['room_id'] ?? "";
    final String id = VRouter.of(context).queryParameters['id'] ?? "";
    print(spaces.length);
    return Scaffold(
      body: FutureBuilder(
        future: _waitForFirstSync(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snap.hasError) {
            return Text("Unable to Load USER PROFILE");
          } else {

            return RequestToEnrollPopUp(
              id: id,
              roomId: roomId,
              spaces: spaces,
            );
          }
        },
      ),
    );
  }
}

class RequestToEnrollPopUp extends StatelessWidget {
  List<Room> spaces;
  String roomId;
  String id;
  RequestToEnrollPopUp(
      {Key? key, required this.spaces, required this.id, required this.roomId})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<Room> space = spaces.where((i) => i.id == roomId).toList();
    final int userType = GetStorage().read("usertype")??0;
    if (space.isNotEmpty && space[0].id == roomId && userType ==2) {
      return FutureBuilder(
          future: Matrix.of(context).client.getUserProfile(id),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("Unable to fetch user data error accured!"),
              );
            } else if (snapshot.hasData) {
              final ProfileInformation data = snapshot.data as ProfileInformation;
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            data.avatarUrl != null
                                ? Container(
                                    width: 300,
                                    height: 150,
                                    child: Avatar(
                                      mxContent: data.avatarUrl,
                                    ))
                                : Container(
                                    padding: EdgeInsets.only(top: 10),
                                    width: 200,
                                    height: 100,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.black12,
                                      child: Avatar(
                                        mxContent: data.avatarUrl,
                                      ),
                                    ),
                                  ),
                            Text(
                              data.displayname ?? "Username",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                final confirmed = await showOkCancelAlertDialog(
                                  useRootNavigator: false,
                                  context: context,
                                  title: L10n.of(context)!.areYouSure,
                                  okLabel: L10n.of(context)!.ok,
                                  cancelLabel: L10n.of(context)!.cancel,
                                );
                                if (confirmed == OkCancelResult.ok) {
                                  if (roomId.isNotEmpty && id.isNotEmpty) {
                                    PangeaServices.inviteAction(
                                        context, id, roomId);
                                  } else {
                                    print("Room id or id is empty");
                                  }
                                }
                              },
                              child: Container(
                                height: 40,
                                width: size.width,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Center(
                                  child: Text("Confirm Enrollment Request"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                // window.close();
                              },
                              child: Container(
                                height: 40,
                                width: size.width,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                      "Message " + data.displayname.toString()),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          });
    } else {
      return const Center(
        child: Text("You are not authorized for this page."),
      );
    }
  }
}
