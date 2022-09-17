import 'package:pangeachat/config/environment.dart';

class ChoreoUtil {
  static Map<String, String>? get headers {
    return {
      "Content-Type": "application/json",
      "Accept": "application/json",
      'api_key': Environment.choreo_api_key
    };
  }
}