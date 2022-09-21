import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/pages/chat/chat.dart';
import 'package:pangeachat/pages/user_bottom_sheet/user_bottom_sheet.dart';
import 'package:pangeachat/utils/matrix_sdk_extensions.dart/matrix_locals.dart';
import 'package:pangeachat/widgets/avatar.dart';

class ChatAppBarTitle extends StatelessWidget {
  final ChatController controller;
  const ChatAppBarTitle(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final room = controller.room;
    if (room == null) {
      return Container();
    }
    if (controller.selectedEvents.isNotEmpty) {
      return Text(controller.selectedEvents.length.toString());
    }
    final directChatMatrixID = room.directChatMatrixID;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: directChatMatrixID != null
          ? () => showModalBottomSheet(
                context: context,
                builder: (c) => UserBottomSheet(
                  user: room.unsafeGetUserFromMemoryOrFallback(directChatMatrixID),
                  outerContext: context,
                  onMention: () => controller.sendController.text += '${room.unsafeGetUserFromMemoryOrFallback(directChatMatrixID).mention} ',
                ),
              )
          : () => VRouter.of(context).toSegments(['rooms', room.id, 'details']),
      child: Row(
        children: [
          Avatar(
            mxContent: room.avatar,
            name: room.displayname,
            size: 32,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              room
                  .getLocalizedDisplayname(MatrixLocals(L10n.of(context)!))
                  .toString()
                  .split("#")
                  .first
                  .replaceAll("${Matrix.of(context).client.userID!.toString().toLowerCase().split(":").first.replaceAll("@", "")}", "")
                  .replaceAll("-", ""),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
