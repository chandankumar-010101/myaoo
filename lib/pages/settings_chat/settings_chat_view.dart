import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/config/setting_keys.dart';
import 'package:pangeachat/utils/platform_infos.dart';
import 'package:pangeachat/widgets/layouts/max_width_body.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:pangeachat/widgets/settings_switch_list_tile.dart';
import 'settings_chat.dart';

class SettingsChatView extends StatelessWidget {
  final SettingsChatController controller;
  const SettingsChatView(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(L10n.of(context)!.chat)),
      body: ListTileTheme(
        iconColor: Theme.of(context).textTheme.bodyText1!.color,
        child: MaxWidthBody(
          withScrolling: true,
          child: Column(
            children: [
              SettingsSwitchListTile.adaptive(
                title: L10n.of(context)!.renderRichContent,
                onChanged: (b) => AppConfig.renderHtml = b,
                storeKey: SettingKeys.renderHtml,
                defaultValue: AppConfig.renderHtml,
              ),
              SettingsSwitchListTile.adaptive(
                title: L10n.of(context)!.hideRedactedEvents,
                onChanged: (b) => AppConfig.hideRedactedEvents = b,
                storeKey: SettingKeys.hideRedactedEvents,
                defaultValue: AppConfig.hideRedactedEvents,
              ),
              SettingsSwitchListTile.adaptive(
                title: L10n.of(context)!.hideUnknownEvents,
                onChanged: (b) => AppConfig.hideUnknownEvents = b,
                storeKey: SettingKeys.hideUnknownEvents,
                defaultValue: AppConfig.hideUnknownEvents,
              ),
              if (PlatformInfos.isMobile)
                SettingsSwitchListTile.adaptive(
                  title: L10n.of(context)!.autoplayImages,
                  onChanged: (b) => AppConfig.autoplayImages = b,
                  storeKey: SettingKeys.autoplayImages,
                  defaultValue: AppConfig.autoplayImages,
                ),
              SettingsSwitchListTile.adaptive(
                title: L10n.of(context)!.sendOnEnter,
                onChanged: (b) => AppConfig.sendOnEnter = b,
                storeKey: SettingKeys.sendOnEnter,
                defaultValue: AppConfig.sendOnEnter,
              ),
              if (Matrix.of(context).webrtcIsSupported)
                SettingsSwitchListTile.adaptive(
                  title: L10n.of(context)!.experimentalVideoCalls,
                  onChanged: (b) {
                    AppConfig.experimentalVoip = b;
                    Matrix.of(context).createVoipPlugin();
                    return;
                  },
                  storeKey: SettingKeys.experimentalVoip,
                  defaultValue: AppConfig.experimentalVoip,
                ),
              const Divider(height: 1),
              ListTile(
                title: Text(L10n.of(context)!.emoteSettings),
                onTap: () => VRouter.of(context).to('emotes'),
                trailing: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(Icons.insert_emoticon_outlined),
                ),
              ),
              const Divider(height: 1),
              SettingsSwitchListTile.adaptive(
                title: L10n.of(context)!.showDirectChatsInSpaces,
                onChanged: (b) => AppConfig.showDirectChatsInSpaces = b,
                storeKey: SettingKeys.showDirectChatsInSpaces,
                defaultValue: AppConfig.showDirectChatsInSpaces,
              ),
              SettingsSwitchListTile.adaptive(
                title: L10n.of(context)!.separateChatTypes,
                onChanged: (b) => AppConfig.separateChatTypes = b,
                storeKey: SettingKeys.separateChatTypes,
                defaultValue: AppConfig.separateChatTypes,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
