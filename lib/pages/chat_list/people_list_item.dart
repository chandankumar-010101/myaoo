import 'package:flutter/material.dart';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart';
import 'package:pedantic/pedantic.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/utils/matrix_sdk_extensions.dart/matrix_locals.dart';
import '../../utils/date_time_extension.dart';
import '../../widgets/avatar.dart';
import '../../widgets/matrix.dart';
import '../chat/send_file_dialog.dart';

enum ArchiveduserAction { delete, rejoin }

class PeopleListItem extends StatelessWidget {
  final User user;
  final bool selected;
  final Function? onForget;
  final Function? onTap;

  const PeopleListItem(
    this.user, {
    this.selected = false,
    this.onTap,
    this.onForget,
    Key? key,
  }) : super(key: key);

  dynamic clickAction(BuildContext context) async {
    if (onTap != null) return onTap!();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? Theme.of(context).primaryColor.withAlpha(100) : Theme.of(context).primaryColor,
      child: ListTile(
        selected: selected,
        leading: Avatar(
          mxContent: user.avatarUrl,
          name: user.displayName,
          onTap: () {},
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                user.displayName!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
        onTap: () => clickAction(context),
      ),
    );
  }
}
