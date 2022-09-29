import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';

import '../config/app_config.dart';
import '../pages/chat_list/spaces_entry.dart';
import 'matrix.dart';

class PangeaClassController {
  bool _isSynced = false;

  List<SpacesEntry> spacesEntries(BuildContext context) {
    if (AppConfig.separateChatTypes) {
      return [
        defaultSpacesEntry,
        GroupsSpacesEntry(),
        ...spaces(context).map((space) => SpaceSpacesEntry(space)).toList()
      ];
    }
    return [
      defaultSpacesEntry,
      ...spaces(context).map((space) => SpaceSpacesEntry(space)).toList()
    ];
  }

  List<Room> spaces(BuildContext context) =>
      Matrix.of(context).client.rooms.where((r) => r.isSpace).toList();
  SpacesEntry get defaultSpacesEntry => AppConfig.separateChatTypes
      ? DirectChatsSpacesEntry()
      : AllRoomsSpacesEntry();

  String? activeSpaceId(BuildContext context) => activeSpacesEntry(context).getSpace(context)?.id; // space_
  SpacesEntry? _activeSpacesEntry;
  ///use to get active space entry
  SpacesEntry activeSpacesEntry(BuildContext context) {
    final id = _activeSpacesEntry;
    return (id == null || !id.stillValid(context)) ? defaultSpacesEntry : id;
  }

  ///set activeSpace entry
  Future<void> setActiveSpacesEntry(BuildContext context, SpacesEntry? spaceId) async {
    _isSynced = true;
    if (spaceId != null) {
      _activeSpacesEntry = spaceId;

    }
  }

  String? getSpaceIdFromRoomId(BuildContext context, String? roomId) {
    if (roomId == null) {
      return null;
    }
    return getSpaceEntryFromRoomId(context, roomId!).getSpace(context)?.id;
  }

  void waitOnSyncCallBack(
      BuildContext context, void Function() callBackFunction) {
    if (!_isSynced) {
      Matrix.of(context).client.onSync.stream.first.then((value) {
        _isSynced = true;
        callBackFunction();
      });
    } else {
      callBackFunction();
    }
  }

  SpacesEntry getSpaceEntryFromRoomId(BuildContext context, String roomId) {
    SpacesEntry spaceEntry = activeSpacesEntry(context);
    String? id = spaceEntry.getSpace(context)?.id;
    if (id != null) {
      return spaceEntry;
    }
    spacesEntries(context).forEach((element) {
      element.getRooms(context).forEach((room) {
        if (room.id == roomId) {
          spaceEntry = element;
        }
      });
    });
    return spaceEntry;
  }
}
