import 'dart:async';

import 'package:pangea_choreographer/choreographer/Repo/flags.repo.dart';
import 'package:pangea_choreographer/choreographer/constants/keys.dart';
import 'package:pangea_choreographer/choreographer/controller/choreo_controller.dart';
import 'package:pangea_choreographer/choreographer/models/flag_model.dart';
import 'package:pangea_choreographer/choreographer/utils/shared_prefs.dart';

import '../models/choreo_language.model.dart';

class FlagController {
  final ChoreoController controller;
  StreamController<bool> isFetching = StreamController<bool>();

  static List<ChoreoLangModel>? _langList = [];
  FlagController(this.controller) {
    try {
      fetchFlags();
    } catch (err) {}
  }

  List<ChoreoLangModel>? get langList {
    return _langList;
  }

  static initialize() async {
    try {
      _langList = await _getCahedFlags();
      if (await _shouldFetch || _langList == null) {
        try {
          List<LanguageFlag> langFlags = await FlagRepo.fetchFlags();

          _langList = _langFlagToChoreoLang(langFlags);

          await _saveFlags(_langList!);
          await saveLastFetchDate();
        } catch (err) {
          print(err.toString());
        }
      }
    } catch (err) {
      print(err);
    }
  }

  fetchFlags() async {
    isFetching.add(true);
    _langList = await _getCahedFlags();
    if (await _shouldFetch || _langList == null) {
      List<LanguageFlag> langFlags = await FlagRepo.fetchFlags();

      _langList = _langFlagToChoreoLang(langFlags);
      await _saveFlags(_langList!);
    }
    isFetching.add(false);
  }

  static saveLastFetchDate() async {
    String now = DateTime.now().toIso8601String();
    await MyShared.saveString(PrefKey.LASTFETCHED, now);
  }

  static Future<bool> get _shouldFetch async {
    String? dateString = await MyShared.readString(PrefKey.LASTFETCHED);
    if (dateString == null) {
      return true;
    }
    return true;
    int lastFetched = DateTime.parse(dateString).millisecondsSinceEpoch;
    int now = DateTime.now().millisecondsSinceEpoch;
    const int fetchIntervalInMilliseconds = 86534601;
    return (now - lastFetched) >= fetchIntervalInMilliseconds ? true : false;
  }

  static Future<void> _saveFlags(List<ChoreoLangModel> langFlags) async {
    Map _flagMap = {PrefKey.FLAGS: langFlags.map((e) => e.toJson()).toList()};
    await MyShared.saveJson(PrefKey.FLAGS, _flagMap);
  }

  static Future<List<ChoreoLangModel>?> _getCahedFlags() async {
    print('Fetching flags from local');
    Map<dynamic, dynamic>? _flagsMap = await MyShared.readJson(PrefKey.FLAGS);
    if (_flagsMap == null) {
      return null;
    }
    print('Flags fetched successfully');
    List<ChoreoLangModel> _flags = [];
    List mapList = _flagsMap[PrefKey.FLAGS] as List;
    mapList.forEach((element) {
      _flags.add(ChoreoLangModel()..fromJson(element));
    });

    return _flags;
  }

  static List<ChoreoLangModel> _langFlagToChoreoLang(
      List<LanguageFlag> langFlags) {
    List<ChoreoLangModel> langList = [];
    langFlags.forEach((element) {
      langList.add(new ChoreoLangModel()
        ..flag = _fileNameFromUrl(element.languageFlag!)
        ..networkFlag = element.languageFlag
        ..lang = element.languageName
        ..langCode = _langCodeFromUrl(element.languageFlag!));
    });
    return langList;
  }

  static String _fileNameFromUrl(String url) {
    List<String> splitted = url.split('/');
    return splitted[splitted.length - 1];
  }

  static String _langCodeFromUrl(String url) {
    final flagName = _fileNameFromUrl(url);
    return flagName.split('.')[0];
  }

  ChoreoLangModel byLangCode(String langCode) {
    ChoreoLangModel? lang;
    _langList?.forEach((element) {
      if (element.langCode?.toLowerCase() == langCode.trim().toLowerCase()) {
        lang = element;
      }
    });
    return lang!;
  }

  ChoreoLangModel byLangName(String name) {
    ChoreoLangModel? lang;
    _langList?.forEach((element) {
      if (element.lang?.toLowerCase() == name.trim().toLowerCase()) {
        lang = element;
      }
    });
    return lang!;
  }
}
