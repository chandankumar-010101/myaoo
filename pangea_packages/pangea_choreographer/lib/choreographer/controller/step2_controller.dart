import '../../pangea_choreographer.dart';
import '../Repo/chreo_repo.dart';
import '../constants/route_type.dart';
import '../models/initial_send_model.dart';
import '../models/receive_text_model.dart';
import '../models/removed_translation.dart';
import '../models/subsequent_model.dart';
import 'Loader_state.dart';

class Step2Controller extends LoaderState {
  ChoreoController controller;
  List<ReceiveTextModel> receivedTextList = [];
  //List<List<Continuances>>? availTranslations = [[]];
  List<Continuances>? selectedTranslations = [];

  // ignore: non_constant_identifier_names
  //List<String> _translationIds = [];
  bool _isTranslationDone = false;
  List<RemovedTranslation> removedTranslations = [];
  Step2Controller(this.controller);
  void initialize() {
    controller.state!.changeRoute(ChoreoRoute.STEP2);
    _firstTranslation();
  }

  String get translationId {
    return receivedTextList.last.translationId!;
  }

  List<Continuances> get availTranslations {
    if (receivedTextList.isEmpty) {
      return [];
    }
    if (receivedTextList.last.continuances!.isEmpty) {
      return [];
    }

    return receivedTextList.last.uniqueContinuances!;
  }

  void _firstTranslation() {
    controller.state!.stopEditing();
    startLoading();
    InitialTextModel initialTextModel = InitialTextModel()
      ..src_lang = controller.lang!.srcLang!.langCode
      ..text = controller.textController!.text
      ..tgt_lang = controller.lang!.trgLang!.langCode
      ..room_id = controller.state!.roomId
      ..class_id = controller.state!.classId
      ..user_id = controller.state!.userId;
    ChoreoRepo.firstCall(initialTextModel).then((res) {
      _addPayloadId(res);
      stopLoading();

      try {
        receivedTextList.add(res);
        //availTranslations!.add(res.uniqueContinuances!);
      } catch (err) {
        controller.errorService!.showError('Please try again later');

        print(err);
        //availTranslations = [[]];
      }
      _setState();
    }).catchError((err) {
      controller.errorService!.showError('Please try again later');
      print(err);
      stopLoading();
      _setState();
    });
    controller.dismissKeyboard();
    _setState();
  }

  void _loadSubSequentTranslation() {
    startLoading();
    SubsequentTextModel subSeqText = SubsequentTextModel()
      ..user_id = controller.state!.userId
      ..next_word_index = selectedTranslations!.last.index
      ..room_id = controller.state!.roomId
      ..translation_id = translationId;
    ChoreoRepo.subsequentCall(subSeqText).then((res) {
      stopLoading();
      _addPayloadId(res);

      _isTranslationDone = res.isFinal;

      receivedTextList.add(res);

      _setState();
    }).catchError((err) {
      controller.errorService!.showError('please try again');
      print(err);
    });
    _setState();
  }

  bool get isTranslationDone => _isTranslationDone;
  void selectTranslation(Continuances continuance) {
    selectedTranslations?.add(continuance);
    _loadSubSequentTranslation();
  }

  void _setState() {
    controller.setState();
  }

  void removeLastSelected() {
    if (!isLoading) {
      controller.errorService!.resetError();

      if (selectedTranslations!.length > 0 && receivedTextList.isNotEmpty) {
        receivedTextList!.removeLast();
        // if (!_isTranslationDone) {
        //   receivedTextList!.removeLast();
        // }
        _isTranslationDone = false;

        removedTranslations.add(RemovedTranslation()
          ..lastSelectedContinuance = selectedTranslations!
          ..removedContinuance = selectedTranslations?.removeLast());
        _setState();
      }
    }
  }

  void _addPayloadId(ReceiveTextModel res) {
    if (res.payload_id != null) {
      controller.state!.payLoadIds.add(res.payload_id!);
    }
  }

  void clearState() {
    _isTranslationDone = false;
    receivedTextList = [];
    selectedTranslations = [];
  }
}
