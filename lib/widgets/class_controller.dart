import 'package:flutter/material.dart';

import '../config/app_config.dart';
import '../pages/chat_list/spaces_entry.dart';

class PangeaClassController {
  SpacesEntry get defaultSpacesEntry => AppConfig.separateChatTypes
      ? DirectChatsSpacesEntry()
      : AllRoomsSpacesEntry();
  String? activeSpaceId(BuildContext context) =>
      activeSpacesEntry(context).getSpace(context)?.id; // space_
  SpacesEntry? _activeSpacesEntry;
  SpacesEntry activeSpacesEntry(BuildContext context) {
    final id = _activeSpacesEntry;
    return (id == null || !id.stillValid(context)) ? defaultSpacesEntry : id;
  }

  Future<void> setActiveSpacesEntry(
      BuildContext context, SpacesEntry? spaceId) async {
    //
    if (spaceId != null) {
      _activeSpacesEntry = spaceId;
    }
  }
}
