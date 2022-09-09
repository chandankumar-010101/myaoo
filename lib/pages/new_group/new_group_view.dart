import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pangeachat/pages/chat_list/chat_list.dart';

import 'package:pangeachat/pages/new_group/new_group.dart';
import 'package:pangeachat/widgets/layouts/max_width_body.dart';

class NewGroupView extends StatefulWidget {
  final NewGroupController controller;
  final String spaceId;
  const NewGroupView(this.controller, this.spaceId, {Key? key})
      : super(key: key);

  @override
  State<NewGroupView> createState() => _NewGroupViewState();
}

class _NewGroupViewState extends State<NewGroupView> {
  ChatListController controllertest = ChatListController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a new Room"),
      ),
      body: MaxWidthBody(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: widget.controller.controller,
                autofocus: true,
                autocorrect: false,
                textInputAction: TextInputAction.go,
                onSubmitted: widget.controller.submitAction,
                decoration: InputDecoration(
                    labelText:
                        "Room name (don't use class name in your room name)",
                    prefixIcon: const Icon(Icons.people_outlined),
                    hintText: L10n.of(context)!.enterAGroupName),
              ),
            ),
            SwitchListTile.adaptive(
              title: Text("Room is public"),
              value: widget.controller.publicGroup,
              onChanged: widget.controller.setPublicGroup,
            ),
            Expanded(
              child: Image.asset('assets/private_chat_wallpaper.png'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.controller.submitAction,
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}
