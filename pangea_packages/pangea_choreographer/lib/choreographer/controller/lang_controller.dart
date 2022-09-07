import '../../pangea_choreographer.dart';
import '../constants/lang_list.dart';
import '../models/choreo_language.model.dart';

class LangController {
  List<ChoreoLangModel> langList = LangList.all;
  ChoreoController choreoController;
  LangController(this.choreoController);
  ChoreoLangModel? _srcLang;
  ChoreoLangModel? _trgLang;
  ChoreoLangModel? _feedBackLang;

  ChoreoLangModel? get feedBackLang {
    return _feedBackLang;
  }

  void setFeedBackLang(ChoreoLangModel lang) {
    _feedBackLang = lang;
  }

  void setSrcLangByName(String name) {
    _srcLang = LangList.byLangName(name);
    print('Src lang ' + _srcLang!.toJson().toString());
    _setState();
  }

  void setTrgLangByName(String name) {
    _trgLang = LangList.byLangName(name);
    print('Trg lang' + _trgLang!.toJson().toString());
    _setState();
  }

  void changeSrcLang(ChoreoLangModel lang) {
    _srcLang = lang;
    _setState();
  }

  void changeTrgLand(ChoreoLangModel lang) {
    _trgLang = lang;
    _setState();
  }

  void _setState() {
    choreoController.setState();
  }

  ChoreoLangModel? get srcLang {
    if (_srcLang != null) {
      return _srcLang;
    }
    _srcLang ??= LangList.byLangCode('en');
    return _srcLang;
  }

  ChoreoLangModel? get trgLang {
    if (_trgLang != null) {
      return _trgLang;
    }
    _trgLang ??= LangList.byLangCode('es');
    return _trgLang;
  }
}
