import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/class_code_model.dart';
import 'package:pangeachat/services/services.dart';

import 'package:vrouter/vrouter.dart';

import '../../widgets/matrix.dart';

class JoinClassWithLink extends StatefulWidget {
  const JoinClassWithLink({Key? key}) : super(key: key);

  @override
  State<JoinClassWithLink> createState() => _JoinClassWithLinkState();
}

class _JoinClassWithLinkState extends State<JoinClassWithLink> {
  String classCode = "";

  storeData() {
    if (classCode.isNotEmpty) {
      final box = GetStorage();
      box.write("classCode", classCode);
      Future.delayed(const Duration(seconds: 2), () {
        print("data added to box");
        VRouter.of(context).to('/home');
      });
    } else {
      print("unable to find classcode");
      Fluttertoast.showToast(
          msg: "Unable to find class code",
          webBgColor: Colors.red,
          backgroundColor: Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    classCode = VRouter.of(context).queryParameters['code'] ?? "";
    if (Matrix.of(context).client.loginState == LoginState.loggedOut) {
      storeData();
      return Scaffold(
        body: Container(),
      );
    } else {
      if (classCode.isEmpty) {
        return const Scaffold(
          body: Center(
            child: Text("Unable to find the Code"),
          ),
        );
      } else {
        return Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                VRouter.of(context).to("/rooms");
              },
              child: Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          body: Center(
              child: FutureBuilder(
            future: PangeaServices.fetchClassWithCode(classCode, context),
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasData) {
                ClassCodeModel data = snapshot.data as ClassCodeModel;
                //print(data.pangeaClassRoomId);
                return Container(
                  width: 300,
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            "By pressing Join you will be added to the class",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(
                            child: const Text("Connect To Class"),
                            onPressed: () {
                              PangeaServices.joinRoom(
                                  context, data.pangeaClassRoomId!);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return CircularProgressIndicator();
              } else {
                return CircularProgressIndicator();
              }
            },
          )),
        );
      }
    }
  }
}
