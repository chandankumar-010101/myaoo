import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
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
