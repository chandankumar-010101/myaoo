import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:matrix/matrix.dart';
import 'package:pangea_choreographer/choreographer/constants/route_type.dart';
import 'package:pangea_choreographer/choreographer/controller/error_service.dart';
import 'package:pangea_choreographer/choreographer/controller/ml_controller.dart';

import 'lang_controller.dart';
import 'my_matrix_client.dart';
import 'state_controller.dart';
import 'step1_controller.dart';
import 'step2_controller.dart';

class ChoreoController {
  ChoreoState? state;
  LangController? lang;
  Step1Controller? step1;
  Step2Controller? step2;

  ErrorService? errorService;
  MlController? mlController;
  MyMatrixClient? myMatrixClient;
  final StreamController stateListener = StreamController();
  TextEditingController? textController;

  Function({String txid})? _sendCallback;

  addRefInObjects() {
    state = ChoreoState(this);
    lang = LangController(this);
    step2 = Step2Controller(this);
    errorService = ErrorService(this);
    step1 = Step1Controller(this);
    mlController = MlController(this);
    myMatrixClient = MyMatrixClient(this);
  }

  String get originalText => state!.originalText;
  setTextEditingController(TextEditingController textEditingController) {
    textController = textEditingController;
    _addClearOnEditListener();
  }

  setMatrixClient(Client matrixClient) {
    myMatrixClient!.setClientInstance(matrixClient);
  }

  bool get isOpen => state!.isOpen;
  openIt() {
    this.state!.openBar();

    setState();
  }

  dispose() {
    stateListener.close();
  }

  setState() {
    stateListener.add(0);
  }

  setSendCallback(Function({String txid}) setCallBack) {
    this._sendCallback = setCallBack;
  }

  String? get translatedText {
    if (state!.currentRoute == ChoreoRoute.INITAL_LOADING ||
        state!.currentRoute == ChoreoRoute.SEND ||
        state!.currentRoute == ChoreoRoute.STEP1) {
      return textController!.text;
    }
    if (step2!.receivedTextList.isEmpty) {
      return '';
    }

    return step2!.receivedTextList.last.translation;
  }

  void send() {
    String txId = myMatrixClient!.generateUniqueTransactionId();
    mlController!.sendPayloads(translatedText!, txId);
    this.textController!.value = TextEditingValue(text: translatedText!);

    _sendCallback!(txid: txId);
    clearState();
  }

  void clearState() {
    state!.clearState();
    step2!.clearState();

    errorService!.clearState();

    setState();
  }

  void srcButtonAction() {
    if (!state!.isEditing) {
      state!.startEditing();
      FocusManager.instance.primaryFocus?.previousFocus();
      setState();
    } else {
      _firstProcess();
    }
  }

  setSrcLang(String name) {
    lang?.setSrcLangByName(name);
  }

  setTrgLang(String name) {
    lang?.setTrgLangByName(name);
  }

  void _firstProcess() async {}

  ChoreoController() {
    initialize();
  }

  void initialize() {
    this.addRefInObjects();
  }

  dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  get srcButtonTxt => 'Send';
  setRoomId(String? roomId) {
    this.state!.setRoomId(roomId);
  }

  void _addClearOnEditListener() {
    if (!textController!.hasListeners) {
      textController!.removeListener(_listernerFunction);
    }
    this.textController!.addListener(_listernerFunction);
  }

  _listernerFunction() {
    if (this.textController!.value.text != originalText) {
      print(originalText);
      print(this.textController!.value.text);
      print('Text Event');
      if (!state!.isEditing) {
        clearState();
      }
    } else {
      print('There is no change in value');
    }
  }
}
