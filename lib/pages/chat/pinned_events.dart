import 'dart:async';

import 'package:flutter/material.dart';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix_link_text/link_text.dart';

import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/pages/chat/chat.dart';
import 'package:pangeachat/utils/matrix_sdk_extensions.dart/matrix_locals.dart';
import 'package:pangeachat/utils/url_launcher.dart';

class PinnedEvents extends StatelessWidget {
  final ChatController controller;

  const PinnedEvents(this.controller, {Key? key}) : super(key: key);

  Future<void> _displayPinnedEventsDialog(
      BuildContext context, List<Event?> events) async {
    final eventId = events.length == 1
        ? events.single?.eventId
        : await showModalActionSheet<String>(
            context: context,
            actions: events
                .map((event) => SheetAction(
                      key: event?.eventId ?? '',
                      label: event?.calcLocalizedBodyFallback(
                            MatrixLocals(L10n.of(context)!),
                            withSenderNamePrefix: true,
                            hideReply: true,
                          ) ??
                          'UNKNOWN',
                    ))
                .toList());

    if (eventId != null) controller.scrollToEventId(eventId);
  }

  @override
  Widget build(BuildContext context) {
    final pinnedEventIds = controller.room!.pinnedEventIds;

    if (pinnedEventIds.isEmpty) {
      return Container();
    }
    final completers = pinnedEventIds.map<Completer<Event?>>((e) {
      final completer = Completer<Event?>();
      controller.room!
          .getEventById(e)
          .then((value) => completer.complete(value));
      return completer;
    });
    return FutureBuilder<List<Event?>>(
        future: Future.wait(completers.map((e) => e.future).toList()),
        builder: (context, snapshot) {
          final pinnedEvents = snapshot.data;
          final event = (pinnedEvents != null && pinnedEvents.isNotEmpty)
              ? snapshot.data?.last
              : null;

          if (event == null || pinnedEvents == null) {
            return Container();
          }

          final fontSize = AppConfig.messageFontSize * AppConfig.fontSizeFactor;
          return Material(
            color: Theme.of(context).appBarTheme.backgroundColor,
            elevation: Theme.of(context).appBarTheme.elevation ?? 10,
            shadowColor: Theme.of(context).appBarTheme.shadowColor,
            child: InkWell(
              onTap: () => _displayPinnedEventsDialog(
                context,
                pinnedEvents,
              ),
              child: Row(
                children: [
                  IconButton(
                    splashRadius: 20,
                    iconSize: 20,
                    icon: const Icon(Icons.push_pin),
                    tooltip: L10n.of(context)!.unpin,
                    onPressed: controller.room
                                ?.canSendEvent(EventTypes.RoomPinnedEvents) ??
                            false
                        ? () => controller.unpinEvent(event.eventId)
                        : null,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: FutureBuilder<String>(
                          future: event.calcLocalizedBody(
                            MatrixLocals(L10n.of(context)!),
                            withSenderNamePrefix: true,
                            hideReply: true,
                          ),
                          builder: (context, snapshot) {
                            return LinkText(
                              text: snapshot.data ??
                                  event.calcLocalizedBodyFallback(
                                    MatrixLocals(L10n.of(context)!),
                                    withSenderNamePrefix: true,
                                    hideReply: true,
                                  ),
                              maxLines: 2,
                              textStyle: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: fontSize,
                                decoration: event.redacted
                                    ? TextDecoration.lineThrough
                                    : null,
                              ),
                              linkStyle: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.color
                                    ?.withAlpha(150),
                                fontSize: fontSize,
                                decoration: TextDecoration.underline,
                              ),
                              onLinkTap: (url) =>
                                  UrlLauncher(context, url).launchUrl(),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
