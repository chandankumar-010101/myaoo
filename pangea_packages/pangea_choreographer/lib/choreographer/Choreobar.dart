import 'package:flutter/material.dart';
import 'package:pangea_choreographer/choreographer/initial_loader.dart';

import '../pangea_choreographer.dart';
import 'constants/route_type.dart';
import 'it_trg_send_button.dart';
import 'step1_error.dart';
import 'step_1_view.dart';
import 'step_2_view.dart';
import 'widgets/my_dotted_border.dart';

class ChoreoBar extends StatelessWidget {
  final ChoreoController controller;
  const ChoreoBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _view();
  }

  Widget _view() {
    if (!controller.isOpen) {
      return const SizedBox();
    }
    switch (controller.state!.currentRoute) {
      case ChoreoRoute.INITAL_LOADING:
        {
          return const ChoreoInitalLoading();
        }
      case ChoreoRoute.STEP1_ERROR:
        {
          return Step1Error(controller: controller);
        }
      case ChoreoRoute.STEP1:
        {
          return Step1View(controller: controller);
        }
      case ChoreoRoute.STEP2:
        {
          return Step2View(
            controller: controller,
          );
        }
      default:
        {
          return const SizedBox();
        }
    }
  }
}
