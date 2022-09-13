import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

class JoinClassWithCode extends StatefulWidget {
  const JoinClassWithCode({Key? key}) : super(key: key);

  @override
  State<JoinClassWithCode> createState() => _JoinClassWithCodeState();
}

class _JoinClassWithCodeState extends State<JoinClassWithCode> {
  TextEditingController codeController = TextEditingController();
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.black26)),
        width: 300,
        padding: EdgeInsets.all(10.0),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "Connect to your class with the 6-digit class code from your teacher.\n \n If you don't know it, ask your teacher and enter it below.",
                  textAlign: TextAlign.center,
                    style: TextStyle().copyWith(
                        color: Colors.black,
                        fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: codeController,
                  autofocus: true,
                  maxLength: 6,
                  style: TextStyle().copyWith(
                      color: Colors.black,
                      fontSize: 14),
                  onChanged: (String? value) {
                    value?.length == 6 ? setState(() => color = Color(0xFF352048)) : setState(() => color = Colors.white);
                  },
                  decoration:  InputDecoration(
                      //prefixIcon: const Icon(Icons.label),
                      hintText: "Class code",
                      helperStyle: TextStyle().copyWith(
                      color: Colors.black,
                      fontSize: 14),
                  ),

                ),
              ),
              SizedBox(
                height: 10,
              ),

              InkWell(
                onTap: () {
                  if (codeController.text.length == 6) {
                    PangeaServices.joinClassWithCode(codeController.text, context);
                  } else {
                    Fluttertoast.showToast(msg: "length is short!!!!!!", webBgColor: "#ff0000", backgroundColor: Colors.red);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  child: Center(
                    child: Text("Connect to your class", style: TextStyle(color: Colors.grey)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Padding(
              //     padding: EdgeInsets.all(20),
              //     child: ElevatedButton(
              //       child: const Text(
              //         "Connect to your class",
              //         style: TextStyle(color: Colors.black45),
              //       ),
              //       onPressed: () {
              //         if (codeController.text.length == 6) {
              //           PangeaServices.joinClassWithCode(
              //               codeController.text, context);
              //         } else {
              //           Fluttertoast.showToast(msg: "length is sort!!!!!!");
              //         }
              //       },
              //       style: ElevatedButton.styleFrom(
              //         primary:codeController.text.length == 6? Colors.purple:Colors.red,
              //       ),
              //     ))
            ],
          ),
        ),
      )),
    );
  }
}
