import 'package:http/io_client.dart';
import 'package:http/http.dart';

class AuthenticateClient extends BaseClient {
  final Map<String, String> headers;

  final Client client;

  AuthenticateClient(this.headers, this.client);

  Future<StreamedResponse> send(BaseRequest request) {
    return client.send(request..headers.addAll(headers));
  }
}
