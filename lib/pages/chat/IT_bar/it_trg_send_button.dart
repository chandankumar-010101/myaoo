import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'it_controller.dart';

class ItTrgSendButton extends StatelessWidget {
  final ItController itController;
  ItTrgSendButton({Key? key, required this.itController}) : super(key: key);
  GlobalKey? _key = LabeledGlobalKey("button_icon");
  OverlayEntry? _overlayEntry;
  Size? buttonSize;
  Offset? buttonPosition;

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

  findButton() {
    RenderBox renderBox = _key!.currentContext!.findRenderObject() as RenderBox;
    buttonSize = renderBox.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
    print(buttonPosition);
  }

  OverlayEntry _overlayEntryBuilder() {
    print('Building overlay');
    return OverlayEntry(
      builder: (context) {
        return Positioned(
            //top: buttonPosition!.dy + buttonSize!.height,
            top: 100,
            left: 50,
            //left: buttonPosition!.dx,
            width: 200,
            child: Container(
              height: 100,
              width: 200,
              color: Colors.white,
              child: Material(
                  color: Colors.transparent,
                  child: ListView.builder(
                      itemCount: itController.itLangList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            // closeMenu();
                            // itController
                            //     .changeSrcLang(itController.itLangList[index]);
                          },
                          child: ListTile(
                            leading: Text(
                              itController.itLangList[index].name!,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      })),
            ));
      },
    );
  }

  void openMenu(BuildContext context) {
    findButton();
    _overlayEntry = _overlayEntryBuilder();
    Overlay.of(context)!.insert(_overlayEntry!);
  }

  void closeMenu() {
    _overlayEntry!.remove();
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
        print('Opening drawer');
        openMenu(context);
      },
      key: _key,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
            height: flagSize,
            width: flagSize,
            child: SvgPicture.asset(
              itController.trgLang!.flagWithPath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
