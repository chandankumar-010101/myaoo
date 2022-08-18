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
  ReceiveTextModel? translations;
  List<List<Continuances>>? availTranslations = [[]];
  List<Continuances>? selectedTranslations = [];

  // ignore: non_constant_identifier_names
  int? _translation_id;
  bool _isTranslationDone = false;
  List<RemovedTranslation> removedTranslations = [];
  Step2Controller(this.controller);
  void initialize() {
    controller.state!.changeRoute(ChoreoRoute.STEP2);
    _firstTranslation();
  }

  void _firstTranslation() {
    controller.state!.stopEditing();
    startLoading();
    InitialTextModel initialTextModel = InitialTextModel()
      ..src_lang = controller.lang!.srcLang!.langCode
      ..text = controller.textController!.text
      ..tgt_lang = controller.lang!.trgLang!.langCode
      ..user_id = controller.state!.userId;
    ChoreoRepo.firstCall(initialTextModel).then((res) {
      stopLoading();

      _translation_id = res.translationId;

      try {
        availTranslations!.add(res.continuances!);
      } catch (err) {
        controller.errorService!.showError('Please try again later');

        print(err);
        availTranslations = [[]];
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
      ..translation_id = _translation_id;
    ChoreoRepo.subsequentCall(subSeqText).then((res) {
      stopLoading();
      _isTranslationDone = res.isFinal;
      if (!res.isFinal) {
        availTranslations!.add(res.continuances!);
      }

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

      if (selectedTranslations!.length > 0 &&
          availTranslations!.last.isNotEmpty) {
        if (!_isTranslationDone) {
          availTranslations!.removeLast();
        }
        _isTranslationDone = false;

        removedTranslations.add(RemovedTranslation()
          ..lastSelectedContinuance = selectedTranslations!
          ..removedContinuance = selectedTranslations?.removeLast());
        _setState();
      }
    }
  }

  String? get translatedText {
    String? text = '';
    selectedTranslations!.forEach((element) {
      text = text! + element.text! + ' ';
    });
    text!.trim();

    return text;
  }

  void clearState() {
    _isTranslationDone = false;
    availTranslations = [[]];
    selectedTranslations = [];
  }
}
