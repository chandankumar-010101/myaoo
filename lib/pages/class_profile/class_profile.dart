import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';
import '../../model/class_detail_model.dart';
import '../../model/exchange_classInfo.dart';
import '../../services/class_controllers.dart';
import '../../services/controllers.dart';
import '../../services/services.dart';

import 'class_profile_view.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => RequestScreenState();
}

class RequestScreenState extends State<RequestScreen> {

  ///initializations
  GetStorage box = GetStorage();
  PangeaControllers pangeaController = Get.put(PangeaControllers());
  ClassController classController = Get.put(ClassController());

  
  //----------------------------variables----------------------------//
  ///list of classes for current user
  List<User> space = [];

  
  //---------------------------Functions----------------------------//
  ///load flag to the UI
  fetchFlag(FetchClassInfoModel data, String url) {
    try {
      String path = url + data.flags[0].languageFlag ?? "";
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
    try{
      String path = url + data.flags[1].languageFlag.toString();
      print(path);
      return SizedBox(width: 20, height: 20, child: Image.network(path));

    }catch(e){
      return Container();
    }}
  
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

  ///Remove all the Students from the class
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


  @override
  Widget build(BuildContext context) {
    return RequestScreenView(this);
  }
}
