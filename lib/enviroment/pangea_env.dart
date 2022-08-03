import 'package:flutter_dotenv/flutter_dotenv.dart';

class PengeaEnv {
  static String base_url = dotenv.get('baseUrl');
  static String environment = dotenv.get('environment');
}
