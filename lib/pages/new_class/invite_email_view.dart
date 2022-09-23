import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pangeachat/model/invite_email_model.dart' as inviteEmail;
import 'package:pangeachat/services/services.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';

class InviteEmail extends StatefulWidget {
  const InviteEmail({Key? key}) : super(key: key);

  @override
  State<InviteEmail> createState() => _InviteEmailState();
}

class _InviteEmailState extends State<InviteEmail> {
  List<TextEditingController> name = [];
  List<TextEditingController> email = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int value = 1;

  _addItem() {
    setState(() {
      value = value + 1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.add(TextEditingController());
    email.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final roomId = VRouter.of(context).queryParameters['id'] ?? "";
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            context.vRouter.to("/invite_students",
                queryParameters: {
                  "id": roomId,
                });
          },
        ),
        title: Text("Invitations", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child:
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: value,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("Name", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: Theme.of(context).textTheme.bodyText1!.color,)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              // height: 45,
                              width: size.width / 3,
                              child: TextFormField(
                                controller: name[index],
                                keyboardType: TextInputType.text,
                                validator: (value) => value!.isEmpty ? "Please type user name" : null,
                                keyboardAppearance: Brightness.light,
                                textAlignVertical: TextAlignVertical.center,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(12),
                                  hintText: "Enter Name",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:const EdgeInsets.all(10.0),
                              child: Text("Recipient's email", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: Theme.of(context).textTheme.bodyText1!.color,)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              // height: 45,
                              width: size.width / 3,
                              child: TextFormField(
                                validator: (value) => EmailValidator.validate(value!) ? null : 'Please enter a valid email',
                                controller: email[index],
                                keyboardType: TextInputType.emailAddress,
                                keyboardAppearance: Brightness.light,
                                textAlignVertical: TextAlignVertical.center,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(12),
                                  hintText: "Recipient's email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child:  Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 17,
                  ),
                  Icon(
                    Icons.add_circle_outline_sharp,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Add Recipient",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,color: Theme.of(context).textTheme.bodyText1!.color,),
                  )

                ],
              ),
              onTap: (){
                if (_formKey.currentState!.validate()) {
                  _addItem();
                  name.add(TextEditingController());
                  email.add(TextEditingController());
                }
              },
            ),
            Center(
              child: Container(
                width: 200,
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.onPrimary == Colors.white
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onPrimary,
                      )),
                  child: Text("Send Invitation",style: TextStyle(
                      fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final List<inviteEmail.Data> info = [];
                      List.generate(
                          name.length,
                              (index) => info.add(inviteEmail.Data(
                            email: email[index].text,
                            name: name[index].text,
                          )));

                      if (roomId.isEmpty) {
                        Fluttertoast.showToast(msg: "Unable to find Room ID", webBgColor: "#ff0000", backgroundColor: Colors.red);

                        return;
                      }
                      String teacherName = Matrix.of(context).client.getRoomById(roomId)!.displayname ?? "";
                      if (teacherName.isEmpty) {
                        Fluttertoast.showToast(msg: "Unable to find Room Name", webBgColor: "#ff0000", backgroundColor: Colors.red);
                        return;
                      }

                      if (info.isNotEmpty) {
                        PangeaServices.sendEmailToJoinClass(info, roomId, teacherName);
                      }
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
