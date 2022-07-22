import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pangeachat/pages/chat/IT_bar/widgets/it_dropdown/it_dropdown.dart';
import 'it_controller.dart';

class ItTrgSendButton extends StatelessWidget {
  final ItController itController;
  ItTrgSendButton({Key? key, required this.itController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
                    Colors.white,
                  ),
                  textStyle: MaterialStateProperty.all(
                    Theme.of(context).textTheme.bodyMedium,
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                onPressed: itController.selectedTranslations!.length == 0
                    ? null
                    : () {
                        itController.send();
                      },
                child: Text('Send'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, bottom: 1),
              child: Container(
                width: 2,
                color: Color.fromARGB(157, 124, 124, 124),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            _country(context, itController),
            SizedBox(
              width: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget _country(BuildContext context, ItController itController) {
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
                itController.changeTrgLand(lang);
              },
              selectedLang: itController.trgLang!,
              languages: itController.itLangList),
          useRootNavigator: false,
        );
      },
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
            height: flagSize,
            width: flagSize,
            child: Image.asset(itController.trgLang!.flagWithPath,
                fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
