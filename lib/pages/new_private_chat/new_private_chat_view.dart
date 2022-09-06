import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/pages/new_private_chat/new_private_chat.dart';
import 'package:pangeachat/utils/platform_infos.dart';
import 'package:pangeachat/widgets/layouts/max_width_body.dart';
import 'package:pangeachat/widgets/matrix.dart';

import '../chat_details/participant_list_item.dart';

class NewPrivateChatView extends StatelessWidget {
  final NewPrivateChatController controller;

   NewPrivateChatView(this.controller, {Key? key}) : super(key: key);

  static const double _qrCodePadding = 8;

  // Future<void> _waitForFirstSync() async {
  //   final client = Matrix.of(context).client;
  //   await client.roomsLoading;
  //   await client.accountDataLoading;
  //   if (client.prevBatch?.isEmpty ?? true) {
  //     await client.onFirstSync.stream.first;
  //   }
  //   // Load space members to display DM rooms
  //   final spaceId = activeSpaceId;
  //   if (spaceId != null) {
  //     final space = client.getRoomById(spaceId)!;
  //     final localMembers = space.getParticipants().length;
  //     final actualMembersCount = (space.summary.mInvitedMemberCount ?? 0) +
  //         (space.summary.mJoinedMemberCount ?? 0);
  //     if (localMembers < actualMembersCount) {
  //       await space.requestParticipants();
  //     }
  //   }
  //   setState(() {
  //     waitForFirstSync = true;
  //   });
  //   WidgetsBinding.instance.addPostFrameCallback((_) => checkBootstrap());
  //   return;
  // }


  List<User>? members;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(L10n.of(context)!.newChat),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          controller.createRoom? TextButton(
            onPressed: () => VRouter.of(context).to('/newgroup',queryParameters: {"class_id":controller.classId}),
            child: Text(
              L10n.of(context)!.createNewGroup,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          ):Container(),
        ],
      ),
      body: MaxWidthBody(
        withScrolling: true,
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.all(12),
              child: Form(
                key: controller.formKey,
                child: TextFormField(
                  controller: controller.controller,
                  autocorrect: false,
                  autofocus: !PlatformInfos.isMobile,
                  textInputAction: TextInputAction.go,
                  focusNode: controller.textFieldFocus,
                  onFieldSubmitted: controller.submitAction,
                  validator: controller.validateForm,
                  inputFormatters: controller.removeMatrixToFormatters,
                  decoration: InputDecoration(
                    labelText: L10n.of(context)!.typeInInviteLinkManually,
                    hintText: '@username',
                    prefixText: NewPrivateChatController.prefixNoProtocol,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send_outlined),
                      onPressed: controller.submitAction,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PlatformInfos.isMobile && !controller.hideFab
          ? FloatingActionButton.extended(
              onPressed: controller.openScannerAction,
              label: Text(L10n.of(context)!.scanQrCode),
              icon: const Icon(Icons.camera_alt_outlined),
            )
          : null,
    );
  }
}
