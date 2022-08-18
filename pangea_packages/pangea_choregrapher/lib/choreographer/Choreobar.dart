import 'package:flutter/material.dart';
import 'package:pangeachat_choregrapher/choreographer/constants/route_type.dart';
import 'package:pangeachat_choregrapher/choreographer/controller/choreo_controller.dart';
import 'package:pangeachat_choregrapher/choreographer/initial_loader.dart';
import 'package:pangeachat_choregrapher/choreographer/models/choreo_init_response.model.dart';
import 'package:pangeachat_choregrapher/choreographer/step1_error.dart';
import 'package:pangeachat_choregrapher/choreographer/step_1_view.dart';
import 'package:pangeachat_choregrapher/choreographer/step_2_view.dart';

import 'it_trg_send_button.dart';
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
