class Urls {
  static String apiVersion = '';
  static String baseUrl = 'https://api.pangea.chat/' + Urls.apiVersion;

  static String firstStep = Urls.choreo + '/it_initialstep';
  static String subseqStep = Urls.choreo + '/it_step';
  static String choreo = 'choreo';
  static String messageService = Urls.choreo + '/message_service';
  static String langList = 'language/list';
}
