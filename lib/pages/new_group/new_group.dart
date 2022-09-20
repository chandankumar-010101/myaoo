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
          initialState: spaceId.isNotEmpty
              ? [
            sdk.StateEvent(content: {"guest_access": "can_join"}, type: EventTypes.GuestAccess, stateKey: ""),
            sdk.StateEvent(content: {
              "via": ["matrix.staging.pangea.chat"],
              "canonical": true
            },
                type: EventTypes.spaceParent, stateKey: spaceId),
          ]
              : [],
          preset: publicGroup ? sdk.CreateRoomPreset.publicChat : sdk.CreateRoomPreset.privateChat,
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

  String spaceId = "";

  @override
  void initState() {
    // TODO: implement initState
    // Future.delayed(Duration(seconds: 1)).whenComplete(() => );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    spaceId = VRouter.of(context).queryParameters['spaceId']??"";
    return NewGroupView(this, spaceId);
  }
}
