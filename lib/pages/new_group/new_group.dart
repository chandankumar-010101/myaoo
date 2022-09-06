import 'package:flutter/material.dart';

import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:matrix/matrix.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/pages/new_group/new_group_view.dart';
import 'package:pangeachat/widgets/matrix.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  NewGroupController createState() => NewGroupController();
}

class NewGroupController extends State<NewGroup> {
  TextEditingController controller = TextEditingController();
  bool publicGroup = true;

  void setPublicGroup(bool b) => setState(() => publicGroup = b);

  void submitAction([_]) async {
    final client = Matrix.of(context).client;
    final roomID = await showFutureLoadingDialog(
      context: context,
      future: () async {
        final roomId = await client.createGroupChat(
          preset: publicGroup
              ? sdk.CreateRoomPreset.publicChat
              : sdk.CreateRoomPreset.privateChat,
          groupName: controller.text.isNotEmpty ? controller.text : null,
          enableEncryption: false,
        );
        return roomId;
      },
    );
    if (roomID.error == null) {
      VRouter.of(context).toSegments(['rooms', roomID.result!, 'invite']);
    }
  }
  List<User> members =[];

  void requestMoreMembersAction(context, classId) async {
    final room = Matrix.of(context).client.getRoomById(classId);
    final participants = await room!.requestParticipants();
    if(participants.isNotEmpty){
      setState(() => members = participants);
    }
  }
  String classId = "";

  @override
  Widget build(BuildContext context){
    classId = VRouter.of(context).queryParameters['class_id'] ?? "";
    classId.isNotEmpty?requestMoreMembersAction(context,classId): null;
    return NewGroupView(this);
  }
}
