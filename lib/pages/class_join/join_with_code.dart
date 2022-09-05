import 'package:flutter/material.dart';
import 'package:pangeachat/services/services.dart';
import 'package:vrouter/vrouter.dart';

class JoinClassWithCode extends StatefulWidget {
  const JoinClassWithCode({Key? key}) : super(key: key);

  @override
  State<JoinClassWithCode> createState() => _JoinClassWithCodeState();
}

class _JoinClassWithCodeState extends State<JoinClassWithCode> {
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "Connect to your class with the 6-digit class code from your teacher.\n \n If you don't know it, ask your teacher and enter it below.",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: codeController,
                  autofocus: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.label),
                      hintText: "Class code"),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RaisedButton(
                  child: const Text("Connect To Class"),
                  onPressed: () {
                    if(codeController.text.length == 6){
                      PangeaServices.joinClassWithCode(codeController.text,context);
                    }else{
                      print("length is short");
                    }
                    },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
