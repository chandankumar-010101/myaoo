import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'it_countries.dart';
import 'models.dart';

class ItController {
  ReceiveTextModel? translations;
  List<List<Continuances>>? availTranslations = [[]];
  List<Continuances>? selectedTranslations = [];
  String? _orignalText;
  bool _isSrcTxtSent = false;
  ItCountryModel? srcLang;
  ItCountryModel? trgLang;
  bool isLoading = false;
  final StreamController stateListener = StreamController();
  TextEditingController? _textController;
  bool? isMenuOpen = false;
  Function? _sendCallback;
  void setOriginalText(String? text) {
    this._orignalText = text;
  }

  List<ItCountryModel> itLangList = [];
  setTextEditingController(TextEditingController textEditingController) {
    _textController = textEditingController;
  }

  openCloseDropDown() {
    this.isMenuOpen = !this.isMenuOpen!;
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
    _isSrcTxtSent = false;
    availTranslations = [[]];
    selectedTranslations = [];
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
    if (this._isSrcTxtSent) {
      _isSrcTxtSent = false;
      FocusManager.instance.primaryFocus?.previousFocus();
      _setState();
    } else {
      _translate();
    }
  }

  void _translate() {
    _isSrcTxtSent = true;
    isLoading = true;
    Future.delayed(Duration(seconds: 1), () {
      this.availTranslations!.add([
        Continuances()
          ..probability = 0.3
          ..text = 'El ritmo',
        Continuances()
          ..probability = 0.6
          ..text = 'del',
        Continuances()
          ..probability = 0.8
          ..text = 'esloveno'
      ]);
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

  void getNewTranslation() {}
  void selectTranslation(Continuances continuance) {
    selectedTranslations?.add(continuance);
    isLoading = true;
    Future.delayed(Duration(seconds: 1), () {
      this.availTranslations!.add([
        Continuances()
          ..probability = 0.7
          ..text = 'se quedó a',
        Continuances()
          ..probability = 0.6
          ..text = 'La rivalidad tiene',
        Continuances()
          ..probability = 0.8
          ..text = 'Jalabert',
        Continuances()
          ..probability = 0.8
          ..text = 'No es amistad'
      ]);
      isLoading = false;
      _setState();
    });
    _setState();
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

  bool? get isInputFeildEnabled => !_isSrcTxtSent;

  get srcButtonTxt => _isSrcTxtSent ? 'Edit' : 'Send';
}
