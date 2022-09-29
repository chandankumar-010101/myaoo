import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix_link_text/link_text.dart';
import 'package:vrouter/vrouter.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/pages/chat_details/chat_details.dart';
import 'package:pangeachat/pages/chat_details/participant_list_item.dart';
import 'package:pangeachat/utils/fluffy_share.dart';
import 'package:pangeachat/utils/matrix_sdk_extensions.dart/matrix_locals.dart';
import 'package:pangeachat/widgets/avatar.dart';
import 'package:pangeachat/widgets/chat_settings_popup_menu.dart';
import 'package:pangeachat/widgets/content_banner.dart';
import 'package:pangeachat/widgets/layouts/max_width_body.dart';
import 'package:pangeachat/widgets/matrix.dart';
import '../../utils/url_launcher.dart';

class ChatDetailsView extends StatefulWidget {
  final ChatDetailsController controller;

  ChatDetailsView(this.controller, {Key? key}) : super(key: key);

  @override
  State<ChatDetailsView> createState() => _ChatDetailsViewState();
}

class _ChatDetailsViewState extends State<ChatDetailsView> {
  Future<dynamic>? profileFuture;
  Profile? profile;
  bool profileUpdated = false;
  void updateProfile() => setState(() {
        profileUpdated = true;
        profile = profileFuture = null;
      });

  void setDisplaynameAction() async {
    final input = await showTextInputDialog(
      useRootNavigator: false,
      context: context,
      title: L10n.of(context)!.editDisplayname,
      okLabel: L10n.of(context)!.ok,
      cancelLabel: L10n.of(context)!.cancel,
      textFields: [
        DialogTextField(
          initialText: profile?.displayName ?? Matrix.of(context).client.userID!.localpart,
        )
      ],
    );
    if (input == null) return;
    final matrix = Matrix.of(context);
    final success = await showFutureLoadingDialog(
      context: context,
      future: () => matrix.client.setDisplayName(matrix.client.userID!, input.single),
    );
    if (success.error == null) {
      updateProfile();
    }
  }

