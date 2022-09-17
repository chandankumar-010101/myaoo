import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/scheduler.dart';

// class MeasurableWidget extends StatefulWidget {
//   const MeasurableWidget({Key? key, required this.child, required this.onSized})
//       : super(key: key);
//   final Widget child;
//   final void Function(Size size) onSized;

//   @override
//   _MeasurableWidgetState createState() => _MeasurableWidgetState();
// }

// class _MeasurableWidgetState extends State<MeasurableWidget> {
//   bool _hasMeasured = false;

//   @override
//   Widget build(BuildContext context) {
//     final Size size = (context.findRenderObject() as RenderBox).size;
//     if (size != Size.zero) {
//       widget.onSized?.call(size);
//     } else if (!_hasMeasured) {
//       // Need to build twice in order to get size
//       scheduleMicrotask(() => setState(() => _hasMeasured = true));
//     }
//     return widget.child;
//   }
// }
class MeasurableWidget extends StatefulWidget {
  final Widget child;
  final Function(Size? size) onChange;

  const MeasurableWidget({
    Key? key,
    required this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  _WidgetSizeState createState() => _WidgetSizeState();
}

class _WidgetSizeState extends State<MeasurableWidget> {
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(postFrameCallback);
    return Container(
      key: widgetKey,
      child: widget.child,
    );
  }

  var widgetKey = GlobalKey();
  var oldSize;

  void postFrameCallback(_) {
    var context = widgetKey.currentContext;
    if (context == null) return;

    var newSize = context.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    widget.onChange(newSize);
  }
}
