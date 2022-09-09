import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/pages/chat_list/chat_list.dart';
import 'package:pangeachat/pages/chat_list/spaces_drawer.dart';
import 'package:pangeachat/pages/chat_list/spaces_entry.dart';
import 'package:pangeachat/widgets/avatar.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

const kSpacesBottomBarHeight = 56.0;

final GlobalKey _globalKey = GlobalKey();

class SpacesBottomBar extends StatelessWidget {
  final ChatListController controller;

  const SpacesBottomBar(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).navigationBarTheme.backgroundColor,
      elevation: 6,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(AppConfig.borderRadius)),
      clipBehavior: Clip.hardEdge,
      child: SafeArea(
        child: StreamBuilder<Object>(
          stream: Matrix.of(context).client.onSync.stream.where((sync) =>
              (sync.rooms?.join?.values.any((r) => r.state?.any((s) => s.type.startsWith('m.space')) ?? false) ?? false) ||
              (sync.rooms?.leave?.isNotEmpty ?? false)),
          builder: (context, snapshot) {
            return SingleChildScrollView(
              controller: controller.snappingSheetScrollContentController,
              child: AnimatedBuilder(
                child: _SpacesBottomNavigation(key: _globalKey, controller: controller),
                builder: (context, child) {
                  if (controller.snappingSheetContainerSize == null) {
                    return child!;
                  }
                  final rawPosition = controller.snappingSheetController.isAttached ? controller.snappingSheetController.currentPosition : 0;
                  final position = rawPosition / controller.snappingSheetContainerSize!.maxHeight;

                  if (rawPosition <= kSpacesBottomBarHeight) {
                    return child!;
                  } else if (position >= 0.5) {
                    return SpacesDrawer(controller: controller);
                  } else {
                    final normalized =
                        (rawPosition - kSpacesBottomBarHeight) / (controller.snappingSheetContainerSize!.maxHeight - kSpacesBottomBarHeight) * 2;
                    var boxHeight = (1 - normalized) * kSpacesBottomBarHeight;
                    if (boxHeight < 0) boxHeight = 0;

                    return Column(
                      children: [
                        SizedBox(
                          height: boxHeight,
                          child: ClipRect(clipBehavior: Clip.hardEdge, child: Opacity(opacity: 1 - normalized, child: child!)),
                        ),
                        Opacity(
                          opacity: normalized,
                          child: SpacesDrawer(controller: controller),
                        ),
                      ],
                    );
                  }
                },
                animation: controller.snappingSheetController,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _SpacesBottomNavigation extends StatefulWidget {
  final ChatListController controller;

  const _SpacesBottomNavigation({Key? key, required this.controller}) : super(key: key);

  @override
  State<_SpacesBottomNavigation> createState() => _SpacesBottomNavigationState();
}

class _SpacesBottomNavigationState extends State<_SpacesBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final currentIndex = widget.controller.spacesEntries.indexWhere((space) =>
            widget.controller.activeSpacesEntry.runtimeType == space.runtimeType &&
            (widget.controller.activeSpaceId == space.getSpace(context)?.id)) +
        1;

    return Container(
      height: 56,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SalomonBottomBar(
          itemPadding: const EdgeInsets.all(8),
          currentIndex: currentIndex,
          onTap: (i) => i == 0
              ? widget.controller.expandSpaces()
              : widget.controller.setActiveSpacesEntry(
                  context,
                  widget.controller.spacesEntries[i - 1],
                ),
          selectedItemColor: Theme.of(context).colorScheme.primary,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.keyboard_arrow_up),
              title: Text(L10n.of(context)!.showSpaces),
            ),
            ...widget.controller.spacesEntries.map((space) => _buildSpacesEntryUI(context, space)).toList(),
          ],
        ),
      ),
    );
  }

  SalomonBottomBarItem _buildSpacesEntryUI(BuildContext context, SpacesEntry entry) {
    final space = entry.getSpace(context);
    if (space != null) {
      return SalomonBottomBarItem(
        icon: InkWell(
          borderRadius: BorderRadius.circular(28),
          onTap: () {
            widget.controller.setActiveSpacesEntry(
              context,
              entry,
            );
          },
          onLongPress: () => widget.controller.editSpace(context, space.id),
          child: Avatar(
            mxContent: space.avatar,
            name: space.displayname,
            size: 24,
            fontSize: 12,
          ),
        ),
        title: Text(entry.getName(context)),
      );
    }

    return SalomonBottomBarItem(
      icon: entry.getIcon(false),
      activeIcon: entry.getIcon(true),
      title: Text(entry.getName(context)),
    );
  }
}
