import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/widgets/permission_slider_dialog.dart';
import '../../model/report_user_model.dart';
import '../../services/controllers.dart';
import '../../services/services.dart';
import '../../widgets/matrix.dart';
import 'user_bottom_sheet_view.dart';

class UserBottomSheet extends StatefulWidget {
  final User user;
  final Function? onMention;
  final BuildContext outerContext;
  final Room? room;

  const UserBottomSheet({
    Key? key,
    required this.user,
    this.room,
    required this.outerContext,
    this.onMention,
  }) : super(key: key);

  @override
  UserBottomSheetController createState() => UserBottomSheetController();
}

class UserBottomSheetController extends State<UserBottomSheet> {
  math.Random random = new math.Random();
  String? selectedOption;
  void participantAction(String action) async {
    // ignore: prefer_function_declarations_over_variables
    final Function _askConfirmation = () async => (await showOkCancelAlertDialog(
          useRootNavigator: false,
          context: context,
          title: L10n.of(context)!.areYouSure,
          okLabel: L10n.of(context)!.yes,
          cancelLabel: L10n.of(context)!.no,
        ) ==
        OkCancelResult.ok);
    switch (action) {
      case 'report':
        final event = widget.user;
        final score = await showConfirmationDialog<int>(
            context: context,
            title: L10n.of(context)!.reportUser,
            message: L10n.of(context)!.howOffensiveIsThisContent,
            cancelLabel: L10n.of(context)!.cancel,
            okLabel: L10n.of(context)!.ok,
            actions: [
              AlertDialogAction(
                key: -100,
                label: L10n.of(context)!.extremeOffensive,
              ),
              AlertDialogAction(
                key: -50,
                label: L10n.of(context)!.offensive,
              ),
              AlertDialogAction(
                key: 0,
                label: L10n.of(context)!.inoffensive,
              ),
            ]);
        if (score == null) return;
        final reason = await showTextInputDialog(
            useRootNavigator: false,
            context: context,
            title: L10n.of(context)!.whyDoYouWantToReportThis,
            okLabel: L10n.of(context)!.ok,
            cancelLabel: L10n.of(context)!.cancel,
            textFields: [DialogTextField(hintText: L10n.of(context)!.reason)]);
        if (reason == null || reason.single.isEmpty) return;
        final result = await showFutureLoadingDialog(
          context: context,
          future: () => Matrix.of(context).client.reportContent(
                event.roomId!,
                event.eventId,
                reason: reason.single,
                score: score,
              ),
        );

        if (result.error != "null") {
          print(score);
          print("object");
          switch (score) {
            case -100:
              selectedOption = "Extremely Offensive";
              break;
            case -50:
              selectedOption = "Offensive";
              break;
            case 0:
              selectedOption = "Inoffensive";
              break;
          }
          print("Report Data:" +
              ReportUser(
                classRoomName: widget.room!.name,
                classTeacherName: "naveen",
                reportedUser: event.displayName,
                classTeacherEmail: "naveen.kumar@oodles.io",
                offensive: selectedOption,
                reason: reason.single.toString(),
              ).toJson().toString());

          PangeaServices.reportUser(
            classRoomNamedata: widget.room!.name,
            classTeacherEmaildata: "naveen.kumar@oodles.io",
            classTeacherNamedata: "naveen",
            offensivedata: selectedOption,
            reasondata: reason.single.toString(),
            reportedUserdata: event.displayName,
          );
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //   content: Text("You don't have email right now"),
          //   backgroundColor: Colors.red,
          // ));
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //   content: Text(L10n.of(context)!.contentHasBeenReported),
          //   backgroundColor: Colors.red,
          // ));
        }

        break;
      case 'mention':
        Navigator.of(context, rootNavigator: false).pop();
        widget.onMention!();
        break;
      case 'ban':
        if (await _askConfirmation()) {
          await showFutureLoadingDialog(
            context: context,
            future: () => widget.user.ban(),
          );
          Navigator.of(context, rootNavigator: false).pop();
        }
        break;
      case 'unban':
        if (await _askConfirmation()) {
          await showFutureLoadingDialog(
            context: context,
            future: () => widget.user.unban(),
          );
          Navigator.of(context, rootNavigator: false).pop();
        }
        break;
      case 'kick':
        if (await _askConfirmation()) {
          await showFutureLoadingDialog(
            context: context,
            future: () => widget.user.kick(),
          );
          Navigator.of(context, rootNavigator: false).pop();
        }
        break;
      case 'permission':
        final newPermission = await PermissionSliderDialog(initialPermission: widget.user.powerLevel).show(context);
        if (newPermission != null) {
          if (newPermission == 100 && await _askConfirmation() == false) break;
          await showFutureLoadingDialog(
            context: context,
            future: () => widget.user.setPower(newPermission),
          );
          Navigator.of(context, rootNavigator: false).pop();
        }
        break;
      case 'message':
        final matrix = Matrix.of(context);
        final spaceid = widget.room!.spaceParents != null && widget.room!.spaceParents.isNotEmpty ? widget.room!.spaceParents.first.roomId! : "";
        //  final user = space.getState(EventTypes.RoomMember, userId)?.asUser;
        final roomID = await showFutureLoadingDialog(
          context: context,
          future: () => matrix.client.createRoom(
            invite: [widget.user.id],
            preset: CreateRoomPreset.privateChat,
            isDirect: true,
            initialState: [
              StateEvent(
                content: {
                  "guest_access": "can_join",
                },
                type: EventTypes.GuestAccess,
                stateKey: "",
              ),
              StateEvent(content: {
                "via": ["matrix.staging.pangea.chat"],
                "canonical": true
              }, type: EventTypes.spaceParent, stateKey: spaceid != null && spaceid != "" ? spaceid : ""),
            ],
            // creationContent: {'type': RoomCreationTypes.mSpace},
            roomAliasName: widget.user.displayName! +
                "-" +
                matrix.client.userID.toString().split(":").first.replaceAll("@", "") +
                "#" +
                random.nextInt(9999).toString(),
            name: widget.user.displayName! +
                "-" +
                matrix.client.userID.toString().split(":").first.replaceAll("@", "") +
                "#" +
                random.nextInt(9999).toString(),
          ),
        );
        if (roomID.result != null) {

          VRouter.of(context).pop();

          PangeaControllers.toastMsg(msg: "Created Successfully",success: true);
          }
        if (roomID == null) {
          VRouter.of(context).toSegments(['rooms', roomID.result!, 'details']);
        }

        VRouter.of(widget.outerContext).toSegments(['rooms', roomID.result!]);
        Navigator.of(context, rootNavigator: false).pop();
        break;
      case 'ignore':
        if (await _askConfirmation()) {
          await showFutureLoadingDialog(context: context, future: () => Matrix.of(context).client.ignoreUser(widget.user.id));
        }
    }
  }

  @override
  Widget build(BuildContext context) => UserBottomSheetView(this);
}
