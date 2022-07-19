import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pangeachat/pages/chat/IT_bar/models/initial_send_model.dart';
import 'package:pangeachat/pages/chat/IT_bar/models/subsequent_model.dart';

import 'it_countries.dart';
import 'models/receive_text_model.dart';
import './Repo/it_repo.dart';

class ItController {
  ReceiveTextModel? translations;
  List<List<Continuances>>? availTranslations = [[]];
  List<Continuances>? selectedTranslations = [];
  bool isiTOpen = false;
  bool _isEditing = true;
  ItCountryModel? srcLang;
  ItCountryModel? trgLang;
  bool isLoading = false;
  final StreamController stateListener = StreamController();
  TextEditingController? _textController;

  Function? _sendCallback;
  int? _translation_id;

  List<ItCountryModel> itLangList = [];
  setTextEditingController(TextEditingController textEditingController) {
    _textController = textEditingController;
    _addClearOnEditListener();
  }

  openIt() {
    this.isiTOpen = true;
    _isEditing = false;
    _firstTranslation();
    _setState();
  }

  ItController() {
    _populateCountires();
  }
  dispose() {
    stateListener.close();
  }

  _setState() {
    stateListener.add(0);
  }

  setSendCallback(Function setCallBack) {
    this._sendCallback = setCallBack;
  }

  void send() {
    this._textController!.value = TextEditingValue(text: translatedText!);
    _sendCallback!();
    _clearState();
  }

  void _clearState() {
    _isEditing = true;
    availTranslations = [[]];
    selectedTranslations = [];
    isiTOpen = false;
    _setState();
  }

  void _populateCountires() {
    ITLanguages.countries.forEach((key, value) {
      if (value['languages'].length > 0) {
        itLangList.add(ItCountryModel()
          ..flag = key.toLowerCase()
          ..lang = ITLanguages.languages[value['languages'][0]]!['name']
          ..langCode = value['languages'][0]
          ..name = value['name']);
      }
      ;
      if (itLangList.last.lang == 'English') {
        srcLang = itLangList.last;
      }
      if (itLangList.last.lang == 'Spanish') {
        trgLang = itLangList.last;
      }
    });
  }

  void srcButtonAction() {
    if (!this._isEditing) {
      _isEditing = true;
      FocusManager.instance.primaryFocus?.previousFocus();
      _setState();
    } else {
      _firstTranslation();
    }
  }

  void _firstTranslation() {
    _isEditing = false;
    isLoading = true;
    InitialTextModel initialTextModel = InitialTextModel()
      ..src_lang = srcLang!.langCode
      ..text = _textController!.text
      ..tgt_lang = trgLang!.langCode
      ..user_id = _userId;
    ItRepo.firstCall(initialTextModel).then((res) {
      isLoading = false;

      _translation_id = res.translationId;

      try {
        availTranslations!.add(res.continuances!);
      } catch (err) {
        availTranslations = [[]];
      }
      _setState();
    }).catchError((err) {
      isLoading = false;
      _setState();
    });
    _dismissKeyboard();
    _setState();
  }

  void changeSrcLang(ItCountryModel lang) {
    srcLang = lang;
    _setState();
  }

  void changeTrgLand(ItCountryModel lang) {
    trgLang = lang;
    _setState();
  }

  void _loadSubSequentTranslation() {
    isLoading = true;
    SubsequentTextModel subSeqText = SubsequentTextModel()
      ..user_id = _userId
      ..next_word_index = selectedTranslations!.last.index
      ..translation_id = _translation_id;
    ItRepo.subsequentCall(subSeqText).then((res) {
      isLoading = false;

      availTranslations!.add(res.continuances!);
      _setState();
    }).catchError((err) {});
    _setState();
  }

  void selectTranslation(Continuances continuance) {
    selectedTranslations?.add(continuance);
    _loadSubSequentTranslation();
  }

  void removeLastSelected() {
    availTranslations!.removeLast();
    selectedTranslations?.removeLast();
    _setState();
  }

  _dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  String? get translatedText {
    String? text = '';
    selectedTranslations!.forEach((element) {
      text = text! + element.text!;
    });

    return text;
  }

  get _userId => 0;
  get srcButtonTxt => 'Send';

  void _addClearOnEditListener() {
    this._textController!.addListener(() {
      if (!_isEditing) {
        _clearState();
      }
    });
  }
}
