import 'package:flutter/material.dart';

class ChoreoInitalLoading extends StatefulWidget {
  const ChoreoInitalLoading({Key? key}) : super(key: key);

  @override
  State<ChoreoInitalLoading> createState() => _ChoreoInitalLoadingState();
}

class _ChoreoInitalLoadingState extends State<ChoreoInitalLoading> {
  double? progress;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.bounceInOut,
      height: 36,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          const SizedBox(width: 12),
          Text(
            'Loading',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        ],
      ),
    );
  }
}
