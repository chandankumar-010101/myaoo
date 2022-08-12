import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
  var box=GetStorage();
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Theme.of(context).colorScheme.onPrimary
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("${box.read("clientID")} invited you to Pangea Chat.",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme
                              .bodyText1!
                              .color,
                          fontSize: 16),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("1. Install Pangea Chat: https://staging.pangea.chat",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme
                              .bodyText1!
                              .color,
                          fontSize: 16),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("2. Sign up or sign in",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme
                              .bodyText1!
                              .color,
                          fontSize: 16),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("3. Open the invite link:",
                      style: TextStyle().copyWith(
                          color: Theme.of(context).textTheme
                              .bodyText1!
                              .color,
                          fontSize: 16),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: ()async{
                      String link="https://matrix.to/#/${box.read("clientID")}?client=im.fluffychat";

                      print(link);
                      Clipboard.setData( ClipboardData(text: link))
                          .then((_){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(link)
                            )
                          );

                         }
                       );
                     },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("https://matrix.to/#/${box.read("clientID")}?client=im.fluffychat",
                        style: TextStyle().copyWith(
                            color: Theme.of(context).textTheme
                                .bodyText1!
                                .color,
                            fontSize: 16),
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () async{
                      String link="https://matrix.to/#/${box.read("clientID")}?client=im.fluffychat";
                      Clipboard.setData( ClipboardData(text: link))
                          .then((_){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(link)
                            )
                        );
                          }
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.onPrimary,
                          border: Border.all(),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 42, vertical: 6),
                          child: Text(
                            "Copy",
                            style: TextStyle().copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 16),
                          ),
                        )),
                  ),

                  const SizedBox(
                    height: 134,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
