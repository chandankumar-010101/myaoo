import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_storage/get_storage.dart';
import 'package:keyboard_shortcuts/keyboard_shortcuts.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/pages/chat_list/chat_list.dart';
import 'package:pangeachat/pages/chat_list/client_chooser_button.dart';
import 'package:vrouter/vrouter.dart';

import '../../widgets/matrix.dart';
import 'chat_list_item.dart';

class ChatListHeader extends StatelessWidget implements PreferredSizeWidget {
  final ChatListController controller;

  ChatListHeader({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectMode = controller.selectMode;
    final sp = controller.activeSpacesEntry.getSpace(context);
    final inviteRooms =
    controller.activeSpacesEntry.getInviteRooms(context);
    final displayStoriesHeader = controller.activeSpacesEntry.shouldShowStoriesHeader(context);
    return AppBar(
      elevation: controller.scrolledToTop ? 0 : null,
      actionsIconTheme: IconThemeData(
        color: controller.selectedRoomIds.isEmpty ? null : Theme.of(context).colorScheme.primary,
      ),
      leading: Matrix.of(context).isMultiAccount
          ? ClientChooserButton(controller)
          : selectMode != SelectMode.normal
              ? IconButton(
        tooltip: L10n.of(context)!.cancel,
        icon: const Icon(Icons.close_outlined),
        onPressed: controller.cancelAction,
        color: Theme.of(context).colorScheme.primary,
      ):null,
      centerTitle: false,
      actions: selectMode == SelectMode.share
          ? null
          : selectMode == SelectMode.select
              ? [
                  if (controller.spaces.isNotEmpty)
                    IconButton(
                      tooltip: L10n.of(context)!.addToSpace,
                      icon: const Icon(Icons.group_work_outlined),
                      onPressed: controller.addOrRemoveToSpace,
                    ),
                  IconButton(
                    tooltip: L10n.of(context)!.toggleUnread,
                    icon: Icon(controller.anySelectedRoomNotMarkedUnread ? Icons.mark_chat_read_outlined : Icons.mark_chat_unread_outlined),
                    onPressed: controller.toggleUnread,
                  ),
                  IconButton(
                    tooltip: L10n.of(context)!.toggleFavorite,
                    icon: Icon(controller.anySelectedRoomNotFavorite ? Icons.push_pin_outlined : Icons.push_pin),
                    onPressed: controller.toggleFavouriteRoom,
                  ),

                  IconButton(
                    icon: Icon(controller.anySelectedRoomNotMuted ? Icons.notifications_off_outlined : Icons.notifications_outlined),
                    tooltip: L10n.of(context)!.toggleMuted,
                    onPressed: controller.toggleMuted,
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete_outlined),
                    tooltip: L10n.of(context)!.archive,
                    onPressed: controller.archiveAction,
                  ),
                ]
              : [
        // ListView.builder(
        //   physics: const NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   key: ValueKey(Matrix.of(context)
        //       .client
        //       .userID
        //       .toString() +
        //       widget.controller.activeSpaceId.toString() +
        //       widget
        //           .controller.activeSpacesEntry.runtimeType
        //           .toString()),
        //   controller: widget.controller.scrollController,
        //   // add +1 space below in order to properly scroll below the spaces bar
        //   itemCount: inviteRooms.length +
        //       (displayStoriesHeader ? 2 : 1),
        //   itemBuilder: (BuildContext context, int i) {
        //     if (i >= inviteRooms.length) {
        //       return Container();
        //     }
        //     if (inviteRooms[i].id.isEmpty) {
        //       return Container();
        //     }
        //     return ChatListItem(
        //       inviteRooms[i],
        //       selected: widget.controller.selectedRoomIds
        //           .contains(inviteRooms[i].id),
        //       onTap: widget.controller.selectMode ==
        //           SelectMode.select
        //           ? () => widget.controller
        //           .toggleSelection(inviteRooms[i].id)
        //           : null,
        //       onLongPress: () => widget.controller
        //           .toggleSelection(inviteRooms[i].id),
        //       activeChat: widget.controller.activeChat ==
        //           inviteRooms[i].id,
        //     );
        //   },
        // )
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: "",
              onPressed: () {
                showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Container(
                            width: MediaQuery.of(context).size.width *0.5,
                            height: MediaQuery.of(context).size.height *0.6,
                            child:   Scaffold(
                              appBar: AppBar(
                                leading: IconButton(icon:Icon(Icons.close), onPressed: ()=>Navigator.of(context).pop(),),
                                title: Text("Invitations"),
                              ),
                              body: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                key: ValueKey(Matrix.of(context)
                                    .client
                                    .userID
                                    .toString() +
                                    controller.activeSpaceId.toString() + controller.activeSpacesEntry.runtimeType
                                    .toString()),
                                controller: controller.scrollController,
                                // add +1 space below in order to properly scroll below the spaces bar
                                itemCount: inviteRooms.length + (displayStoriesHeader ? 2 : 1),
                                itemBuilder: (BuildContext context, int i) {
                                  if (i >= inviteRooms.length) {
                                    return Container();
                                  }
                                  if (inviteRooms[i].id.isEmpty) {
                                    return Container();
                                  }
                                  return ChatListItem(
                                    inviteRooms[i],
                                    selected: controller.selectedRoomIds
                                        .contains(inviteRooms[i].id),
                                    onTap: controller.selectMode ==
                                        SelectMode.select
                                        ? () => controller
                                        .toggleSelection(inviteRooms[i].id)
                                        : null,
                                    onLongPress: () => controller
                                        .toggleSelection(inviteRooms[i].id),
                                    activeChat: controller.activeChat ==
                                        inviteRooms[i].id,
                                  );
                                },
                              ),
                            )
                        ),
                      );
                    });

              },
            ),
            inviteRooms.isNotEmpty ?  Positioned(
              right: 5,
              top: 8,
              child: new Container(
                padding: EdgeInsets.all(2),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 14,
                  minHeight: 14,
                ),
                child: Text(
                  '${inviteRooms.length}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ) : new Container()
          ],
        ),

                  KeyBoardShortcuts(
                    keysToPress: {LogicalKeyboardKey.controlLeft, LogicalKeyboardKey.keyF},
                    onKeysPressed: () => VRouter.of(context).to('/search'),
                    helpLabel: L10n.of(context)!.search,
                    child: IconButton(
                      icon: const Icon(Icons.search_outlined),
                      tooltip: L10n.of(context)!.search,
                      onPressed: () => VRouter.of(context).to('/search'),
                    ),
                  ),
                  // if (selectMode == SelectMode.normal)
                  //   sp != null
                  //       ? controller.permissions != null && controller.permissions!.isCreateStories
                  //           ? IconButton(
                  //               icon: const Icon(Icons.camera_alt_outlined),
                  //               tooltip: L10n.of(context)!.addToStory,
                  //               onPressed: () => controller.activeSpacesEntry.getSpace(context) != null
                  //                   ? VRouter.of(context).to(
                  //                       '/stories/create',
                  //                       queryParameters: {"spaceId": controller.activeSpacesEntry.getSpace(context)!.id},
                  //                     )
                  //                   : VRouter.of(context).to(
                  //                       '/stories/create',
                  //                     ),
                  //             )
                  //           : Container()
                  //       : Container(),
                  PopupMenuButton<PopupMenuAction>(
                      onSelected: controller.onPopupMenuSelect,
                      itemBuilder: (_) => [
                            PopupMenuItem(
                              value: PopupMenuAction.setStatus,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.edit_outlined),
                                  const SizedBox(width: 12),
                                  Text(L10n.of(context)!.setStatus),
                                ],
                              ),
                            ),

                            ///create new room
                            PopupMenuItem(
                              value: PopupMenuAction.newGroup,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.group_add_outlined),
                                  const SizedBox(width: 12),
                                  Text(L10n.of(context)!.createNewGroup),
                                ],
                              ),
                            ),

                            ///create new class
                            if (GetStorage().read("usertype") == 2)
                              PopupMenuItem(
                                enabled: true,
                                value: PopupMenuAction.newSpace,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.group_work_outlined),
                                    const SizedBox(width: 12),
                                    Text(L10n.of(context)!.createNewSpace),
                                  ],
                                ),
                              ),

                            ///join with class code
                            if (GetStorage().read("usertype") != 2)
                              PopupMenuItem(
                                value: PopupMenuAction.copyCode,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.class_outlined),
                                    const SizedBox(width: 12),
                                    Text("Join with Code"),
                                  ],
                                ),
                              ),

                            ///archive
                            PopupMenuItem(
                              value: PopupMenuAction.archive,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.archive_outlined),
                                  const SizedBox(width: 12),
                                  Text(L10n.of(context)!.archive),
                                ],
                              ),
                            ),

                            ///settings
                            PopupMenuItem(
                              value: PopupMenuAction.settings,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.settings_outlined),
                                  const SizedBox(width: 12),
                                  Text(L10n.of(context)!.settings),
                                ],
                              ),
                            ),

                            // PopupMenuItem(
                            //   value: PopupMenuAction.copyCode,
                            //   child: Row(
                            //     mainAxisSize: MainAxisSize.min,
                            //     children: [
                            //       const Icon(Icons.class_outlined),
                            //       const SizedBox(width: 12),
                            //       Text("Join with Code"),
                            //     ],
                            //   ),
                            // ),

                            // PopupMenuItem(
                            //   value: PopupMenuAction.invite,
                            //   child: Row(
                            //     mainAxisSize: MainAxisSize.min,
                            //     children: [
                            //       Icon(Icons.adaptive.share_outlined),
                            //       const SizedBox(width: 12),
                            //       Text(L10n.of(context)!.inviteContact),
                            //     ],
                            //   ),
                            // ),
                          ]),
                ],
      title: PageTransitionSwitcher(
        reverse: false,
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.scaled,
            fillColor: Colors.transparent,
            child: child,
          );
        },
        layoutBuilder: (children) => Stack(
          alignment: AlignmentDirectional.centerStart,
          children: children,
        ),
        child: selectMode == SelectMode.share
            ? Text(
                L10n.of(context)!.share,
                key: const ValueKey(SelectMode.share),
              )
            : selectMode == SelectMode.select
                ? Text(
                    controller.selectedRoomIds.length.toString(),
                    key: const ValueKey(SelectMode.select),
                  )
                : (() {
                    final name = controller.activeSpaceId == null
                        ? AppConfig.applicationName : Matrix.of(context).client.getRoomById(controller.activeSpaceId!)!.displayname;
                    return Text(name, key: ValueKey(name));
                  })(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
