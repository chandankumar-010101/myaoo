
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment{
  static String get fileName{
    // if(kReleaseMode){
    //   return ".env.stagging";
    // }
      return ".env.development";
  }
  static String get baseAPI{
    return dotenv.env["BASE_API"]?? 'BASE API not found';
  }
  static String get basePath{
    return dotenv.env["BASE_URL"]?? 'BASE URL not found';
  }

}
