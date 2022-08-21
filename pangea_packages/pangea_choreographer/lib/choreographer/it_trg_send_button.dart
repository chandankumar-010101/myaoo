import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'config/colors.dart';
import 'controller/choreo_controller.dart';
import 'widgets/it_dropdown/it_dropdown.dart';

class ItTrgSendButton extends StatelessWidget {
  final ChoreoController controller;
  ItTrgSendButton({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ChoreoColor.containerBG(context),
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
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              //margin: EdgeInsets.all(2),
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 7)),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                  textStyle: MaterialStateProperty.all(
                    Theme.of(context).textTheme.bodyMedium,
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                onPressed: controller.step2!.selectedTranslations!.isEmpty
                    ? null
                    : () {
                        controller.send();
                      },
                child: Text('Send',
                    style: TextStyle(
                      color: controller.step2!.selectedTranslations!.isEmpty
                          ? ChoreoColor.disabled(context)
                          : ChoreoColor.textColor(context),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, bottom: 1),
              child: Container(
                width: 2,
                color: const Color.fromARGB(157, 124, 124, 124),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            _country(context, controller),
            const SizedBox(
              width: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget _country(BuildContext context, ChoreoController itController) {
    // return SizedBox(

    //   child: Column(
    //     children: [Image.asset('assets/newAssets/english_flag.png')],
    //   ),
    // );
    const double flagSize = 30;
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ItDropDown(
              title: 'Target language',
              onPress: (lang) {
                itController.lang!.changeTrgLand(lang);
              },
              selectedLang: itController.lang!.trgLang!,
              languages: itController.lang!.langList),
          useRootNavigator: false,
        );
      },
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
            height: flagSize,
            width: flagSize,
            child: Image.asset(itController.lang!.trgLang!.flagWithPath,
                package: 'pangea_choreographer', fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
