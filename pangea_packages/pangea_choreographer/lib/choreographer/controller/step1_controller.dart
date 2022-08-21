import 'package:flutter/cupertino.dart';
import 'package:pangea_choreographer/choreographer/constants/lang_list.dart';

import '../../pangea_choreographer.dart';
import '../Repo/chreo_repo.dart';
import '../constants/route_type.dart';
import '../models/choreo_init_call.model.dart';
import '../models/choreo_init_response.model.dart';
import 'Loader_state.dart';

class Step1Controller extends LoaderState {
  ChoreoController controller;
  Step1Controller(this.controller);
  ChoreoResponseModel? _choreoResponse;

  void initialize() async {
    controller.state!.changeRoute(ChoreoRoute.INITAL_LOADING);
    try {
      controller.state!.stopEditing();
      startLoading();
      ChoreoInitCallModel initCall = ChoreoInitCallModel()
        ..l1_lang = controller.lang!.srcLang!.langCode
        ..l2_lang = controller.lang!.trgLang!.langCode
        ..user_id = controller.state!.userId
        ..room_id = controller.state!.roomId
        ..text = controller.originalText;
      _choreoResponse = await ChoreoRepo.chereoInit(initCall);
      if (_choreoResponse!.payload_id != null) {
        controller.state!.payLoadIds.add(_choreoResponse!.payload_id!);
      }
      if (_choreoResponse!.route == ChoreoRoute.SEND) {
        controller.send();
      } else {
        controller.lang!
            .changeSrcLang(LangList.byLangCode(_choreoResponse!.detectedLang!));
        controller.state!.changeRoute(ChoreoRoute.STEP1);
      }
    } catch (err) {
      print('Error in initial');
      stopLoading();
      controller.state!.changeRoute(ChoreoRoute.STEP1_ERROR);
      controller.errorService!.showErrorAndReset(
          'Unable to process at the moment, please try again');
    }
    stopLoading();
  }

  void beginStep2() {
    controller.step2!.initialize();
  }

  String get feedbackText {
    if (_choreoResponse == null) {
      return '';
    }
    if (_choreoResponse!.feedbackMessage == null) {
      return '';
    }
    return _choreoResponse!.feedbackMessage!;
  }

  String beginActionText(BuildContext context) {
    if (_choreoResponse!.route! == ChoreoRoute.TRANSLATE) {
      return 'Help me translate';
    }
    return 'Help me rewrite ';
  }

  List<Tokens>? get tokens {
    if (_choreoResponse!.grammarData == null) {
      return [Tokens()..token = ''];
    }
    if (_choreoResponse!.grammarData!.tokens!.length < 6) {
      return _choreoResponse!.grammarData!.tokens;
    }
    List<Tokens> newList = [];
    for (int i = 0; i < 6; i++) {
      newList.add(_choreoResponse!.grammarData!.tokens![i]);
    }
    return newList;
  }

  void _setState() {
    controller.setState();
  }
}