  fetchRoomInfo(Room room) {
    try {
      final String? parentRoomID = room.spaceParents.first.roomId;
      if (parentRoomID != null) {
        final Room? parentroom = Matrix.of(context).client.getRoomById(parentRoomID);
        if (parentroom != null) {
          GetStorage().write("reportroomId", parentroom.name.toString());
        }
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final client = Matrix.of(context).client;
    profileFuture ??= client
        .getProfileFromUserId(
      client.userID!,
      cache: !profileUpdated,
      getFromRooms: !profileUpdated,
    )
        .then((p) {
      if (mounted) setState(() => profile = p);
      return p;
    });
    final room = Matrix.of(context).client.getRoomById(widget.controller.roomId!);
    // String teacherName = Matrix.of(context).client.getRoomById(controller.roomId!)!.displayname ?? "";
    // print(teacherName.toString());

    if (room != null) {
      fetchRoomInfo(room);
    }

    if (room == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context)!.oopsSomethingWentWrong),
        ),
        body: Center(
          child: Text(L10n.of(context)!.youAreNoLongerParticipatingInThisChat),
        ),
      );
    }

    widget.controller.members!.removeWhere((u) => u.membership == Membership.leave);
    final actualMembersCount = (room.summary.mInvitedMemberCount ?? 0) + (room.summary.mJoinedMemberCount ?? 0);
    final canRequestMoreMembers = widget.controller.members!.length < actualMembersCount;
    final iconColor = Theme.of(context).textTheme.bodyText1!.color;
    return StreamBuilder(
        stream: room.onUpdate.stream,
        builder: (context, snapshot) {
          return Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
                SliverAppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.close_outlined),
                    onPressed: () => VRouter.of(context).path.startsWith('/classes/')
                        ? VRouter.of(context).pop()
                        : VRouter.of(context).toSegments(['rooms', widget.controller.roomId!]),
                  ),
                  elevation: Theme.of(context).appBarTheme.elevation,
                  expandedHeight: 300.0,
                  floating: true,
                  pinned: true,
                  actions: <Widget>[
                    if (room.canonicalAlias.isNotEmpty)
                      IconButton(
                        tooltip: L10n.of(context)!.share,
                        icon: Icon(Icons.adaptive.share_outlined),
                        onPressed: () => FluffyShare.share(AppConfig.inviteLinkPrefix + room.canonicalAlias, context),
                      ),
                    ChatSettingsPopupMenu(room, false)
                  ],
                  title: Text(
                    room
                        .getLocalizedDisplayname(MatrixLocals(L10n.of(context)!))
                        .toString()
                        .split("#")
                        .first
                        .replaceAll("${Matrix.of(context).client.userID!.toString().toLowerCase().split(":").first.replaceAll("@", "")}", "")
                        .replaceAll("-", ""),
                  ),
                  backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                  flexibleSpace: FlexibleSpaceBar(
                    background:
                        ContentBanner(mxContent: room.avatar, onEdit: room.canSendEvent('m.room.avatar') ? widget.controller.setAvatarAction : null),
                  ),
                ),
              ],
              body: MaxWidthBody(
                child: ListView.builder(
                  itemCount: widget.controller.members!.length + 1 + (canRequestMoreMembers ? 1 : 0),
                  itemBuilder: (BuildContext context, int i) => i == 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ListTile(
                              leading: room.canSendEvent('m.room.topic')
                                  ? CircleAvatar(
                                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                      foregroundColor: iconColor,
                                      radius: Avatar.defaultSize / 2,
                                      child: const Icon(Icons.edit_outlined),
                                    )
                                  : null,
                              title: Text('${L10n.of(context)!.groupDescription}:',
                                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold)),
                              subtitle: LinkText(
                                text: room.topic.isEmpty ? L10n.of(context)!.addGroupDescription : room.topic,
                                linkStyle: const TextStyle(color: Colors.blueAccent),
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).textTheme.bodyText2!.color,
                                ),
                                onLinkTap: (url) => UrlLauncher(context, url).launchUrl(),
                              ),
                              onTap: room.canSendEvent('m.room.topic') ? widget.controller.setTopicAction : null,
                            ),
                            const SizedBox(height: 8),
                            const Divider(height: 1),
                            ListTile(
                              title: Text(
                                L10n.of(context)!.settings,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing:
                                  Icon(widget.controller.displaySettings ? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_right_outlined),
                              onTap: widget.controller.toggleDisplaySettings,
                            ),
                            if (widget.controller.displaySettings) ...[
                              if (room.canSendEvent('m.room.name'))
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                    foregroundColor: iconColor,
                                    child: const Icon(Icons.people_outline_outlined),
                                  ),
                                  title: Text(L10n.of(context)!.changeTheNameOfTheGroup),
                                  subtitle: Text(room.getLocalizedDisplayname(MatrixLocals(L10n.of(context)!))),
                                  onTap: widget.controller.setDisplaynameAction,
                                ),
                              if (room.joinRules == JoinRules.public)
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                    foregroundColor: iconColor,
                                    child: const Icon(Icons.link_outlined),
                                  ),
                                  onTap: widget.controller.editAliases,
                                  title: Text(L10n.of(context)!.editRoomAliases),
                                  subtitle: Text((room.canonicalAlias.isNotEmpty) ? room.canonicalAlias : L10n.of(context)!.none),
                                ),
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                  foregroundColor: iconColor,
                                  child: const Icon(Icons.insert_emoticon_outlined),
                                ),
                                title: Text(L10n.of(context)!.emoteSettings),
                                subtitle: Text(L10n.of(context)!.setCustomEmotes),
                                onTap: widget.controller.goToEmoteSettings,
                              ),
                              PopupMenuButton(
                                onSelected: widget.controller.setJoinRulesAction,
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<JoinRules>>[
                                  if (room.canChangeJoinRules)
                                    PopupMenuItem<JoinRules>(
                                      value: JoinRules.public,
                                      child: Text(JoinRules.public.getLocalizedString(MatrixLocals(L10n.of(context)!))),
                                    ),
                                  if (room.canChangeJoinRules)
                                    PopupMenuItem<JoinRules>(
                                      value: JoinRules.invite,
                                      child: Text(JoinRules.invite.getLocalizedString(MatrixLocals(L10n.of(context)!))),
                                    ),
                                ],
                                child: ListTile(
                                  leading: CircleAvatar(
                                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                      foregroundColor: iconColor,
                                      child: const Icon(Icons.shield_outlined)),
                                  title: Text(L10n.of(context)!.whoIsAllowedToJoinThisGroup),
                                  subtitle: Text(
                                    room.joinRules!.getLocalizedString(MatrixLocals(L10n.of(context)!)),
                                  ),
                                ),
                              ),
                              PopupMenuButton(
                                onSelected: widget.controller.setHistoryVisibilityAction,
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<HistoryVisibility>>[
                                  if (room.canChangeHistoryVisibility)
                                    PopupMenuItem<HistoryVisibility>(
                                      value: HistoryVisibility.invited,
                                      child: Text(HistoryVisibility.invited.getLocalizedString(MatrixLocals(L10n.of(context)!))),
                                    ),
                                  if (room.canChangeHistoryVisibility)
                                    PopupMenuItem<HistoryVisibility>(
                                      value: HistoryVisibility.joined,
                                      child: Text(HistoryVisibility.joined.getLocalizedString(MatrixLocals(L10n.of(context)!))),
                                    ),
                                  if (room.canChangeHistoryVisibility)
                                    PopupMenuItem<HistoryVisibility>(
                                      value: HistoryVisibility.shared,
                                      child: Text(HistoryVisibility.shared.getLocalizedString(MatrixLocals(L10n.of(context)!))),
                                    ),
                                  if (room.canChangeHistoryVisibility)
                                    PopupMenuItem<HistoryVisibility>(
                                      value: HistoryVisibility.worldReadable,
                                      child: Text(HistoryVisibility.worldReadable.getLocalizedString(MatrixLocals(L10n.of(context)!))),
                                    ),
                                ],
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                    foregroundColor: iconColor,
                                    child: const Icon(Icons.visibility_outlined),
                                  ),
                                  title: Text(L10n.of(context)!.visibilityOfTheChatHistory),
                                  subtitle: Text(
                                    room.historyVisibility!.getLocalizedString(MatrixLocals(L10n.of(context)!)),
                                  ),
                                ),
                              ),
                              if (room.joinRules == JoinRules.public)
                                PopupMenuButton(
                                  onSelected: widget.controller.setGuestAccessAction,
                                  itemBuilder: (BuildContext context) => <PopupMenuEntry<GuestAccess>>[
                                    if (room.canChangeGuestAccess)
                                      PopupMenuItem<GuestAccess>(
                                        value: GuestAccess.canJoin,
                                        child: Text(
                                          GuestAccess.canJoin.getLocalizedString(MatrixLocals(L10n.of(context)!)),
                                        ),
                                      ),
                                    if (room.canChangeGuestAccess)
                                      PopupMenuItem<GuestAccess>(
                                        value: GuestAccess.forbidden,
                                        child: Text(
                                          GuestAccess.forbidden.getLocalizedString(MatrixLocals(L10n.of(context)!)),
                                        ),
                                      ),
                                  ],
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                      foregroundColor: iconColor,
                                      child: const Icon(Icons.person_add_alt_1_outlined),
                                    ),
                                    title: Text(L10n.of(context)!.areGuestsAllowedToJoin),
                                    subtitle: Text(
                                      room.guestAccess.getLocalizedString(MatrixLocals(L10n.of(context)!)),
                                    ),
                                  ),
                                ),
                              ListTile(
                                title: Text(L10n.of(context)!.editChatPermissions),
                                subtitle: Text(L10n.of(context)!.whoCanPerformWhichAction),
                                leading: CircleAvatar(
                                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                  foregroundColor: iconColor,
                                  child: const Icon(Icons.edit_attributes_outlined),
                                ),
                                onTap: () => VRouter.of(context).to('permissions'),
                              ),
                            ],
                            const Divider(height: 1),
                            ListTile(
                              title: Text(
                                actualMembersCount > 1
                                    ? L10n.of(context)!.countParticipants(actualMembersCount.toString())
                                    : L10n.of(context)!.emptyChat,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            room.canInvite
                                ? ListTile(
                                    title: Text(L10n.of(context)!.inviteContact),
                                    leading: CircleAvatar(
                                      backgroundColor: Theme.of(context).primaryColor,
                                      foregroundColor: Colors.white,
                                      radius: Avatar.defaultSize / 2,
                                      child: const Icon(Icons.add_outlined),
                                    ),
                                    onTap: () => VRouter.of(context).to('invite'),
                                  )
                                : Container(),
                          ],
                        )
                      : i < widget.controller.members!.length + 1
                          ? ParticipantListItem(widget.controller.members![i - 1], room)
                          : ListTile(
                              title: Text(
                                  L10n.of(context)!.loadCountMoreParticipants((actualMembersCount - widget.controller.members!.length).toString())),
                              leading: CircleAvatar(
                                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                child: const Icon(
                                  Icons.refresh,
                                  color: Colors.grey,
                                ),
                              ),
                              onTap: widget.controller.requestMoreMembersAction,
                            ),
                ),
              ),
            ),
          );
        });
  }
}
