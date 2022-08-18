// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pangea_choreographer/choreographer/widgets/error_title.dart';

import 'widgets/it_shimmer.dart';
import 'models/receive_text_model.dart';
import 'controller/choreo_controller.dart';
import 'it_trg_send_button.dart';
import 'widgets/translation_finished.dart';

class Step2View extends StatelessWidget {
  final ChoreoController controller;
  const Step2View({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).secondaryHeaderColor,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: translatedTextTablet(context,
                      selectedTranslations:
                          controller.step2!.selectedTranslations!)),
              removeIcon(context, onPress: () {
                controller!.step2!.removeLastSelected();
              })
            ],
          ),
          Container(
            constraints: BoxConstraints(minHeight: 75),
            child: Center(
              child: controller!.step2!.isTranslationDone
                  ? const TranslationFinished()
                  : controller!.errorService!.isError
                      ? const ErrorTile()
                      : Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            ...renderShimmerIfListEmpty(context,
                                    controller: controller!)
                                .map((e) => e),
                            ...controller.step2!.availTranslations!.last.map(
                                (e) => controller.step2!.isLoading
                                    ? ItShimmer(
                                        text: e.text,
                                      )
                                    : transBars(context, continuance: e,
                                        onPress: () {
                                        controller.step2!.selectTranslation(e);
                                      }))
                          ],
                        ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [],
              ),
              ItTrgSendButton(
                controller: controller,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Iterable<Widget> renderShimmerIfListEmpty(BuildContext context,
      {required ChoreoController controller, int noOfBars = 3}) {
    if (!controller.step2!.isLoading) {
      return [const SizedBox.shrink()];
    }

    if (controller.step2!.availTranslations!.last.isEmpty) {
      List<String> dummyStrings = [];
      for (int i = 0; i < noOfBars; i++) {
        dummyStrings.add('Dummy');
      }
      return dummyStrings.map((e) => ItShimmer(text: e));
    }
    return [const SizedBox.shrink()];
  }

  Widget removeIcon(BuildContext context, {required Function onPress}) {
    const double buttonSize = 28;
    return InkWell(
      onTap: () {
        onPress();
      },
      child: SizedBox(
          height: buttonSize,
          width: buttonSize,
          child: SvgPicture.asset(
            'assets/newAssets/undoIcon.svg',
            fit: BoxFit.contain,
            color: controller.step2!.selectedTranslations!.isEmpty ||
                    controller.step2!.isLoading
                ? const Color.fromARGB(255, 211, 211, 211)
                : Theme.of(context).primaryColor,
          )),
    );
  }

  Widget transBars(BuildContext context,
      {required Continuances continuance, required Function onPress}) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 7)),
          backgroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          textStyle: MaterialStateProperty.all(
            Theme.of(context).textTheme.bodyMedium,
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )),
        ),
        onPressed: () {
          controller.step2!.selectTranslation(continuance);
        },
        child: Text(continuance.text!, style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget translatedTextTablet(BuildContext context,
      {required List<Continuances> selectedTranslations}) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 189, minHeight: 30),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.start,
            runSpacing: 1,
            spacing: 1,
            children: [
              ...selectedTranslations.map((e) => Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(tabledColor(e.probability!))),
                          child: Center(
                              child: Text(
                            e.text!,
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  int tabledColor(double prob) {
    if (prob > 0.79) {
      return 0xFF209c05;
    }
    if (prob > 0.59) {
      return 0xFF85e62c;
    }
    if (prob > 0.39) {
      return 0xFFebff0a;
    }
    if (prob > 0.19) {
      return 0xFFf2ce02;
    }
    return 0xFFFF2D2D;
  }
}
