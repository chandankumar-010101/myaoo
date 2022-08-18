class LoaderState {
  bool _isLoading = false;
  String loadingMessage = '';
  bool get isLoading => _isLoading;

  void startLoading({String? loadingMessage}) {
    this.loadingMessage = loadingMessage ?? '';
    _isLoading = true;
  }

  void stopLoading() {
    _isLoading = false;
  }
}
