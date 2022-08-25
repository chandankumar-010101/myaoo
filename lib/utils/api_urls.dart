import '../config/environment.dart';

class ApiUrls {
  static String get_all_flags = Environment.baseAPI + "/api/v1/language/list";
  static String create_user = Environment.baseAPI + "/api/v1/account/create";

  static String validate_user =
      Environment.baseAPI + "/api/v1/account/validate_user?pangea_user_id=";
  static String user_details =
      Environment.baseAPI + "/api/v1/account/get_user_access_token?pangea_user_id=";

  static String class_list = Environment.baseAPI + "/api/v1/class/list";

  static String user_ages =
      Environment.baseAPI + "/api/v1/account/get_update_dob?pangea_user_id=";
  static String update_user_ages =
      Environment.baseAPI + "/api/v1/account/get_update_dob";
  static String create_class = Environment.baseAPI + "/api/v1/class/create";
  static String addClassPermissions =
      Environment.baseAPI + "/api/v1/class/permissions/add";

  static String getClassDetails = Environment.baseAPI + "/api/v1/class/detail/";

  static String updateClassPermissions = Environment.baseAPI+"/api/v1/class/permissions/update/";
  static String updateClassDetail = Environment.baseAPI+"/api/v1/class/update/";
  static String deleteClass = Environment.baseAPI+"/api/v1/class/detail/";
}
