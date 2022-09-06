import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';

import 'package:pangeachat/pages/new_group/new_group.dart';
import 'package:pangeachat/widgets/layouts/max_width_body.dart';
import 'package:vrouter/vrouter.dart';

import '../../widgets/avatar.dart';

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
                child: ListView.builder(
              itemCount: controller.members.length,
              itemBuilder: (BuildContext context, int i) {
                return ListTile(
                  title: Text(controller.members[i].displayName??""),
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    radius: Avatar.defaultSize / 2,
                    child: const Icon(Icons.add_outlined),
                  ),
                  onTap: () => VRouter.of(context).to('invite'),
                );
              },
            )),
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
