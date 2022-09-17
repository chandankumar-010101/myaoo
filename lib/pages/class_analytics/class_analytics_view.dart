import 'package:flutter/material.dart';

import 'package:pangeachat/pages/class_analytics/class_analytics.dart';
import 'package:pangeachat/pages/class_analytics/class_tablet.dart';

import 'measure_able.dart';
import 'table_model.dart';

class ClassAnalyticsView extends StatelessWidget {
  final ClassAnalyticsController controller;
  const ClassAnalyticsView(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(controller.appBarTitle(context)),
        ),
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: view(context)));
  }

  Widget view(BuildContext context) {
    if (controller.isError) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spacer(),
          Expanded(
            child: Column(
              children: [
                ClassSelectTablet(controller: controller),
                Expanded(child: errorWidget(context))
              ],
            ),
          )
        ],
      );
    }
    if (controller.isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spacer(),
          Expanded(
            child: Column(
              children: [
                ClassSelectTablet(controller: controller),
                Expanded(child: loader(context))
              ],
            ),
          )
        ],
      );
    } else {
      if (controller.isCalibratingTable) {
        return Column(
          children: [
            spacer(),
            ClassSelectTablet(controller: controller),
            Expanded(
                child: Stack(
              children: [
                myTable(context),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: loader(context),
                )
              ],
            ))
          ],
        );
      } else {
        return Column(
          children: [
            spacer(),
            ClassSelectTablet(controller: controller),
            Expanded(
              child: myTable(context),
            )
          ],
        );
      }
    }
  }

  Widget errorWidget(BuildContext context) {
    return Container(
      child: Center(child: Text('We ran into a problem')),
    );
  }

  Widget myTable(BuildContext context) {
    return Column(
      children: [
        controller.isLoading
            ? loader(context)
            : Expanded(
                child: Scrollbar(
                  controller: controller.verticalScrollController,
                  child: SingleChildScrollView(
                    controller: controller.verticalScrollController,
                    scrollDirection: Axis.vertical,
                    child: Scrollbar(
                      controller: controller.horizontalScrollController,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: controller.horizontalScrollController,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              myTableRow(context, row: controller.topRow),
                              myTableRow(context, row: controller.sectionRow),
                              myTableRow(context, row: controller.classAvgRow),
                              ...controller.userRowList
                                  .map((e) => myTableRow(context, row: e))
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }

  Widget myTableRow(BuildContext context, {required List<MyTableCell> row}) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...row
              .map((e) => MeasurableWidget(
                    child: cell(context,
                        value: e.value!, color: e.bgColor!, width: e.width),
                    onChange: (size) {
                      e.width = size?.width;
                    },
                  ))
              .toList()
        ],
      ),
    );
  }

  Widget cell(BuildContext context,
      {required String value, required Color color, required double? width}) {
    return Container(
      key: UniqueKey(),
      width: width,
      decoration: BoxDecoration(
          color: color, border: Border.all(color: Color(0xFFCDCDCD), width: 1)),
      padding: const EdgeInsets.all(8),
      child: Center(
          child: Text(
        value,
        textAlign: TextAlign.center,
      )),
    );
  }

  Widget loader(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [CircularProgressIndicator()],
    );
  }

  Widget spacer() {
    return const SizedBox(height: 15);
  }
}
