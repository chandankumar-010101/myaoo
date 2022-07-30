import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'models/initial_send_model.dart';
import 'models/it_countries.dart';
import 'models/receive_text_model.dart';
import './Repo/it_repo.dart';
import 'models/removed_translation.dart';
import 'models/subsequent_model.dart';

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
  List<RemovedTranslation> removedTranslations = [];
  Function? _sendCallback;
  int? _translation_id;
  bool isTranslationDone = false;
  List<ItCountryModel> itLangList = [];
  bool isError = false;
  setTextEditingController(TextEditingController textEditingController) {
    _textController = textEditingController;
    _addClearOnEditListener();
  }

  openIt() {
    Future.delayed(Duration(microseconds: 100), () {
      isiTOpen = true;
      _isEditing = false;
    });
    _firstTranslation();
    print('Opening IT');
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
    isError = false;
    isTranslationDone = false;
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
        _showError();
        print(err);
        availTranslations = [[]];
      }
      _setState();
    }).catchError((err) {
      _showError();
      print(err);
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
      isTranslationDone = res.isFinal;
      if (!res.isFinal) {
        availTranslations!.add(res.continuances!);
      }

      _setState();
    }).catchError((err) {
      _showError();
      print(err);
    });
    _setState();
  }

  void selectTranslation(Continuances continuance) {
    selectedTranslations?.add(continuance);
    _loadSubSequentTranslation();
  }

  void removeLastSelected() {
    if (!isLoading) {
      isError = false;
      if (selectedTranslations!.length > 0 &&
          availTranslations!.last.isNotEmpty) {
        if (!isTranslationDone) {
          availTranslations!.removeLast();
        }
        isTranslationDone = false;

        removedTranslations.add(RemovedTranslation()
          ..lastSelectedContinuance = selectedTranslations!
          ..removedContinuance = selectedTranslations?.removeLast());
        _setState();
      }
    }
  }

  _dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  String? get translatedText {
    String? text = '';
    selectedTranslations!.forEach((element) {
      text = text! + element.text! + ' ';
    });
    text!.trim();

    return text;
  }

  get _userId => 0;
  get srcButtonTxt => 'Send';

  void _addClearOnEditListener() {
    this._textController!.addListener(() {
      print('Text Event');
      if (!_isEditing) {
        _clearState();
      }
    });
  }

  void _showError() {
    isLoading = false;
    isError = true;
    _setState();
    Future.delayed(Duration(seconds: 5), () {
      isError = false;
    });
  }

  closeIt() {
    if (!_isEditing) {
      _clearState();
    }
  }
}
