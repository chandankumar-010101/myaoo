import 'package:flutter/material.dart';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:collection/collection.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/pages/chat_list/chat_list.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/utils/matrix_sdk_extensions.dart/client_stories_extension.dart';
import 'package:pangeachat/widgets/avatar.dart';
import 'package:pangeachat/widgets/matrix.dart';

enum ContextualRoomAction {
  mute,
  unmute,
  leave,
}

class StoriesHeader extends StatelessWidget {
  ChatListController? controller;
  List<Room>? spaceStories;
  StoriesHeader({this.controller, this.spaceStories, Key? key}) : super(key: key);

  void _addToStoryAction(BuildContext context) => VRouter.of(context).to('/stories/create');

  void _goToStoryAction(BuildContext context, String roomId) async {
    final room = Matrix.of(context).client.getRoomById(roomId);

    if (room == null) return;
    if (room.membership != Membership.join) {
      final result = await showFutureLoadingDialog(
        context: context,
        future: room.join,
      );
      if (result.error != null) return;
    }
    VRouter.of(context).toSegments(['stories', roomId]);
  }

  void _contextualActions(BuildContext context, Room room) async {
    final action = await showModalActionSheet<ContextualRoomAction>(
      cancelLabel: L10n.of(context)!.cancel,
      context: context,
      actions: [
        if (room.pushRuleState != PushRuleState.notify)
          SheetAction(
            label: L10n.of(context)!.unmuteChat,
            key: ContextualRoomAction.unmute,
            icon: Icons.notifications_outlined,
          )
        else
          SheetAction(
            label: L10n.of(context)!.muteChat,
            key: ContextualRoomAction.mute,
            icon: Icons.notifications_off_outlined,
          ),
        SheetAction(
          label: L10n.of(context)!.unsubscribeStories,
          key: ContextualRoomAction.leave,
          icon: Icons.unsubscribe_outlined,
          isDestructiveAction: true,
        ),
      ],
    );
    if (action == null) return;
    switch (action) {
      case ContextualRoomAction.mute:
        await showFutureLoadingDialog(
          context: context,
          future: () => room.setPushRuleState(PushRuleState.dontNotify),
        );
        break;
      case ContextualRoomAction.unmute:
        await showFutureLoadingDialog(
          context: context,
          future: () => room.setPushRuleState(PushRuleState.notify),
        );
        break;
      case ContextualRoomAction.leave:
        await showFutureLoadingDialog(
          context: context,
          future: () => room.leave(),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final client = Matrix.of(context).client;
    return StreamBuilder(
      stream: Matrix.of(context).onShareContentChanged.stream,
      builder: (context, _) => StreamBuilder<Object>(
          stream: client.onSync.stream.where((syncUpdate) => syncUpdate.hasRoomUpdate),
          builder: (context, snapshot) {
            if (Matrix.of(context).shareContent != null) {
              return ListTile(
                leading: CircleAvatar(
                  radius: Avatar.defaultSize / 2,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  foregroundColor: Theme.of(context).textTheme.bodyText1?.color,
                  child: const Icon(Icons.camera_alt_outlined),
                ),
                title: Text(L10n.of(context)!.addToStory),
                onTap: () => _addToStoryAction(context),
              );
            }
            if (client.storiesRooms.isEmpty) {
              return Container();
            }
            final ownStoryRoom = client.storiesRooms.firstWhereOrNull((r) => r.creatorId == client.userID);

            final stories = [
              if (ownStoryRoom != null) ownStoryRoom,
              ...client.storiesRooms..remove(ownStoryRoom),
            ];
            final sp = controller!.activeSpacesEntry.getSpace(context);

            return controller!.activeSpacesEntry.getSpace(context) != null
                ? SizedBox(
                    height: 105,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      scrollDirection: Axis.horizontal,
                      itemCount: spaceStories!.length,
                      itemBuilder: (context, i) {
                        final room = spaceStories![i];
                        return Opacity(
                          opacity: room.hasPosts ? 1 : 0.75,
                          child: FutureBuilder<Profile>(
                              future: room.getCreatorProfile(),
                              builder: (context, snapshot) {
                                final userId = room.creatorId;
                                final displayname = room.displayname;
                                final avatarUrl = snapshot.data?.avatarUrl;
                                return _StoryButton(
                                  profile: Profile(
                                    displayName: displayname,
                                    avatarUrl: avatarUrl,
                                    userId: userId ?? 'Unknown',
                                  ),
                                  showEditFab: userId == client.userID,
                                  unread: room.membership == Membership.invite || room.hasNewMessages,
                                  onPressed: () => _goToStoryAction(context, room.id),
                                  onLongPressed: () => _contextualActions(context, room),
                                );
                              }),
                        );
                      },
                    ),
                  )
                : Container();
          }),
    );
  }
}

extension on Room {
  Future<Profile> getCreatorProfile() => client.getProfileFromUserId(getState(EventTypes.RoomCreate)!.senderId);

  bool get hasPosts {
    if (membership == Membership.invite) return true;
    final lastEvent = this.lastEvent;
    if (lastEvent == null) return false;
    if (lastEvent.type != EventTypes.Message) return false;
    if (DateTime.now().difference(lastEvent.originServerTs).inHours > ClientStoriesExtension.lifeTimeInHours) {
      return false;
    }
    return true;
  }
}

class _StoryButton extends StatelessWidget {
  final Profile profile;
  final bool showEditFab;
  final bool unread;
  final void Function() onPressed;
  final void Function()? onLongPressed;

  const _StoryButton({
    required this.profile,
    required this.onPressed,
    this.showEditFab = false,
    this.unread = false,
    this.onLongPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: onPressed,
        onLongPress: onLongPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Material(
                elevation: Theme.of(context).appBarTheme.elevation ?? 7,
                shadowColor: Theme.of(context).appBarTheme.shadowColor,
                borderRadius: BorderRadius.circular(Avatar.defaultSize),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    gradient: unread
                        ? const LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.purple,
                              Colors.orange,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )
                        : null,
                    color: unread ? null : Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(Avatar.defaultSize),
                  ),
                  child: Stack(
                    children: [
                      Material(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(Avatar.defaultSize),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Theme.of(context).colorScheme.surface,
                            foregroundColor: Theme.of(context).textTheme.bodyText1?.color,
                            child: Avatar(
                              mxContent: profile.avatarUrl,
                              name: profile.displayName,
                              size: 100,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      // if (showEditFab)
                      //   Positioned(
                      //     right: 0,
                      //     bottom: 0,
                      //     child: SizedBox(
                      //       width: 24,
                      //       height: 24,
                      //       child: FloatingActionButton.small(
                      //         heroTag: null,
                      //         onPressed: () => VRouter.of(context).to('/stories/create'),
                      //         child: const Icon(
                      //           Icons.add_outlined,
                      //           size: 16,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                    ],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 100,
                  child: Expanded(
                    child: Text(
                      profile.displayName ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: unread ? FontWeight.bold : null,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on Room {
  String? get creatorId => getState(EventTypes.RoomCreate)?.senderId;
}
