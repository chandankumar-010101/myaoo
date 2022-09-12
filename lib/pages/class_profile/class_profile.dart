import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';

import '../../config/app_config.dart';
import '../../model/class_detail_model.dart';
import '../../model/exchange_classInfo.dart';
import '../../services/controllers.dart';
import '../../services/services.dart';

import '../chat_list/spaces_entry.dart';
import 'class_profile_view.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => RequestScreenState();
}

class RequestScreenState extends State<RequestScreen> {

  final box = GetStorage();

  ///list of classes for current user
  List<User> space = [];

  ///getx controller to toggle the UI
  PangeaControllers getxController = Get.put(PangeaControllers());

  ///load flag to the UI
  fetchFlag(FetchClassInfoModel data, String url) {
    try {
      String path = url + data.flags[1].languageFlag.toString() ?? "";
      print(path);
      return path.isNotEmpty
          ? SizedBox(
              width: 20,
              height: 20,
              child: Image.network(path),
            )
          : Container();
    } catch (e) {
      return Container();
    }
  }

  fetchFlag2(FetchClassInfoModel data, String url) {
    String path = url + data.flags[0].languageFlag.toString();
    print(path);
    return SizedBox(width: 20, height: 20, child: Image.network(path));
  }

  ///Fetch User info, if it exist in the class or not

  fetchSpaceInfo(String roomAlias) async {
    final Room? rooms = Matrix.of(context).client.getRoomById(roomAlias);
    final String? userId = Matrix.of(context).client.userID;
    if (rooms != null && userId != null) {
      try {
        space = await rooms.requestParticipants();

        noOfStudents = space.length;
        space = space.where((i) => i.id == userId).toList();
      } catch (e) {
        // Fluttertoast.showToast(msg: "Unable to fetch Class Info", webBgColor: Colors.red, backgroundColor: Colors.red);

        if (kDebugMode) {
          print(e);
        }
      }
    } else {

      // Fluttertoast.showToast(msg: "Unable to fetch Class Info and Client Info", webBgColor: Colors.red, backgroundColor: Colors.red);
    }
  }

  ///kick the students and leave the class
  kickAndRemoveClass(String roomAlias) async {
    try {
      final room = Matrix.of(context).client.getRoomById(roomAlias);
      if (room != null) {
        if (room.canKick) {
          final List<User> rooms = await room.requestParticipants();
          final String? userId = Matrix.of(context).client.userID;
          if (userId != null) {
            for (final element in rooms) {
              if (userId == element.id) {
                continue;
              }
              await room.kick(element.id);
            }
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Students removed from the class"),
              backgroundColor: Colors.green,
            ));
            final success = await showFutureLoadingDialog(
                context: context, future: () => room.leave());
            if (success.error == null) {
              final bool? result = await PangeaServices.deleteClass(
                  roomId: room.id, context: context);
              result != null && result
                  ? VRouter.of(context).to('/rooms')
                  : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Unable to delete class records"),
                      backgroundColor: Colors.red,
                    ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Unable to leave the class"),
                backgroundColor: Colors.red,
              ));
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Unable to fetch current user information"),
              backgroundColor: Colors.red,
            ));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("You don't have permissions!n"),
            backgroundColor: Colors.red,
          ));
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Error Accrued"),
        backgroundColor: Colors.red,
      ));
      print(e);
    }
  }

  removeExchangeClass(String roomAlias) async{
    try{
      ExchangeClassInfo data =  await PangeaServices.fetchExchangeClassInfo(roomAlias);
      if (kDebugMode) {
        print(data.requestTeaacher);
        print(data.requestToClassAuthor);
      }

      final room = Matrix.of(context).client.getRoomById(roomAlias);
      if (room != null) {
        if (room.canKick) {
          final List<User> rooms = await room.requestParticipants();
          final String? userId = Matrix.of(context).client.userID;
          if (userId != null) {
            for (final element in rooms) {
              if (data.requestToClassAuthor == element.id || data.requestTeaacher == element.id) {
                continue;
              }
              await room.kick(element.id);
            }
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Students removed from the class"),
              backgroundColor: Colors.green,
            ));
            VRouter.of(context).to('/rooms');

          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Unable to fetch current user information"),
              backgroundColor: Colors.red,
            ));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("You don't have permissions!n"),
            backgroundColor: Colors.red,
          ));
        }
      }

    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Error Accrued"),
        backgroundColor: Colors.red,
      ));
      print(e);
    }
  }

  int noOfStudents = 0;


  @override
  Widget build(BuildContext context) {
    return RequestScreenView(this);
  }
}
