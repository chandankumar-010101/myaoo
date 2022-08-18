import 'package:flutter/material.dart';

class FeedbackPopup extends StatelessWidget {
  final String feedBackText;
  const FeedbackPopup({Key? key, required this.feedBackText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Feedback'),
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top:
                      BorderSide(color: Colors.grey.withOpacity(0.8), width: 2),
                  bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.8), width: 2))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/newAssets/Bot.png',
                      package: 'pangea_choreographer',
                      fit: BoxFit.contain,
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(feedBackText,
                    style: Theme.of(context).textTheme.bodyMedium)
              ]),
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
