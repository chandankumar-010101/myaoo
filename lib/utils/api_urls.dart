import '../enviroment/pangea_env.dart';

class ApiUrls {
  static String base_url = PengeaEnv.base_url;
  static String get_all_flags = base_url + "/language/list";
  static String create_user = base_url + "/account/create";
  static String validate_user =
      base_url + "/account/validate_user?pangea_user_id=";
  static String user_details =
      base_url + "/account/get_user_access_token?pangea_user_id=";
}
