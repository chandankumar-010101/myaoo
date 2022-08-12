
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pangeachat/utils/api/user_details_api.dart';
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
