import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pangeachat/utils/api/user_details_api.dart';

class JwtTokenApi {
  jwtToken () async{
    final box=GetStorage();
    String accessToken="${box.read("access")}";

    if(accessToken!="null"){
      final String token ="${box.read("access")}";

      Map<String, dynamic> decodedToken = JwtDecoder.decode(token);

      print(decodedToken);

      bool isTokenExpired = JwtDecoder.isExpired(token);

      print(isTokenExpired);

      print("access  ${box.read("access")}");

      if (isTokenExpired) {
        // The user should authenticate
        print("object");
       await UserDetails.userDetails();

      }

    }
    else{

    }


  }
}