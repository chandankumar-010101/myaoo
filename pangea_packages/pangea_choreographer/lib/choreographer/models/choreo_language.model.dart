class ChoreoLangModel {
  String? flag;
  String? lang;
  String? langCode;
  String? country;
  get flagWithPath => 'assets/newAssets/countryFlagsPngs/' + flag! + '.png';
  fromJson(json) {
    flag = json['flag'];
    lang = json['lang'];
    langCode = json['langCode'];
    country = json['country'];
  }

  toJson() {
    return {
      'flag': flag,
      'lang': lang,
      'langCode': langCode,
      'country': country
    };
  }
}
