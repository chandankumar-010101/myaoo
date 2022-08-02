import 'package:flutter/material.dart';





import '../../models/it_countries.dart';

class ItDropDown extends StatelessWidget {
  final String title;
  final List<ItCountryModel> languages;
  final Function onPress;
  final ItCountryModel selectedLang;
  const ItDropDown(
      {Key? key,
      required this.languages,
      required this.title,
      required this.selectedLang,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(title),
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
              border: Border(
                  top:
                      BorderSide(color: Colors.grey.withOpacity(0.8), width: 2),
                  bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.8), width: 2))),
          child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, i) {
                var e = languages[i];
                return Container(
                  height: 50,
                  color: e.langCode == selectedLang.langCode
                      ? Theme.of(context).secondaryHeaderColor
                      : Colors.white.withOpacity(0.8),
                  child: InkWell(
                    onTap: () {
                      onPress(e);
                      Navigator.of(context).pop();
                    },
                    child: Row(children: [
                      const SizedBox(
                        width: 25,
                      ),
                      _country(context, e.flagWithPath),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(e.lang.toString())
                    ]),
                  ),
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }

  Widget _country(BuildContext context, String flagPath) {
    const double flagSize = 30;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
            height: flagSize,
            width: flagSize,
            child: Image.asset(flagPath, fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
