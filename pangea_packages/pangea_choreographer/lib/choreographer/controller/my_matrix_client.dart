import 'package:matrix/matrix.dart';
import 'package:pangea_choreographer/choreographer/controller/choreo_controller.dart';
import 'package:pangea_choreographer/choreographer/utils/platform_name.dart';

class MyMatrixClient {
  int _transactionCounter = 0;
  String clientName = 'Pangea Chat - ${MyPlatformName.getPlatformWithModeName}';
  Client? _matrixClient;
  ChoreoController controller;
  MyMatrixClient(this.controller);

  void setClientInstance(Client client) {
    _matrixClient = client;
  }

  String get userId {
    print('user id' + _matrixClient!.userID!);
    return _matrixClient!.userID!;
  }

  String generateUniqueTransactionId() {
    if (_matrixClient == null) {
      _transactionCounter++;
      return '$clientName-$_transactionCounter-${DateTime.now().millisecondsSinceEpoch}';
    }
    return _matrixClient!.generateUniqueTransactionId();
  }
}
