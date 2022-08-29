
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
class Environment{

  static String get fileName{
    if(kReleaseMode){
      print("stagging");
      return ".env.staging";
    }
    return ".env.staging";
  }
  static String get baseAPI{
    return dotenv.env["BASE_API"]?? 'BASE API not found';
  }
  static String get basePath{
    return dotenv.env["BASE_URL"]?? 'BASE URL not found';
  }

  static String get homeServer{
    return dotenv.env["HOME_SERVER"]?? 'Home Server not found';
  }




}
