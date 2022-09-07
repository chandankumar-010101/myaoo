import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/widgets/matrix.dart';

import '../../config/app_config.dart';
import '../chat_list/spaces_entry.dart';
import 'class_profile_view.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => RequestScreenState();
}

class RequestScreenState extends State<RequestScreen> {
  kickAndRemoveClass(Room room) async {
    try {
      List<User> rooms = await room.requestParticipants();
      String? userId = Matrix.of(context).client.userID;
      if (rooms != null && userId != null) {

        for (final element in rooms) {
          if (userId == element.id) {
            continue;
          }
          print(element.displayName);
        //  await room.kick(element.id);
          print(element.id);
        }
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Unable to fetch Class Info");
      if (kDebugMode) {
        print(e);
      }
    }
  }

  // final value = await showFutureLoadingDialog(
  //   context: context,
  //   future: () => room.requestParticipants(),
  // );
  // if(value.result !=null){
  //
  //   value.result!.forEach((element) async {
  //
  //     await room.kick(element.id);
  //   });
  //   final listOfUsers = await showFutureLoadingDialog(
  //     context: context,
  //     future: () => room.requestParticipants(),
  //   );
  //   if(listOfUsers.result !=null){
  //
  //     print(listOfUsers.result!.length);
  //     listOfUsers.result!.forEach((element) {element.id;});
  //   }else{
  //     print("eerror");
  //   }
  // }
  // else{
  //   print("JLKJLKJ");
  // }

// if(room !=null){
//   final success = await showFutureLoadingDialog(context: context, future:)
// }
// if (room != null) {
//   final success = await showFutureLoadingDialog(
//       context: context,
//       future: () => room.leave());
//   if (success.error == null) {
//     String token = box.read("access");
//     if (kDebugMode) {
//       print(token);
//     }
//     PangeaServices.deleteClass(
//         roomId: room.id,
//         context: context);
//     if (kDebugMode) {
//       print(room.id);
//     }
//
//     VRouter.of(context).to('/rooms');
//   }
// }

  List<User> space = [];
  List<Room> get spaces =>
      Matrix.of(context).client.rooms.where((r) => r.isSpace).toList();

  fetchSpaceInfo(String roomAlias) async {
    final Room? rooms = Matrix.of(context).client.getRoomById(roomAlias);
    final String? userId = Matrix.of(context).client.userID;
    if (rooms != null && userId != null) {
      try {
        space = await rooms.requestParticipants();
        space = space.where((i) => i.id == userId).toList();
      } catch (e) {
        Fluttertoast.showToast(msg: "Unable to fetch Class Info");
        if (kDebugMode) {
          print(e);
        }
      }
    } else {
      Fluttertoast.showToast(msg: "Unable to fetch Class Info and Client Info");
    }
  }

  @override
  Widget build(BuildContext context) {
    return RequestScreenView(this);
  }
}
