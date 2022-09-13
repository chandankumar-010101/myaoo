import 'dart:async';
import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/visibility.dart' as vis;

import 'package:animations/animations.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/class_detail_model.dart';

import 'package:pangeachat/pages/chat_list/chat_list.dart';
import 'package:pangeachat/pages/chat_list/chat_list_item.dart';
import 'package:pangeachat/pages/chat_list/people_list_item.dart';
import 'package:pangeachat/pages/chat_list/spaces_bottom_bar.dart';
import 'package:pangeachat/pages/chat_list/spaces_entry.dart';
import 'package:pangeachat/pages/chat_list/stories_header.dart';
import 'package:vrouter/vrouter.dart';
import '../../utils/matrix_sdk_extensions.dart/client_stories_extension.dart';
import '../../utils/stream_extension.dart';
import '../../widgets/matrix.dart';

class ChatListViewBody extends StatefulWidget {
  final ChatListController controller;

  const ChatListViewBody(this.controller, {Key? key}) : super(key: key);

  @override
  State<ChatListViewBody> createState() => _ChatListViewBodyState();
}

class _ChatListViewBodyState extends State<ChatListViewBody> {
  // the matrix sync stream
  late StreamSubscription _subscription;

  // used to check the animation direction
  String? _lastUserId;
  SpacesEntry? _lastSpace;

  // booleans for expansion of Rooms and People Panel
  bool isRoomExpanded = false;
  bool isPeopleExpanded = false;
  bool isAllChatExpanded = false;
  Permissions? permission;
  @override
  void initState() {
    _subscription =
        Matrix.of(context).client.onSync.stream.where((s) => s.hasRoomUpdate).rateLimit(const Duration(seconds: 1)).listen((d) => setState(() {}));

    super.initState();
  }

