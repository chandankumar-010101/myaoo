import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName {
    return ".env";
  }

  static String get baseAPI {
    return dotenv.env["BASE_API"] ?? 'BASE API not found';
  }

  static String get basePath {
    return dotenv.env["BASE_URL"] ?? 'BASE URL not found';
  }

  static String get frontendURL {
    return dotenv.env["FRONTEND_URL"] ?? "Frontend URL NOT FOUND";
  }

  static String get synapsURL {
    return dotenv.env['SYNAPSE_URL'] ?? 'Synapse Url not found';
  }
}
