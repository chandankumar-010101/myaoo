import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pangeachat_choregrapher/choreographer/constants/lang_list.dart';
import 'package:pangeachat_choregrapher/choreographer/controller/error_service.dart';
import 'package:pangeachat_choregrapher/choreographer/controller/step1_controller.dart';
import 'package:pangeachat_choregrapher/choreographer/controller/step2_controller.dart';

import 'package:pangeachat_choregrapher/choreographer/models/choreo_init_call.model.dart';
import 'package:pangeachat_choregrapher/choreographer/models/choreo_language.model.dart';

import '../constants/route_type.dart';
import '../models/choreo_init_response.model.dart';
import '../models/initial_send_model.dart';
import '../models/it_countries.dart';
import '../models/receive_text_model.dart';
import '../Repo/chreo_repo.dart';
import '../models/removed_translation.dart';
import '../models/subsequent_model.dart';
import 'lang_controller.dart';
import 'state_controller.dart';

class ChoreoController {
  ChoreoState? state;
  LangController? lang;
  Step1Controller? step1;
  Step2Controller? step2;

  ErrorService? errorService;
  final StreamController stateListener = StreamController();
  TextEditingController? textController;

  Function? _sendCallback;

  addRefInObjects() {
    state = ChoreoState(this);
    lang = LangController(this);
    step2 = Step2Controller(this);
    errorService = ErrorService(this);
    step1 = Step1Controller(this);
  }

  String get originalText => textController!.value.text;
  setTextEditingController(TextEditingController textEditingController) {
    textController = textEditingController;
    _addClearOnEditListener();
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

  setSendCallback(Function setCallBack) {
    this._sendCallback = setCallBack;
  }

  void send() {
    this.textController!.value = TextEditingValue(text: step2!.translatedText!);
    _sendCallback!();
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
    this.textController!.addListener(() {
      print('Text Event');
      if (!state!.isEditing) {
        clearState();
      }
    });
  }
}
