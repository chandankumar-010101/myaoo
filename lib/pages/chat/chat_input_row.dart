import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:animations/animations.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_storage/get_storage.dart';
import 'package:keyboard_shortcuts/keyboard_shortcuts.dart';
import 'package:matrix/matrix.dart';

import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/utils/platform_infos.dart';
import 'package:pangeachat/widgets/avatar.dart';
import 'package:pangeachat/widgets/matrix.dart';

import '../../model/class_detail_model.dart';
import '../../services/services.dart';
import 'chat.dart';
import 'input_bar.dart';
import 'package:pangea_choreographer/pangea_choreographer.dart';

class ChatInputRow extends StatefulWidget {
  final ChatController controller;

  const ChatInputRow(this.controller, {Key? key}) : super(key: key);

  @override
  State<ChatInputRow> createState() => _ChatInputRowState();
}

class _ChatInputRowState extends State<ChatInputRow> {
  bool showImage = false;
  bool showFile = false;
  bool showVideo = false;
  bool showLocation = false;
  int userType = GetStorage().read("usertype") ?? 0;
  late Permissions permission;

  @override
  void initState() {
    super.initState();
  }

  Future<Permissions> getClassPermissions() async {
    late Permissions permissions;

    String acessToken = GetStorage().read("access");
    Room room = widget.controller.room!;
    final id = room.spaceParents != null && room.spaceParents.isNotEmpty ? room.spaceParents.first.roomId : null;
    if (id != null) {
      final result = await PangeaServices.fetchClassInfo(context, id);
      permissions = result.permissions;
      log("One on One room (${id}): ${result.permissions.oneToOneChatClass}");
      log("Create Room  (${id}): ${result.permissions.isCreateRooms}");
      log("Stories  (${id}): ${result.permissions.isCreateStories}");
    } else {
      permissions = Permissions(
          pangeaClass: 0,
          isPublic: true,
          isOpenEnrollment: true,
          isOpenExchange: true,
          oneToOneChatClass: true,
          oneToOneChatExchange: true,
          isCreateRooms: true,
          isCreateRoomsExchange: true,
          isShareVideo: true,
          isSharePhoto: true,
          isShareFiles: true,
          isShareLocation: true,
          isCreateStories: true);
    }

    return permissions;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.controller.showEmojiPicker && widget.controller.emojiPickerType == EmojiPickerType.reaction) {
      return Container();
    }

