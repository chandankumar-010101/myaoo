import 'package:flutter/material.dart';
import 'package:pangeachat/pages/request_screen/request_screen_view.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return RequestScreenView();
  }
}
