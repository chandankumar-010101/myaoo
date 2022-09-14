import 'package:flutter/material.dart';
import './class_analytics_view.dart';

class ClassAnalytics extends StatefulWidget {
  const ClassAnalytics({Key? key}) : super(key: key);

  @override
  State<ClassAnalytics> createState() => ClassAnalyticsController();
}

class ClassAnalyticsController extends State<ClassAnalytics> {
  
  @override
  Widget build(BuildContext context) {
    return ClassAnalyticsView(this);
  }
}
