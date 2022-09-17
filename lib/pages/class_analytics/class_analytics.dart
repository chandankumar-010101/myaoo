import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/model/class_analytics_model.dart';
import '../../config/app_config.dart';
import '../../services/services.dart';
import '../../widgets/matrix.dart';
import '../chat_list/spaces_entry.dart';
import './class_analytics_view.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:vrouter/vrouter.dart';
import 'table_model.dart';

class ClassAnalytics extends StatefulWidget {
  const ClassAnalytics({Key? key}) : super(key: key);

  @override
  State<ClassAnalytics> createState() => ClassAnalyticsController();
}

class ClassAnalyticsController extends State<ClassAnalytics> {
  int _retry = 2;
  bool isLoading = true;
  bool isError = false;
  bool waitForFirstSync = false;
  bool isCalibratingTable = true;
  List<MyTableCell> topRow = [];
  List<MyTableCell> sectionRow = [];
  List<MyTableCell> classAvgRow = [];
  List<List<MyTableCell>> userRowList = [];
  Map<String, String> userInfoHashMap = {};
  ClassAnalyticsModel? classAnalyticsModel;
  ScrollController verticalScrollController = ScrollController();
  ScrollController horizontalScrollController = ScrollController();
  ScrollController classTabletScrollController = ScrollController();
  String appBarTitle(BuildContext context) {
    return 'Class Analytics';
  }

  @override
  void initState() {
    super.initState();

    fetchClassAnalytics();
  }

  SpaceSpacesEntry? _selectedSpacesEntry;
  SpaceSpacesEntry get selectedSpacesEntry {
    if (_selectedSpacesEntry == null) {
      String? spaceId = context.vRouter.pathParameters['spaceid'];
      spacesEntries.forEach((element) {
        if (element.space.id == spaceId) {
          _selectedSpacesEntry = element;
        }
      });
    }
    return _selectedSpacesEntry!;
  }

  List<SpaceSpacesEntry> get spacesEntries {
    return [...spaces.map((space) => SpaceSpacesEntry(space)).toList()];
  }

  List<Room> get spaces =>
      Matrix.of(context).client.rooms.where((r) => r.isSpace).toList();

  void changeClass(SpaceSpacesEntry space) {
    VRouter.of(context).to('/classAnalytics/' + space.space.id);
    _selectedSpacesEntry = space;
  }

  void fetchClassAnalytics() async {
    isLoading = true;
    isError = false;
    isCalibratingTable = true;
    try {
      const String roomId = '!cTiZWThxFdBdsTPbSN:staging.pangea.chat';
      classAnalyticsModel =
          await PangeaServices.classAnalyticsFromRoomId(roomId: roomId);
      await _populateUsers(context);
      _mapTableEntries(classAnalyticsModel!);
    } catch (err) {
      isError = true;
    }
    isLoading = false;
    setState(() {});

    Future.delayed(Duration(milliseconds: 100), () {
      _calibrateTable();
    });
  }

  Color get _nameBG {
    return const Color(0xFFEAEAEA);
  }

