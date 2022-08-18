import '../../pangea_choreographer.dart';

class ErrorService {
  bool _isError = false;
  String _message = '';
  ChoreoController controller;
  ErrorService(this.controller);
  String get message => _message;
  showError(String? message) {
    _isError = true;
    _message = message ?? '';
    Future.delayed(Duration(seconds: 5), () {
      _isError = false;
      _message = '';
      _setState();
    });
    _setState();
  }

  showErrorAndLock(String? message) {
    _isError = true;
    _message = message ?? '';

    _setState();
  }

  showErrorAndReset(String? message, {Duration? duration}) {
    duration = duration ?? const Duration(seconds: 5);
    _isError = true;
    _message = message ?? '';
    Future.delayed(duration, () {
      controller.clearState();
    });
    _setState();
  }

  bool get isError => _isError;
  resetError() {
    _isError = false;
    _setState();
  }

  void _setState() {
    controller.setState();
  }

  void clearState() {
    _message = '';
    _isError = false;
  }
}
