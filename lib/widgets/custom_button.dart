import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,
    this.hint,
    this.onTap,
    this.enable, required this.textInputType,
  }) : super(key: key);
  final String? hint;

  final TextInputType textInputType;
  final onTap;
  final enable;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap;
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration:BoxDecoration(
          //gradient: LinearGradient(colors: [klightblack,klightblack]),
          color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          border: Border.all()
        ),

        child: Container(

          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 16,top: 2),
          decoration:BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text("heelo"),
        ),
      ),
    );
  }
}
