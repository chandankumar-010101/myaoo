// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pangeachat/pages/chat/IT_bar/models/it_countries.dart';
import 'package:pangeachat/pages/chat/IT_bar/it_shimmer.dart';

import '../../../config/app_config.dart';
import 'models/receive_text_model.dart';
import 'it_controller.dart';
import 'it_trg_send_button.dart';

class ItBar extends StatelessWidget {
  final ItController? itController;
  ItBar({Key? key, required this.itController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return itController!.isiTOpen
        ? Container(
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
                                itController!.selectedTranslations!)),
                    removeIcon(context, onPress: () {
                      itController!.removeLastSelected();
                    })
                  ],
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 75),
                  child: Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ...itController!.availTranslations!.last.map((e) =>
                            itController!.isLoading
                                ? ItShimmer(
                                    text: e.text,
                                  )
                                : transBars(context, continuance: e,
                                    onPress: () {
                                    itController!.selectTranslation(e);
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
                      itController: itController!,
                    ),
                  ],
                ),
              ],
            ),
          )
        : SizedBox();
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
            color: itController!.selectedTranslations!.length == 0
                ? Color.fromARGB(255, 211, 211, 211)
                : Theme.of(context).primaryColor,
          )),
    );
  }

  Widget transBars(BuildContext context,
      {required Continuances continuance, required Function onPress}) {
    return Container(
      margin: EdgeInsets.all(2),
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
          itController!.selectTranslation(continuance);
        },
        child: Text(continuance.text!, style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget translatedTextTablet(BuildContext context,
      {required List<Continuances> selectedTranslations}) {
    return Container(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 189, minHeight: 30),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 1,
              spacing: 1,
              children: [
                ...selectedTranslations!.map((e) => Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
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
