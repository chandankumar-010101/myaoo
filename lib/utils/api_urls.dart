import '../config/environment.dart';

class ApiUrls {
  static String get_all_flags = Environment.baseAPI + "/language/list";
  static String create_user = Environment.baseAPI + "/account/create";

  static String validate_user =
      Environment.baseAPI + "/account/validate_user?pangea_user_id=";
  static String user_details =
      Environment.baseAPI + "/account/get_user_access_token?pangea_user_id=";

  static String class_list = Environment.baseAPI + "/class/list";

  static String class_search = Environment.baseAPI + "/class/search";
  static String user_ages =
      Environment.baseAPI + "/account/get_update_dob?pangea_user_id=";
  static String update_user_ages =
      Environment.baseAPI + "/account/get_update_dob";
  static String create_class = Environment.baseAPI + "/class/create";
  static String addClassPermissions =
      Environment.baseAPI + "/class/permissions/add";

  static String getClassDetails = Environment.baseAPI + "/class/detail/";

  static String updateClassPermissions =
      Environment.baseAPI + "/class/permissions/update/";
  static String updateClassDetail = Environment.baseAPI + "/class/update/";
  static String deleteClass = Environment.baseAPI + "/class/detail/";
  static String exchangeClassValidate =
      Environment.baseAPI + "/class/validate_exchange";
  static String exchangeClass = Environment.baseAPI + "/class/class_exchange";
  // static String enrollClassValidate = Environment.baseAPI+"/class/validate_enroll";
  static String enrollClass = Environment.baseAPI + "/class/class_enroll";
  static String teacherAllClass =
      Environment.baseAPI + "/class/get_class_by_teacher";

  static String join_code =
      Environment.baseAPI + "/class/class_by_code?class_code=";
  static String send_email_link = Environment.baseAPI + "/class/invite/email";
  static String exchangeAcceptRequest =
      Environment.baseAPI + "/class/exchange/accept";
  static String reportUser = Environment.baseAPI + "/class/report/user";

  ///   ---------------------- Exchange --------------------------------------
  static String isExchange =
      Environment.baseAPI + "/class/get_exchange?exchange_pangea_id=";
  static String classParticipants =
      Environment.baseAPI + "/class/get_room_members?pangea_class_id=";
  static String exchangeParticipantsStore =
      Environment.baseAPI + "/class/exchange/participant";
  static String exchangeInfoStore =
      Environment.baseAPI + "/class/exchange/create";
  static String fetchExchangeInfo =
      Environment.baseAPI + "/class/exchange/data?exchange_pangea_id=";

  ///==-------------------------Harsh Code ------------------------------------
  static String request_email = Environment.baseAPI + "/class/report/user";

  ///---------------------------------make admin -------------------------
  static String makeAdminInExchange =
      Environment.baseAPI + "/class/exchange/admin/create";

  ///-------------------------------- class analytics --------------------------
  static String classAnalytics =
      Environment.choreo_api + '/choreo/class_analytics/';
}
