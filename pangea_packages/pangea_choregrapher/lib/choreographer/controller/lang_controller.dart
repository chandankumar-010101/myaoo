import 'package:pangeachat_choregrapher/choreographer/controller/choreo_controller.dart';

import '../constants/lang_list.dart';
import '../models/choreo_language.model.dart';

class LangController {
  List<ChoreoLangModel> langList = LangList.all;
  ChoreoController choreoController;
  LangController(this.choreoController);
  ChoreoLangModel? _srcLang;
  ChoreoLangModel? _trgLang;
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
    _srcLang ??= LangList.byLangCode('en');
    return _srcLang;
  }

  ChoreoLangModel? get trgLang {
    _trgLang ??= LangList.byLangCode('es');
    return _trgLang;
  }
}
