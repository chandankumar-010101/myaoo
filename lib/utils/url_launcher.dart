import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/config/environment.dart';
import 'package:punycode/punycode.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:pangeachat/widgets/profile_bottom_sheet.dart';
import 'package:pangeachat/widgets/public_room_bottom_sheet.dart';
import 'platform_infos.dart';

import 'package:universal_html/html.dart' as html;

import 'package:matrix/matrix.dart' as sdk;

class UrlLauncher {
  final String? url;
  final BuildContext context;
  bool requestToEnroll;
  bool requestExchange;
  final String? roomId;
  String userIdOfRequestedClass;
  String requestToclass;
  UrlLauncher(this.context, this.url,
      {this.roomId = "", this.requestToEnroll = false, this.requestExchange = false, this.requestToclass = "", this.userIdOfRequestedClass = ""});

  void launchUrl() {
    if (url!.toLowerCase().startsWith(AppConfig.deepLinkPrefix) ||
        url!.toLowerCase().startsWith(AppConfig.inviteLinkPrefix) ||
        {'#', '@', '!', '+', '\$'}.contains(url![0]) ||
        url!.toLowerCase().startsWith(AppConfig.schemePrefix)) {
      return openMatrixToUrl();
    }
    final uri = Uri.tryParse(url!);
    if (uri == null) {
      // we can't open this thing
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          L10n.of(context)!.cantOpenUri(url!),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ));
      return;
    }
    if (!{'https', 'http'}.contains(uri.scheme)) {
      // just launch non-https / non-http uris directly

      // we need to transmute geo URIs on desktop and on iOS
      if ((!PlatformInfos.isMobile || PlatformInfos.isIOS) && uri.scheme == 'geo') {
        final latlong = uri.path.split(';').first.split(',').map((s) => double.tryParse(s)).toList();
        if (latlong.length == 2 && latlong.first != null && latlong.last != null) {
          if (PlatformInfos.isIOS) {
            // iOS is great at not following standards, so we need to transmute the geo URI
            // to an apple maps thingy
            // https://developer.apple.com/library/archive/featuredarticles/iPhoneURLScheme_Reference/MapLinks/MapLinks.html
            final ll = '${latlong.first},${latlong.last}';
            launch('https://maps.apple.com/?q=$ll&sll=$ll');
          } else {
            // transmute geo URIs on desktop to openstreetmap links, as those usually can't handle
            // geo URIs
            launch('https://www.openstreetmap.org/?mlat=${latlong.first}&mlon=${latlong.last}#map=16/${latlong.first}/${latlong.last}');
          }
          return;
        }
      }
      launch(url!);
      return;
    }
    if (uri.host.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          L10n.of(context)!.cantOpenUri(url!),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ));
      return;
    }
    // okay, we have either an http or an https URI.
    // As some platforms have issues with opening unicode URLs, we are going to help
    // them out by punycode-encoding them for them ourself.
    final newHost = uri.host.split('.').map((hostPartEncoded) {
      final hostPart = Uri.decodeComponent(hostPartEncoded);
      final hostPartPunycode = punycodeEncode(hostPart);
      return hostPartPunycode != hostPart + '-' ? 'xn--$hostPartPunycode' : hostPart;
    }).join('.');
    launch(uri.replace(host: newHost).toString());
  }

  void openMatrixToUrl() async {
    final matrix = Matrix.of(context);
    final url = this.url!.replaceFirst(
          AppConfig.deepLinkPrefix,
          AppConfig.inviteLinkPrefix,
        );

    // The identifier might be a matrix.to url and needs escaping. Or, it might have multiple
    // identifiers (room id & event id), or it might also have a query part.
    // All this needs parsing.
    final identityParts = url.parseIdentifierIntoParts() ??
        Uri.tryParse(url)?.host.parseIdentifierIntoParts() ??
        Uri.tryParse(url)?.pathSegments.lastWhereOrNull((_) => true)?.parseIdentifierIntoParts();
    if (identityParts == null) {
      return; // no match, nothing to do
    }
    if (identityParts.primaryIdentifier.sigil == '#' || identityParts.primaryIdentifier.sigil == '!') {
      // we got a room! Let's open that one
      final roomIdOrAlias = identityParts.primaryIdentifier;
      final event = identityParts.secondaryIdentifier;
      var room = matrix.client.getRoomByAlias(roomIdOrAlias) ?? matrix.client.getRoomById(roomIdOrAlias);
      var roomId = room?.id;
      // we make the servers a set and later on convert to a list, so that we can easily
      // deduplicate servers added via alias lookup and query parameter
      final servers = <String>{};
      if (room == null && roomIdOrAlias.sigil == '#') {
        // we were unable to find the room locally...so resolve it
        final response = await showFutureLoadingDialog(
          context: context,
          future: () => matrix.client.getRoomIdByAlias(roomIdOrAlias),
        );
        if (response.error != null) {
          return; // nothing to do, the alias doesn't exist
        }
        roomId = response.result!.roomId;
        servers.addAll(response.result!.servers!);
        room = matrix.client.getRoomById(roomId!);
      }
      servers.addAll(identityParts.via);
      if (room != null) {
        // we have the room, so....just open it
        if (event != null) {
          VRouter.of(context).toSegments(['rooms', room.id], queryParameters: {'event': event});
        } else {
          VRouter.of(context).toSegments(['rooms', room.id]);
        }
        return;
      } else {
        await showModalBottomSheet(
          context: context,
          builder: (c) => PublicRoomBottomSheet(
            roomAlias: identityParts.primaryIdentifier,
            outerContext: context,
          ),
        );
      }

      if (roomIdOrAlias.sigil == '!') {
        if (await showOkCancelAlertDialog(
              useRootNavigator: false,
              context: context,
              title: 'Join room $roomIdOrAlias',
            ) ==
            OkCancelResult.ok) {
          roomId = roomIdOrAlias;
          final response = await showFutureLoadingDialog(
            context: context,
            future: () => matrix.client.joinRoom(
              roomIdOrAlias,
              serverName: servers.isNotEmpty ? servers.toList() : null,
            ),
          );
          if (response.error != null) return;
          // wait for two seconds so that it probably came down /sync
          await showFutureLoadingDialog(context: context, future: () => Future.delayed(const Duration(seconds: 2)));
          if (event != null) {
            VRouter.of(context).toSegments(['rooms', response.result!], queryParameters: {'event': event});
          } else {
            VRouter.of(context).toSegments(['rooms', response.result!]);
          }
        }
      }
    } else if (identityParts.primaryIdentifier.sigil == '@') {
      if (requestExchange) {
        final roomID = await showFutureLoadingDialog(
          context: context,
          future: () => matrix.client.createRoom(
            invite: [userIdOfRequestedClass],
            preset: sdk.CreateRoomPreset.privateChat,
            isDirect: true,
            initialState: [
              sdk.StateEvent(
                content: {
                  "guest_access": "can_join",
                },
                type: EventTypes.GuestAccess,
                stateKey: "",
              ),
            ],

            // creationContent: {'type': RoomCreationTypes.mSpace},
            visibility: sdk.Visibility.private,
            roomAliasName: userIdOfRequestedClass.split(":").first.replaceAll("@", "").substring(0, 2) +
                "private" +
                "-" +
                matrix.client.userID.toString().split(":").first.replaceAll("@", "").substring(0, 2) +
                "private" +
                "#" +
                random.nextInt(9999).toString(),
            name: userIdOfRequestedClass.split(":").first.replaceAll("@", "").substring(0, 6) +
                "-" +
                matrix.client.userID.toString().split(":").first.replaceAll("@", "").substring(0, 2) +
                "private" +
                "#" +
                random.nextInt(9999).toString(),
          ),
        );
        if (roomID.result != null) {
          String userId = Matrix.of(context).client.userID ?? "";
          if (userId.isNotEmpty) {
            final String initial_url = kIsWeb ? html.window.origin! : Environment.frontendURL;

            final client = Matrix.of(context).client;
            await client
                .getRoomById(roomID.result!)!
                .sendTextEvent(initial_url + "/#/" + "confirm_exchange?user_id=$userId&room_id=$roomId&user_id_of_requested_class=$userIdOfRequestedClass&request_to_class=$requestToclass")
                .then((value) {
              VRouter.of(context).to("/rooms");
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(" Request Sent Successfully",style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.green,

              ));
             // Fluttertoast.showToast(msg: " Request Sent Successfully", webBgColor: Colors.green, backgroundColor: Colors.green);
            }).catchError((e) {
              if (kDebugMode) {
                print(e);
              }
              Fluttertoast.showToast(msg: " Unable to Sent Message", webBgColor: Colors.red, backgroundColor: Colors.red);
            });
          }
        } else {
          Fluttertoast.showToast(msg: "Unable to find exchnage info");
        }
      } else if (requestToEnroll) {
        final roomID = await showFutureLoadingDialog(
          context: context,
          future: () => matrix.client.createRoom(
            invite: [identityParts.primaryIdentifier],
            preset: sdk.CreateRoomPreset.privateChat,
            isDirect: true,
            initialState: [
              sdk.StateEvent(
                content: {
                  "guest_access": "can_join",
                },
                type: EventTypes.GuestAccess,
                stateKey: "",
              ),
            ],
            // creationContent: {'type': RoomCreationTypes.mSpace},
            visibility: sdk.Visibility.private,
            roomAliasName: identityParts.primaryIdentifier.split(":").first.replaceAll("@", "").substring(0, 6) +
                "-" +
                matrix.client.userID.toString().split(":").first.replaceAll("@", "").substring(0, 2) +
                "private" +
                "#" +
                random.nextInt(9999).toString(),
            name: identityParts.primaryIdentifier.split(":").first.replaceAll("@", "").substring(0, 2) +
                "private" +
                "-" +
                matrix.client.userID.toString().split(":").first.replaceAll("@", "").substring(0, 2) +
                "private" +
                "#" +
                random.nextInt(9999).toString(),
          ),
        );
        if (roomID.result != null) {
          String userId = Matrix.of(context).client.userID ?? "";
          if (userId.isNotEmpty) {
            final String initial_url = kIsWeb ? html.window.origin! : Environment.frontendURL;
            final client = Matrix.of(context).client;
            await client
                .getRoomById(roomID.result!)!
                .sendTextEvent(initial_url + "/#" + "/request_to_enroll?id=$userId&room_id=$roomId")
                .then((value) {
              VRouter.of(context).to("/rooms");
              Fluttertoast.showToast(msg: " Request Sent Successfully", webBgColor: Colors.green, backgroundColor: Colors.green);
              // VRouter.of(context).toSegments(['rooms', roomID.result!]);
              // Navigator.of(context, rootNavigator: false).pop();
            }).catchError((e) {
              if (kDebugMode) {
                print(e);
              }
              Fluttertoast.showToast(msg: " Unable to Sent Message", webBgColor: Colors.red, backgroundColor: Colors.red);
            });
            return;
          } else {}
        }
        if (roomID == null) {
          VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
        }
      } else {
        await showModalBottomSheet(
          context: context,
          builder: (c) => ProfileBottomSheet(
            userId: identityParts.primaryIdentifier,
            outerContext: context,
          ),
        );
      }
    }
  }

  math.Random random = math.Random();
}