  math.Random random = new math.Random();
  @override
  Widget build(BuildContext context) {
    final reversed = !_animationReversed();

    permission = widget.controller.permissions;

    List<User> peoplerooms = widget.controller.participants;

    final rooms = widget.controller.activeSpacesEntry.getRooms(context);

    // if (rooms.isEmpty && peoplerooms.isEmpty) {
    //   child = Column(
    //     key: const ValueKey(null),
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     mainAxisSize: MainAxisSize.min,
    //     children: <Widget>[
    //       Image.asset(
    //         'assets/private_chat_wallpaper.png',
    //         width: 160,
    //         height: 160,
    //       ),
    //       Center(
    //         child: Text(
    //           L10n.of(context)!.startYourFirstChat,
    //           textAlign: TextAlign.start,
    //           style: const TextStyle(
    //             color: Colors.grey,
    //             fontSize: 16,
    //           ),
    //         ),
    //       ),
    //     ],
    //   );
    // } else {
    final displayStoriesHeader = widget.controller.activeSpacesEntry.shouldShowStoriesHeader(context);

    // } else {
    //   const dummyChatCount = 5;
    //   final titleColor = Theme.of(context).textTheme.bodyText1!.color!.withAlpha(100);
    //   final subtitleColor = Theme.of(context).textTheme.bodyText1!.color!.withAlpha(50);
    //   child = ListView.builder(
    //     itemCount: dummyChatCount,
    //     itemBuilder: (context, i) => Opacity(
    //       opacity: (dummyChatCount - i) / dummyChatCount,
    //       child: ListTile(
    //         leading: CircleAvatar(
    //           backgroundColor: titleColor,
    //           child: CircularProgressIndicator(
    //             strokeWidth: 1,
    //             color: Theme.of(context).textTheme.bodyText1!.color,
    //           ),
    //         ),
    //         title: Row(
    //           children: [
    //             Expanded(
    //               child: Container(
    //                 height: 14,
    //                 decoration: BoxDecoration(
    //                   color: titleColor,
    //                   borderRadius: BorderRadius.circular(3),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(width: 36),
    //             Container(
    //               height: 14,
    //               width: 14,
    //               decoration: BoxDecoration(
    //                 color: subtitleColor,
    //                 borderRadius: BorderRadius.circular(14),
    //               ),
    //             ),
    //             const SizedBox(width: 12),
    //             Container(
    //               height: 14,
    //               width: 14,
    //               decoration: BoxDecoration(
    //                 color: subtitleColor,
    //                 borderRadius: BorderRadius.circular(14),
    //               ),
    //             ),
    //           ],
    //         ),
    //         subtitle: Container(
    //           decoration: BoxDecoration(
    //             color: subtitleColor,
    //             borderRadius: BorderRadius.circular(3),
    //           ),
    //           height: 12,
    //           margin: const EdgeInsets.only(right: 22),
    //         ),
    //       ),
    //     ),
    //   );
    // }
    return PageTransitionSwitcher(
      reverse: reversed,
      transitionBuilder: (
        Widget child,
        Animation<double> primaryAnimation,
        Animation<double> secondaryAnimation,
      ) {
        return SharedAxisTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          transitionType: (widget.controller.snappingSheetController.isAttached ? widget.controller.snappingSheetController.currentPosition : 0) ==
                  kSpacesBottomBarHeight
              ? SharedAxisTransitionType.horizontal
              : SharedAxisTransitionType.vertical,
          fillColor: Theme.of(context).scaffoldBackgroundColor,
          child: Align(alignment: Alignment.topLeft, child: child),
        );
      },
      child: SingleChildScrollView(
        child: Column(children: [
          widget.controller.activeSpacesEntry
                  .getStories(context)
                  .where((room) => room.getState(EventTypes.RoomCreate)?.content.tryGet<String>('type') == ClientStoriesExtension.storiesRoomType)
                  .toList()
                  .isNotEmpty
              ? StoriesHeader(
                  controller: widget.controller,
                  spaceStories: widget.controller.activeSpacesEntry
                      .getStories(context)
                      .where((room) => room.getState(EventTypes.RoomCreate)?.content.tryGet<String>('type') == ClientStoriesExtension.storiesRoomType)
                      .toList(),
                )
              : Container(),
          ExpansionPanelList(
            expandedHeaderPadding: EdgeInsets.all(8),
            elevation: 2,
            animationDuration: Duration(milliseconds: 400),
            expansionCallback: (panelIndex, isExpanded) => setState(() {
              if (panelIndex == 0) {
                isPeopleExpanded = !isExpanded;
              }
              if (panelIndex == 1) {
                isRoomExpanded = !isExpanded;
              }
            }),
            children: <ExpansionPanel>[
              ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: isPeopleExpanded,
                headerBuilder: ((context, isExpanded) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            "People",
                            // Todo: Style needs to be updated
                          ),
                        ),
                      ],
                    )),
                body: peoplerooms.length == 0
                    ? Container(
                        height: 200,
                        child: Center(child: Text(" No Participants in class", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        key: ValueKey(Matrix.of(context).client.userID.toString() +
                            widget.controller.activeSpaceId.toString() +
                            widget.controller.activeSpacesEntry.runtimeType.toString()),
                        controller: widget.controller.scrollController,
                        // add +1 space below in order to properly scroll below the spaces bar
                        itemCount: peoplerooms.length + (displayStoriesHeader ? 2 : 1),
                        itemBuilder: (BuildContext context, int i) {
                          // if (displayStoriesHeader) {
                          //   if (i == 0) {``
                          //     return const
                          //   }
                          //   i--;
                          // }
                          if (i >= peoplerooms.length) {
                            return Container();
                          }
                          return PeopleListItem(peoplerooms[i],
                              selected: widget.controller.selectedRoomIds.contains(peoplerooms[i].id),
                              onTap: widget.controller.userType == 2 || permission != null && permission!.oneToOneChatClass
                                  ? () async {
                                      final matrix = Matrix.of(context);
                                      final space = widget.controller.activeSpacesEntry.getSpace(context);
                                      //  final user = space.getState(EventTypes.RoomMember, userId)?.asUser;
                                      final roomID = await showFutureLoadingDialog(
                                        context: context,
                                        future: () => matrix.client.createRoom(
                                          invite: [peoplerooms[i].id],
                                          preset: CreateRoomPreset.privateChat,
                                          isDirect: true,
                                          initialState: [
                                            StateEvent(
                                              content: {
                                                "guest_access": "can_join",
                                              },
                                              type: EventTypes.GuestAccess,
                                              stateKey: "",
                                            ),
                                            StateEvent(content: {
                                              "via": ["matrix.staging.pangea.chat"],
                                              "canonical": true
                                            }, type: EventTypes.spaceParent, stateKey: space != null ? space.id : ""),
                                          ],
                                          // creationContent: {'type': RoomCreationTypes.mSpace},
                                          roomAliasName: peoplerooms[i].displayName! +
                                              "-" +
                                              matrix.client.userID.toString().split(":").first.replaceAll("@", "") +
                                              "#" +
                                              random.nextInt(9999).toString(),
                                          name: peoplerooms[i].displayName! +
                                              "-" +
                                              matrix.client.userID.toString().split(":").first.replaceAll("@", "") +
                                              "#" +
                                              random.nextInt(9999).toString(),
                                        ),
                                      );
                                      if (roomID.result != null) {
                                        print("Room id:" + roomID.result!);
                                        Fluttertoast.showToast(
                                            msg: "Successfully created Private Chat",
                                            webBgColor: "#00ff00",
                                            textColor: Colors.white,
                                            toastLength: Toast.LENGTH_LONG);

                                        VRouter.of(context).pop();
                                        Fluttertoast.showToast(msg: "Created Successfully", webBgColor: Colors.green, backgroundColor: Colors.green);
                                      }
                                      if (roomID == null) {
                                        VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
                                      }
                                    }
                                  : () {
                                      Fluttertoast.showToast(
                                          msg: "Not allowed to create private rooms",
                                          webBgColor: "#ff0000",
                                          textColor: Colors.white,
                                          toastLength: Toast.LENGTH_LONG);
                                    });
                        },
                      ),
              ),
              ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: isRoomExpanded,
                headerBuilder: ((context, isExpanded) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Rooms",
                            // Todo: Style needs to be updated
                          ),
                        ),
                        widget.controller.userType == 2
                            ? IconButton(
                                onPressed: () {
                                  widget.controller.activeSpacesEntry.getSpace(context) == null
                                      ? VRouter.of(context).to('/newgroup')
                                      : VRouter.of(context).to('/newgroup', queryParameters: {
                                          "spaceId": widget.controller.activeSpacesEntry.getSpace(context)!.id,
                                        });
                                },
                                icon: const Icon(Icons.add))
                            : permission != null && permission!.isCreateRooms
                                ? IconButton(
                                    onPressed: () {
                                      widget.controller.activeSpacesEntry.getSpace(context) == null
                                          ? VRouter.of(context).to('/newgroup')
                                          : VRouter.of(context).to('/newgroup', queryParameters: {
                                              "spaceId": widget.controller.activeSpacesEntry.getSpace(context)!.id,
                                            });
                                    },
                                    icon: const Icon(Icons.add))
                                : Container(),
                      ],
                    )),
                body: rooms.length == 0
                    ? Container(
                        height: 200,
                        child: Center(child: Text(" No Rooms in class", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))),
                      )
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        key: ValueKey(Matrix.of(context).client.userID.toString() +
                            widget.controller.activeSpaceId.toString() +
                            widget.controller.activeSpacesEntry.runtimeType.toString()),
                        controller: widget.controller.scrollController,
                        // add +1 space below in order to properly scroll below the spaces bar
                        itemCount: rooms.length + (displayStoriesHeader ? 2 : 1),
                        itemBuilder: (BuildContext context, int i) {
                          if (i >= rooms.length) {
                            return Container();
                          }

                          return ChatListItem(
                            rooms[i],
                            selected: widget.controller.selectedRoomIds.contains(rooms[i].id),
                            onTap: widget.controller.selectMode == SelectMode.select ? () => widget.controller.toggleSelection(rooms[i].id) : null,
                            onLongPress: () => widget.controller.toggleSelection(rooms[i].id),
                            activeChat: widget.controller.activeChat == rooms[i].id,
                          );
                        },
                      ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  bool _animationReversed() {
    bool reversed;
    // in case the matrix id changes, check the indexOf the matrix id
    final newClient = Matrix.of(context).client;
    if (_lastUserId != newClient.userID) {
      reversed = Matrix.of(context).currentBundle!.indexWhere((element) => element!.userID == _lastUserId) <
          Matrix.of(context).currentBundle!.indexWhere((element) => element!.userID == newClient.userID);
    }
    // otherwise, the space changed...
    else {
      reversed = widget.controller.spacesEntries.indexWhere((element) => element == _lastSpace) <
          widget.controller.spacesEntries.indexWhere((element) => element == widget.controller.activeSpacesEntry);
    }
    _lastUserId = newClient.userID;
    _lastSpace = widget.controller.activeSpacesEntry;
    return reversed;
  }
}
