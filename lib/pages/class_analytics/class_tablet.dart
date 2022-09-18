import 'package:flutter/material.dart';

import '../chat_list/spaces_entry.dart';
import 'class_analytics.dart';

class ClassSelectTablet extends StatelessWidget {
  final ClassAnalyticsController controller;
  const ClassSelectTablet({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller.classTabletScrollController,
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          ...controller.spacesEntries.map((e) => tablet(context, entry: e,
                  onPress: (spaceEntry) {
                controller.changeClass(spaceEntry);
              },
                  isSelected:
                      e.space.id == controller.selectedSpacesEntry.space.id))
        ],
      ),
    );
  }

  Widget tablet(BuildContext context,
      {required SpaceSpacesEntry entry,
      required bool isSelected,
      required Function(SpaceSpacesEntry spaceEntry) onPress}) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
              isSelected ? const Color(0xFFA8E88A) : const Color(0xFFF2F2F2)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          onTap: () {
            onPress(entry);
          },
          child: Container(
              padding: const EdgeInsets.all(13),
              color: Colors.transparent,
              child: Text(
                entry.getName(context),
              )),
        ),
      ),
    );
  }
}
