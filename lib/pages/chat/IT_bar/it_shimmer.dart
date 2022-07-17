import 'package:flutter/material.dart';

class ItShimmer extends StatelessWidget {
  const ItShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _skelton(context, height: 40, width: 100),
          SizedBox(
            width: 10,
          ),
          _skelton(context, height: 40, width: 60),
          SizedBox(
            width: 10,
          ),
          _skelton(context, height: 40, width: 70)
        ],
      ),
    );
  }

  Widget _skelton(BuildContext context,
      {required double height, required double width}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