    return FutureBuilder(
      future: getClassPermissions(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          permission = snapshot.data as Permissions;
          return Column(
            children: [
              ChoreoBar(controller: widget.controller.choreoController),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: widget.controller.selectMode
                    ? <Widget>[
                        SizedBox(
                          height: 56,
                          child: TextButton(
                            onPressed: widget.controller.forwardEventsAction,
                            child: Row(
                              children: <Widget>[
                                const Icon(Icons.keyboard_arrow_left_outlined),
                                Text(L10n.of(context)!.forward),
                              ],
                            ),
                          ),
                        ),
                        widget.controller.selectedEvents.length == 1
                            ? widget.controller.selectedEvents.first.getDisplayEvent(widget.controller.timeline!).status.isSent
                                ? SizedBox(
                                    height: 56,
                                    child: TextButton(
                                      onPressed: widget.controller.replyAction,
                                      child: Row(
                                        children: <Widget>[
                                          Text(L10n.of(context)!.reply),
                                          const Icon(Icons.keyboard_arrow_right),
                                        ],
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    height: 56,
                                    child: TextButton(
                                      onPressed: widget.controller.sendAgainAction,
                                      child: Row(
                                        children: <Widget>[
                                          Text(L10n.of(context)!.tryToSendAgain),
                                          const SizedBox(width: 4),
                                          const Icon(Icons.send_outlined, size: 16),
                                        ],
                                      ),
                                    ),
                                  )
                            : Container(),
                      ]
                    : <Widget>[
                        KeyBoardShortcuts(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            height: 56,
                            width: widget.controller.inputText.isEmpty ? 56 : 0,
                            alignment: Alignment.center,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(),
                            child: PopupMenuButton<String>(
                              icon: const Icon(Icons.add_outlined),
                              onSelected: widget.controller.onAddPopupMenuButtonSelected,
                              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                PopupMenuItem<String>(
                                  enabled: permission.isShareFiles || userType == 2,
                                  value: 'file',
                                  child: ListTile(
                                    leading: const CircleAvatar(
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.white,
                                      child: Icon(Icons.attachment_outlined),
                                    ),
                                    title: Text(L10n.of(context)!.sendFile),
                                    contentPadding: const EdgeInsets.all(0),
                                  ),
                                ),
                                // PopupMenuItem<String>(
                                //   enabled: showLocation,
                                //   value: 'location',
                                //   child: ListTile(
                                //     leading: const CircleAvatar(
                                //       backgroundColor: Colors.green,
                                //       foregroundColor: Colors.white,
                                //       child: Icon(Icons.location_pin),
                                //     ),
                                //     title: Text("Send Location"),
                                //     contentPadding: const EdgeInsets.all(0),
                                //   ),
                                // ),
                                PopupMenuItem<String>(
                                  enabled: permission.isSharePhoto || userType == 2,
                                  value: 'image',
                                  child: ListTile(
                                    leading: const CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white,
                                      child: Icon(Icons.image_outlined),
                                    ),
                                    title: Text(L10n.of(context)!.sendImage),
                                    contentPadding: const EdgeInsets.all(0),
                                  ),
                                ),

                                if (PlatformInfos.isMobile)
                                  PopupMenuItem<String>(
                                    value: 'camera',
                                    child: ListTile(
                                      leading: const CircleAvatar(
                                        backgroundColor: Colors.purple,
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.camera_alt_outlined),
                                      ),
                                      title: Text(L10n.of(context)!.openCamera),
                                      contentPadding: const EdgeInsets.all(0),
                                    ),
                                  ),
                                if (PlatformInfos.isMobile)
                                  PopupMenuItem<String>(
                                    value: 'camera-video',
                                    child: ListTile(
                                      leading: const CircleAvatar(
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.videocam_outlined),
                                      ),
                                      title: Text(L10n.of(context)!.openVideoCamera),
                                      contentPadding: const EdgeInsets.all(0),
                                    ),
                                  ),
                                if (widget.controller.room!.getImagePacks(ImagePackUsage.sticker).isNotEmpty)
                                  PopupMenuItem<String>(
                                    value: 'sticker',
                                    child: ListTile(
                                      leading: const CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.emoji_emotions_outlined),
                                      ),
                                      title: Text(L10n.of(context)!.sendSticker),
                                      contentPadding: const EdgeInsets.all(0),
                                    ),
                                  ),
                                if (PlatformInfos.isMobile)
                                  PopupMenuItem<String>(
                                    value: 'location',
                                    child: ListTile(
                                      leading: const CircleAvatar(
                                        backgroundColor: Colors.brown,
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.gps_fixed_outlined),
                                      ),
                                      title: Text(L10n.of(context)!.shareLocation),
                                      contentPadding: const EdgeInsets.all(0),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          keysToPress: {LogicalKeyboardKey.altLeft, LogicalKeyboardKey.keyA},
                          onKeysPressed: () => widget.controller.onAddPopupMenuButtonSelected('file'),
                          helpLabel: L10n.of(context)!.sendFile,
                        ),
                        Container(
                          height: 56,
                          alignment: Alignment.center,
                          child: KeyBoardShortcuts(
                            child: IconButton(
                              tooltip: L10n.of(context)!.emojis,
                              icon: PageTransitionSwitcher(
                                transitionBuilder: (
                                  Widget child,
                                  Animation<double> primaryAnimation,
                                  Animation<double> secondaryAnimation,
                                ) {
                                  return SharedAxisTransition(
                                    animation: primaryAnimation,
                                    secondaryAnimation: secondaryAnimation,
                                    transitionType: SharedAxisTransitionType.scaled,
                                    child: child,
                                    fillColor: Colors.transparent,
                                  );
                                },
                                child: Icon(
                                  widget.controller.showEmojiPicker ? Icons.keyboard : Icons.emoji_emotions_outlined,
                                  key: ValueKey(widget.controller.showEmojiPicker),
                                ),
                              ),
                              onPressed: widget.controller.emojiPickerAction,
                            ),
                            keysToPress: {LogicalKeyboardKey.altLeft, LogicalKeyboardKey.keyE},
                            onKeysPressed: widget.controller.emojiPickerAction,
                            helpLabel: L10n.of(context)!.emojis,
                          ),
                        ),
                        if (widget.controller.matrix!.isMultiAccount &&
                            widget.controller.matrix!.hasComplexBundles &&
                            widget.controller.matrix!.currentBundle!.length > 1)
                          Container(
                            height: 56,
                            alignment: Alignment.center,
                            child: _ChatAccountPicker(widget.controller),
                          ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: InputBar(
                              room: widget.controller.room!,
                              minLines: 1,
                              maxLines: 8,
                              autofocus: !PlatformInfos.isMobile,
                              keyboardType: TextInputType.multiline,
                              textInputAction: AppConfig.sendOnEnter ? TextInputAction.send : null,
                              onSubmitted: widget.controller.onInputBarSubmitted,
                              focusNode: widget.controller.inputFocus,
                              controller: widget.controller.sendController,
                              decoration: InputDecoration(
                                hintText: L10n.of(context)!.writeAMessage,
                                hintMaxLines: 1,
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                filled: false,
                              ),
                              onChanged: widget.controller.onInputBarChanged,
                            ),
                          ),
                        ),
                        if (kIsWeb && widget.controller.inputText.isEmpty)
                          Container(
                            height: 56,
                            alignment: Alignment.center,
                            child: IconButton(
                              tooltip: L10n.of(context)!.voiceMessage,
                              icon: const Icon(Icons.mic_none_outlined),
                              onPressed: widget.controller.voiceMessageAction,
                            ),
                          ),
                        if (!PlatformInfos.isMobile || widget.controller.inputText.isNotEmpty)
                          widget.controller.choreoController.isOpen
                              ? Padding(
                                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                                  child: ItSrcSendButton(
                                    controller: widget.controller.choreoController,
                                  ),
                                )
                              : Tooltip(
                                  message: L10n.of(context)!.send,
                                  child: InkWell(
                                    child: Container(
                                      height: 56,
                                      alignment: Alignment.center,
                                      child: IconButton(
                                        icon: const Icon(Icons.send_outlined),
                                        onPressed: widget.controller.choreoController.openIt,
                                      ),
                                    ),
                                  ),
                                ),
                      ],
              ),
            ],
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}

