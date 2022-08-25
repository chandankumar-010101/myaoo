import 'package:flutter/material.dart';

class RequestEnrollUI extends StatefulWidget {
  const RequestEnrollUI({Key? key}) : super(key: key);

  @override
  State<RequestEnrollUI> createState() => _RequestEnrollUIState();
}

class _RequestEnrollUIState extends State<RequestEnrollUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Request to enroll?"),
            const SizedBox(
              height: 6.0,
            ),
            Text("(other important info here?)"),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.black, width: 1.0)),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle()
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.black, width: 1.0)),
                  child: Center(
                    child: Text("Request",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontWeight: FontWeight.w400,
                            fontSize: 15)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
