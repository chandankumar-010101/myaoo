import 'dart:convert';

import 'package:flutter/material.dart';

class InviteEmail extends StatefulWidget {
  const InviteEmail({Key? key}) : super(key: key);

  @override
  State<InviteEmail> createState() => _InviteEmailState();
}

class _InviteEmailState extends State<InviteEmail> {
  List<TextEditingController> name = [];
  List<TextEditingController> email = [];

  List alldetails = [];


  FocusNode _emailfoucs = FocusNode();
  FocusNode _namefoucs = FocusNode();
  int fromcount = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF352048),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 17, top: 15),
              child: const Text("Invitations",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Colors.black)),
            ),
            const Divider(
              indent: 1,
              thickness: 1,
              color: Colors.black26,
            ),
            const SizedBox(
              height: 20,
            ),

            Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      name.add(TextEditingController());
                      email.add(TextEditingController());
                      return Column(
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: fromcount,
                              itemBuilder: (context, index) {
                                name.add(TextEditingController());
                                email.add(TextEditingController());
                                return Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                          EdgeInsets.all(10.0),
                                          child: Text(
                                              "Recipient Email id",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Colors.black)),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          height: 45,
                                          width: size.width / 3,
                                          child: Expanded(
                                            flex: 2,
                                            child: TextField(
                                              controller: email[index],
                                              keyboardType: TextInputType
                                                  .emailAddress,
                                              keyboardAppearance:
                                              Brightness.light,
                                              textAlignVertical:
                                              TextAlignVertical.center,
                                              textInputAction:
                                              TextInputAction.next,
                                              //focusNode: _emailfoucs,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                EdgeInsets.all(12),
                                                hintText:
                                                "Enter Recipient Email id",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text("Name",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Colors.black)),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 10, right: 10),
                                          height: 45,
                                          width: size.width / 3,
                                          child: Expanded(
                                            flex: 2,
                                            child: TextField(
                                              controller: name[index],
                                              keyboardType:
                                              TextInputType.text,
                                              keyboardAppearance:
                                              Brightness.light,
                                              textAlignVertical:
                                              TextAlignVertical.center,
                                              textInputAction:
                                              TextInputAction.next,
                                              //focusNode: _namefoucs,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                EdgeInsets.all(12),
                                                hintText: "Enter Name",
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(20)),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                );
                              }),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 1,
                              itemBuilder: (context, ind) {
                                return Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                          width: 17,
                                        ),
                                        const Icon(
                                          Icons.add_circle_outline_sharp,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        GestureDetector(
                                          onTap: () {

                                            print(name[index].text.toString());
                                            print(email[index].text.toString());
                                            if (name[index].text ==
                                                "" ||
                                                email[index].text ==
                                                    "") {
                                              print(name[index].text);
                                              print(email[index].text);
                                            }
                                            else {
                                              setState(() {
                                                fromcount++;
                                              });
                                            }
                                            // Fluttertoast.showToast(
                                            //     msg: "Form Added!!!!!!");
                                          },
                                          child: const Text(
                                            "Add Recipient",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            maxWidth: 300),
                                        child: Hero(
                                          tag: 'Send invitation',
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.all(16),
                                            child: ElevatedButton(
                                              style:
                                              ElevatedButton.styleFrom(
                                                primary:
                                                const Color(0xFF352048),
                                                onPrimary: Colors.white,
                                                shadowColor: Colors.white,
                                              ),
                                              onPressed: () {
                                                if (name[index].text ==
                                                    "" ||
                                                    email[index].text ==
                                                        "") {
                                                  print(name[index].text);
                                                  print(email[index].text);
                                                } else {
                                                  print("no data");
                                                  alldetails.clear();
                                                  for(int i=0;i<fromcount;i++){
                                                    Map<String,dynamic>  trendColorMap = {
                                                      "Email-Id": email[i].text.toString(),
                                                      'name': name[i].text.toString(),
                                                    };
                                                    jsonEncode(trendColorMap);

                                                    alldetails.add( jsonEncode(trendColorMap));
                                                    print(jsonDecode(alldetails.toString()));

                                                  }
                                                }
                                              },
                                              child: const Text(
                                                  "Send invitation"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              })
                        ],
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}