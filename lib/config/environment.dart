import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName {
    return ".env";
  }

  static String get baseAPI {
    return dotenv.env["BASE_API"] ?? 'BASE API not found';
  }

  static String get frontendURL {
    return dotenv.env["FRONTEND_URL"] ?? "Frontend URL NOT FOUND";
  }

  static String get synapsURL {
    return dotenv.env['SYNAPSE_URL'] ?? 'Synapse Url not found';
  }

  static String get homeServer {
    return dotenv.env["HOME_SERVER"] ?? 'Home Server not found';
  }

  static String get choreo_api {
    return dotenv.env['CHOREO_API'] ?? 'https://api.staging.pangea.chat';
  }

  static String get choreo_api_key {
    return dotenv.env['choreo_api_key'] ??
        'e6fa9fa97031ba0c852efe78457922f278a2fbc109752fe18e465337699e9873';
  }
}
