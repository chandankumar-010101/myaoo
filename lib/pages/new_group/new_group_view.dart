import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';

import 'package:pangeachat/pages/new_group/new_group.dart';
import 'package:pangeachat/widgets/layouts/max_width_body.dart';

class NewGroupView extends StatelessWidget {
  final NewGroupController controller;
  final String spaceId;
  const NewGroupView(this.controller, this.spaceId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.createNewGroup),
      ),
      body: MaxWidthBody(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: controller.controller,
                autofocus: true,
                autocorrect: false,
                textInputAction: TextInputAction.go,
                onSubmitted: controller.submitAction,
                decoration: InputDecoration(
                    labelText: L10n.of(context)!.optionalGroupName,
                    prefixIcon: const Icon(Icons.people_outlined),
                    hintText: L10n.of(context)!.enterAGroupName),
              ),
            ),
            SwitchListTile.adaptive(
              title: Text(L10n.of(context)!.groupIsPublic),
              value: controller.publicGroup,
              onChanged: controller.setPublicGroup,
            ),
            Expanded(
              child: Image.asset('assets/private_chat_wallpaper.png'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.submitAction,
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}
