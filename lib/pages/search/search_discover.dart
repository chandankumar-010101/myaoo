import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pangeachat/utils/api/user_details_api.dart';

class SearchDiscoverView extends StatefulWidget {
  const SearchDiscoverView({Key? key}) : super(key: key);

  @override
  State<SearchDiscoverView> createState() => _SearchDiscoverViewState();
}

class _SearchDiscoverViewState extends State<SearchDiscoverView> {
  var box=GetStorage();

  userAgeDetails()async{
    await UserDetails().userAge();

  }
  Object? packId ;
  Object? monthId ;
  Object? yearId ;

  verify()async{
    if(packId==null){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Day is empty"),
      ));
    }
    else if(monthId==null){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Month is empty"),
      ));

  }
   else if(yearId==null){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Year is empty"),
      ));
   }
    else{
      await UserDetails().updateUserAge(packId,monthId,yearId);
    }
  }
  @override
  Widget build(BuildContext context) {


    userAgeDetails();
    int age=int.parse(box.read("age").toString());
    Random random = Random();
    List list =  List<int>.generate(31, (i) => i + 1);
    List month =  List<int>.generate(12, (i) => i + 1);
    List year =  List<int>.generate(100, (i) => i + 1950);
    return Scaffold(
      body: Column(
        children: [
          age<=18?SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:  Theme.of(context).colorScheme.onPrimary

              ),
              child: Column(
                children:   [
                 const SizedBox(height: 50,),
                 Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("After a scalable way of verifying a new user is over 18. This may just be the standard checkbox with legal disclaimer for now.",
                      style: TextStyle().copyWith(
                          color:Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 16),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                 const SizedBox(height: 16,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200,
                          child: DropdownButton<dynamic>(
                            underline:Text("",
                              style: TextStyle().copyWith(
                                  color:Theme.of(context).textTheme.bodyText1!.color,
                                  fontSize: 16),

                            ) ,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 30,
                            ),
                            isExpanded:true,
                            value: packId,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Select Day",
                                style: TextStyle().copyWith(
                                    color:Theme.of(context).textTheme.bodyText1!.color,
                                    fontSize: 16),

                              ),
                            ),
                            items: list.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${item.toString()}"),
                                ),
                              );
                            }).toList()??[],
                            onChanged: ( value)async {

                              packId=value;

                              setState(() {
                                packId=value;


                                print("${packId}");


                              });

                            },



                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200,
                          child: DropdownButton<dynamic>(
                            underline:Text("",
                              style: TextStyle().copyWith(
                                  color:Theme.of(context).textTheme.bodyText1!.color,
                                  fontSize: 16),

                            ) ,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 30,
                            ),
                            isExpanded:true,
                            value: monthId,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Select Month",
                                style: TextStyle().copyWith(
                                    color:Theme.of(context).textTheme.bodyText1!.color,
                                    fontSize: 16),

                              ),
                            ),
                            items: month.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${item.toString()}"),
                                ),
                              );
                            }).toList()??[],
                            onChanged: ( value)async {

                              monthId=value;

                              setState(() {
                                monthId=value;


                                print("${ monthId}");


                              });

                            },



                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200,
                          child: DropdownButton<dynamic>(
                            underline:Text("",
                              style: TextStyle().copyWith(
                                  color:Theme.of(context).textTheme.bodyText1!.color,
                                  fontSize: 16),

                            ) ,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 30,
                            ),
                            isExpanded:true,
                            value: yearId,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Select Year",
                                style: TextStyle().copyWith(
                                    color:Theme.of(context).textTheme.bodyText1!.color,
                                    fontSize: 16),

                              ),
                            ),
                            items: year.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${item.toString()}"),
                                ),
                              );
                            }).toList()??[],
                            onChanged: ( value)async {

                              yearId=value;

                              setState(() {
                                yearId=value;


                                print("${yearId}");


                              });

                            },



                          ),
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      verify();
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: Padding(
                          padding:const EdgeInsets
                              .symmetric(
                              horizontal: 42,
                              vertical: 6),
                          child: Text(
                            "Verify",
                            style: TextStyle().copyWith(
                                color:Theme.of(context).textTheme.bodyText1!.color,
                                fontSize: 16),
                          ),
                        )
                    ),
                  ),


                 const SizedBox(height: 134,),

                ],
              ),
            ),
          ):Container(),
         ],
      ),
    );
  }
}