class _ChatAccountPicker extends StatelessWidget {
  final ChatController controller;

  const _ChatAccountPicker(this.controller, {Key? key}) : super(key: key);

  void _popupMenuButtonSelected(String mxid) {
    final client = controller.matrix!.currentBundle!.firstWhere((cl) => cl!.userID == mxid, orElse: () => null);
    if (client == null) {
      Logs().w('Attempted to switch to a non-existing client $mxid');
      return;
    }
    controller.setSendingClient(client);
  }

  @override
  Widget build(BuildContext context) {
    controller.matrix ??= Matrix.of(context);
    final clients = controller.currentRoomBundle;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder<Profile>(
        future: controller.sendingClient!.fetchOwnProfile(),
        builder: (context, snapshot) => PopupMenuButton<String>(
          onSelected: _popupMenuButtonSelected,
          itemBuilder: (BuildContext context) => clients
              .map((client) => PopupMenuItem<String>(
                    value: client!.userID,
                    child: FutureBuilder<Profile>(
                      future: client.fetchOwnProfile(),
                      builder: (context, snapshot) => ListTile(
                        leading: Avatar(
                          mxContent: snapshot.data?.avatarUrl,
                          name: snapshot.data?.displayName ?? client.userID!.localpart,
                          size: 20,
                        ),
                        title: Text(snapshot.data?.displayName ?? client.userID!),
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                  ))
              .toList(),
          child: Avatar(
            mxContent: snapshot.data?.avatarUrl,
            name: snapshot.data?.displayName ?? controller.matrix!.client.userID!.localpart,
            size: 20,
          ),
        ),
      ),
    );
  }
}
