import 'package:flutter/material.dart';

class ItShimmer extends StatelessWidget {
  final text;
  const ItShimmer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 50),
      margin: const EdgeInsets.only(top: 5, bottom: 5, right: 2, left: 2),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: BorderRadius.circular(10)),

      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.2),
      //     spreadRadius: 1,
      //     blurRadius: 15,
      //     offset: Offset(0, 4), // changes position of shadow
      //   ),
      // ],

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 11),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.transparent),
        ),
      ),
    );
  }
}
