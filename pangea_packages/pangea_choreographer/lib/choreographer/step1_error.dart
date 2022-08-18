import 'package:flutter/material.dart';

import '../pangea_choreographer.dart';

class Step1Error extends StatelessWidget {
  final ChoreoController controller;
  const Step1Error({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      width: double.infinity,
      color: Theme.of(context).secondaryHeaderColor,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            controller.errorService!.message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
