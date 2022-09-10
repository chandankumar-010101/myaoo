class ChoreoLangModel {
  String? flag;
  String? networkFlag;
  String? lang;
  String? langCode;
  String? country;
  //get flagWithPath => 'assets/newAssets/countryFlagsPngs/' + flag! + '.png';
  get flagWithPath => networkFlag;
  fromJson(json) {
    flag = json['flag'];
    lang = json['lang'];
    langCode = json['langCode'];
    country = json['country'];
    networkFlag = json['networkFlag'];
  }

  toJson() {
    return {
      'flag': flag,
      'lang': lang,
      'langCode': langCode,
      'country': country,
      'networkFlag': networkFlag
    };
  }


}
