import 'package:flutter/material.dart';
import 'package:pangeachat_choregrapher/choreographer/controller/choreo_controller.dart';
import 'package:pangeachat_choregrapher/choreographer/widgets/feedback_popup.dart';

import 'it_trg_send_button.dart';
import 'models/choreo_init_response.model.dart';

class Step1View extends StatelessWidget {
  final ChoreoController controller;
  const Step1View({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 170),
      width: double.infinity,
      color: Theme.of(context).secondaryHeaderColor,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: double.infinity,
            child: painTextTablets(context, controller: controller),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            controller.step1!.feedbackText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          barText(context, text: controller.step1!.beginActionText(context),
              onPress: () {
            controller.step1!.beginStep2();
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ItTrgSendButton(
                controller: controller!,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget barText(BuildContext context,
      {required String text, required Function onPress}) {
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
            offset: Offset(0, 4), // changes position of shadow
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
          onPress();
        },
        child: Text(text, style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget painTextTablets(BuildContext context,
      {required ChoreoController controller}) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 189, minHeight: 30),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 5,
            spacing: 1,
            children: [
              ...controller.step1!.tokens!.map((e) => InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            FeedbackPopup(feedBackText: e.feedbackMessage!),
                        useRootNavigator: false,
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(left: 2, right: 2),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                            e.token!,
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
}
