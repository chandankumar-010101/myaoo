class ApiUrls {
  static const String base_url = "https://staging.api.pangea.chat/api/v1";
  static const String get_all_flags = base_url + "/language/list";
  static const String create_user = base_url +"/account/create";
  static const String validate_user =
      base_url + "/account/validate_user?pangea_user_id=";
  static const String user_details =
      base_url + "/account/get_user_access_token?pangea_user_id=";

}