  _mapTableEntries(ClassAnalyticsModel analyticsModel) {
    topRow = [];
    sectionRow = [];
    classAvgRow = [];
    userRowList = [];

    topRow = [
      MyTableCell(
          value: '',
          bgColor: Theme.of(context).scaffoldBackgroundColor,
          width: null)
    ];
    sectionRow = [MyTableCell(value: 'Name', bgColor: _nameBG, width: null)];
    classAvgRow = [
      MyTableCell(
          value: 'Class avg',
          bgColor: Theme.of(context).scaffoldBackgroundColor,
          width: null)
    ];

    for (final element in analyticsModel.analytics) {
      topRow.add(MyTableCell(
          value: element.title,
          bgColor: Theme.of(context).scaffoldBackgroundColor,
          width: null));
      for (final section in element.section) {
        sectionRow.add(
            MyTableCell(value: section.title, bgColor: _nameBG, width: null));
        classAvgRow.add(MyTableCell(
            value: section.classTotal,
            bgColor: Theme.of(context).scaffoldBackgroundColor,
            width: null));
      }
    }

    for (int userIndex = 0;
        userIndex < analyticsModel.userIds.length;
        userIndex++) {
      final String userId = analyticsModel.userIds[userIndex];
      final List<MyTableCell> usersRow = [
        MyTableCell(
            value: userInfoHashMap[userId],
            bgColor: Theme.of(context).scaffoldBackgroundColor,
            width: null)
      ];
      for (final element in analyticsModel.analytics) {
        for (final section in element.section) {
          bool isFound = false;
          if (section.data[userIndex].userId == userId) {
            isFound = true;
            usersRow.add(MyTableCell(
                value: section.data[userIndex].value,
                bgColor: Theme.of(context).scaffoldBackgroundColor,
                width: null));
          } else {
            for (final data in section.data) {
              if (data.userId == userId) {
                isFound = true;
                usersRow.add(MyTableCell(
                    value: data.value,
                    bgColor: Theme.of(context).scaffoldBackgroundColor,
                    width: null));
              }
            }
          }
          if (!isFound) {
            usersRow.add(MyTableCell(
                value: '',
                bgColor: Theme.of(context).scaffoldBackgroundColor,
                width: null));
          }
        }
      }
      userRowList.add(usersRow);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  _calibrateTable() {
    try {
      _secondAndAfterColumnAdjustment();
      _topColumnAdjustment();
      _retry = 2;
    } catch (err) {
      _retry--;
      if (_retry > 0) {
        Future.delayed(Duration(milliseconds: 100), () {
          _calibrateTable();
        });
      } else {
        isError = true;
      }
      print('Exception ' + err.toString());
    }
    isCalibratingTable = false;
    setState(() {});
  }

  Future<Map<String, ProfileInformation>> _getUserProfile(
      BuildContext context, String userId) async {
    ProfileInformation profile =
        await Matrix.of(context).client.getUserProfile(userId);
    return {userId: profile};
  }

  _populateUsers(BuildContext context) async {
    List<Future<Map<String, ProfileInformation>>> userInfoFutures = [];
    classAnalyticsModel!.userIds.forEach((element) {
      userInfoFutures.add(_getUserProfile(context, element));
    });
    final response = await Future.wait(userInfoFutures);
    for (final element in response) {
      element.forEach((key, value) {
        print('Key ' + key + ' displyname' + value.displayname!);
        userInfoHashMap[key] = value.displayname ?? '';
      });
    }
  }

  _secondAndAfterColumnAdjustment() {
    for (int i = 0; i < sectionRow.length; i++) {
      double max = 0;
      // if (topRow[i].width! > max) {
      //   max = topRow[i].width!;
      // }
      if (sectionRow[i].width! > max) {
        max = sectionRow[i].width!;
      }
      if (classAvgRow[i].width! > max) {
        max = classAvgRow[i].width!;
      }
      userRowList.forEach((element) {
        if (element[i].width! > max) {
          max = element[i].width!;
        }
      });
      // topRow[i].width = max;
      sectionRow[i].width = max;
      classAvgRow[i].width = max;
      userRowList.forEach((element) {
        element[i].width = max;
      });
    }
  }

  _topColumnAdjustment() {
    int index = 0;

    int startIndex = 0;
    int endIndex = 0;
    for (final element in topRow) {
      int noOfSection = 0;
      if (index == 0) {
        noOfSection = 1;
      } else {
        noOfSection = classAnalyticsModel!.analytics[index - 1].section.length;
      }

      double accumulativeWidth = 0;
      startIndex = endIndex;
      endIndex = startIndex + noOfSection;
      for (int i = startIndex; i < endIndex; i++) {
        accumulativeWidth = accumulativeWidth + sectionRow[i].width!;
      }
      element.width = accumulativeWidth;
      index++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClassAnalyticsView(this);
  }
}
