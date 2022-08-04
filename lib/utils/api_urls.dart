import '../config/environment.dart';

class ApiUrls {

  static String get_all_flags = Environment.baseAPI + "/language/list";
  static String create_user = Environment.baseAPI + "/account/create";
  static String validate_user =
      Environment.baseAPI + "/account/validate_user?pangea_user_id=";
  static String user_details =
      Environment.baseAPI + "/account/get_user_access_token?pangea_user_id=";
}
