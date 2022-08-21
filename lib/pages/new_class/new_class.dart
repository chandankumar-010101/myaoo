import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart' as sdk;
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/flag_model.dart';
import 'package:pangeachat/services/class_services.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

import '../../widgets/matrix.dart';
import '../homeserver_picker/home_controller.dart';
import 'new_class_view.dart';

class NewClass extends StatefulWidget {
  const NewClass({Key? key}) : super(key: key);

  @override
  NewClassController createState() => NewClassController();
}

class NewClassController extends State<NewClass> {

  int createClass = 0;





  String? get roomId => VRouter.of(context).pathParameters['roomid'];






  @override
  Widget build(BuildContext context) => NewClassView(this);
}
