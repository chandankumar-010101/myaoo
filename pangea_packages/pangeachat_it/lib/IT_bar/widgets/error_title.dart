import 'package:flutter/material.dart';

class ErrorTile extends StatelessWidget {
  const ErrorTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 7)),
          backgroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          textStyle: MaterialStateProperty.all(
            Theme.of(context).textTheme.bodyMedium,
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )),
        ),
        onPressed: null,
        child: const Text('An error occurred please try again',
            style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
