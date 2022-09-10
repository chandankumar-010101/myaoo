import '../models/choreo_language.model.dart';

class _LangList {
  static ChoreoLangModel byLangCode(String langCode) {
    ChoreoLangModel? lang;
    _LangList.all.forEach((element) {
      if (element.langCode?.toLowerCase() == langCode.trim().toLowerCase()) {
        lang = element;
      }
    });
    return lang!;
  }

  static ChoreoLangModel byLangName(String name) {
    ChoreoLangModel? lang;
    _LangList.all.forEach((element) {
      if (element.lang?.toLowerCase() == name.trim().toLowerCase()) {
        lang = element;
      }
    });
    return lang!;
  }

  static List<ChoreoLangModel> get all {
    return [
      {'flag': 'ad', 'lang': 'Catalan', 'langCode': 'ca', 'country': 'Andorra'},
      {
        'flag': 'ae',
        'lang': 'Arabic',
        'langCode': 'ar',
        'country': 'United Arab Emirates'
      },
      {
        'flag': 'af',
        'lang': 'Pashto',
        'langCode': 'ps',
        'country': 'Afghanistan'
      },
      {
        'flag': 'ag',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Antigua and Barbuda'
      },
      {
        'flag': 'ai',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Anguilla'
      },
      {
        'flag': 'al',
        'lang': 'Albanian',
        'langCode': 'sq',
        'country': 'Albania'
      },
      {
        'flag': 'am',
        'lang': 'Armenian',
        'langCode': 'hy',
        'country': 'Armenia'
      },
      {
        'flag': 'ao',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'Angola'
      },
      {
        'flag': 'ar',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Argentina'
      },
      {
        'flag': 'as',
        'lang': 'English',
        'langCode': 'en',
        'country': 'American Samoa'
      },
      {'flag': 'at', 'lang': 'German', 'langCode': 'de', 'country': 'Austria'},
      {
        'flag': 'au',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Australia'
      },
      {'flag': 'aw', 'lang': 'Dutch', 'langCode': 'nl', 'country': 'Aruba'},
      {'flag': 'ax', 'lang': 'Swedish', 'langCode': 'sv', 'country': 'Åland'},
      {
        'flag': 'az',
        'lang': 'Azerbaijani',
        'langCode': 'az',
        'country': 'Azerbaijan'
      },
      {
        'flag': 'ba',
        'lang': 'Bosnian',
        'langCode': 'bs',
        'country': 'Bosnia and Herzegovina'
      },
      {
        'flag': 'bb',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Barbados'
      },
      {
        'flag': 'bd',
        'lang': 'Bengali',
        'langCode': 'bn',
        'country': 'Bangladesh'
      },
      {'flag': 'be', 'lang': 'Dutch', 'langCode': 'nl', 'country': 'Belgium'},
      {
        'flag': 'bf',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Burkina Faso'
      },
      {
        'flag': 'bg',
        'lang': 'Bulgarian',
        'langCode': 'bg',
        'country': 'Bulgaria'
      },
      {'flag': 'bh', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Bahrain'},
      {'flag': 'bi', 'lang': 'French', 'langCode': 'fr', 'country': 'Burundi'},
      {'flag': 'bj', 'lang': 'French', 'langCode': 'fr', 'country': 'Benin'},
      {
        'flag': 'bl',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Saint Barthélemy'
      },
      {'flag': 'bm', 'lang': 'English', 'langCode': 'en', 'country': 'Bermuda'},
      {'flag': 'bn', 'lang': 'Malay', 'langCode': 'ms', 'country': 'Brunei'},
      {'flag': 'bo', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Bolivia'},
      {'flag': 'bq', 'lang': 'Dutch', 'langCode': 'nl', 'country': 'Bonaire'},
      {
        'flag': 'br',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'Brazil'
      },
      {'flag': 'bs', 'lang': 'English', 'langCode': 'en', 'country': 'Bahamas'},
      {'flag': 'bt', 'lang': 'Dzongkha', 'langCode': 'dz', 'country': 'Bhutan'},
      {
        'flag': 'bv',
        'lang': 'Norwegian',
        'langCode': 'no',
        'country': 'Bouvet Island'
      },
      {
        'flag': 'bw',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Botswana'
      },
      {
        'flag': 'by',
        'lang': 'Belarusian',
        'langCode': 'be',
        'country': 'Belarus'
      },
      {'flag': 'bz', 'lang': 'English', 'langCode': 'en', 'country': 'Belize'},
      {'flag': 'ca', 'lang': 'English', 'langCode': 'en', 'country': 'Canada'},
      {
        'flag': 'cc',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Cocos [Keeling] Islands'
      },
      {
        'flag': 'cd',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Democratic Republic of the Congo'
      },
      {
        'flag': 'cf',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Central African Republic'
      },
      {
        'flag': 'cg',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Republic of the Congo'
      },
      {
        'flag': 'ch',
        'lang': 'German',
        'langCode': 'de',
        'country': 'Switzerland'
      },
      {
        'flag': 'ci',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Ivory Coast'
      },
      {
        'flag': 'ck',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Cook Islands'
      },
      {'flag': 'cl', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Chile'},
      {
        'flag': 'cm',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Cameroon'
      },
      {'flag': 'cn', 'lang': 'Chinese', 'langCode': 'zh', 'country': 'China'},
      {
        'flag': 'co',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Colombia'
      },
      {
        'flag': 'cr',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Costa Rica'
      },
      {'flag': 'cu', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Cuba'},
      {
        'flag': 'cv',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'Cape Verde'
      },
      {'flag': 'cw', 'lang': 'Dutch', 'langCode': 'nl', 'country': 'Curacao'},
      {
        'flag': 'cx',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Christmas Island'
      },
      {'flag': 'cy', 'lang': 'Greek', 'langCode': 'el', 'country': 'Cyprus'},
      {
        'flag': 'cz',
        'lang': 'Czech',
        'langCode': 'cs',
        'country': 'Czech Republic'
      },
      {'flag': 'de', 'lang': 'German', 'langCode': 'de', 'country': 'Germany'},
      {'flag': 'dj', 'lang': 'French', 'langCode': 'fr', 'country': 'Djibouti'},
      {'flag': 'dk', 'lang': 'Danish', 'langCode': 'da', 'country': 'Denmark'},
      {
        'flag': 'dm',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Dominica'
      },
      {
        'flag': 'do',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Dominican Republic'
      },
      {'flag': 'dz', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Algeria'},
      {'flag': 'ec', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Ecuador'},
      {
        'flag': 'ee',
        'lang': 'Estonian',
        'langCode': 'et',
        'country': 'Estonia'
      },
      {'flag': 'eg', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Egypt'},
      {
        'flag': 'eh',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Western Sahara'
      },
      {
        'flag': 'er',
        'lang': 'Tigrinya',
        'langCode': 'ti',
        'country': 'Eritrea'
      },
      {'flag': 'es', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Spain'},
      {
        'flag': 'et',
        'lang': 'Amharic',
        'langCode': 'am',
        'country': 'Ethiopia'
      },
      {'flag': 'fi', 'lang': 'Finnish', 'langCode': 'fi', 'country': 'Finland'},
      {'flag': 'fj', 'lang': 'English', 'langCode': 'en', 'country': 'Fiji'},
      {
        'flag': 'fk',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Falkland Islands'
      },
      {
        'flag': 'fm',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Micronesia'
      },
      {
        'flag': 'fo',
        'lang': 'Faroese',
        'langCode': 'fo',
        'country': 'Faroe Islands'
      },
      {'flag': 'fr', 'lang': 'French', 'langCode': 'fr', 'country': 'France'},
      {'flag': 'ga', 'lang': 'French', 'langCode': 'fr', 'country': 'Gabon'},
      {
        'flag': 'gb',
        'lang': 'English',
        'langCode': 'en',
        'country': 'United Kingdom'
      },
      {'flag': 'gd', 'lang': 'English', 'langCode': 'en', 'country': 'Grenada'},
      {
        'flag': 'ge',
        'lang': 'Georgian',
        'langCode': 'ka',
        'country': 'Georgia'
      },
      {
        'flag': 'gf',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'French Guiana'
      },
      {
        'flag': 'gg',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Guernsey'
      },
      {'flag': 'gh', 'lang': 'English', 'langCode': 'en', 'country': 'Ghana'},
      {
        'flag': 'gi',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Gibraltar'
      },
      {
        'flag': 'gl',
        'lang': 'Greenlandic',
        'langCode': 'kl',
        'country': 'Greenland'
      },
      {'flag': 'gm', 'lang': 'English', 'langCode': 'en', 'country': 'Gambia'},
      {'flag': 'gn', 'lang': 'French', 'langCode': 'fr', 'country': 'Guinea'},
      {
        'flag': 'gp',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Guadeloupe'
      },
      {
        'flag': 'gq',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Equatorial Guinea'
      },
      {'flag': 'gr', 'lang': 'Greek', 'langCode': 'el', 'country': 'Greece'},
      {
        'flag': 'gs',
        'lang': 'English',
        'langCode': 'en',
        'country': 'South Georgia and the South Sandwich Islands'
      },
      {
        'flag': 'gt',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Guatemala'
      },
      {'flag': 'gu', 'lang': 'English', 'langCode': 'en', 'country': 'Guam'},
      {
        'flag': 'gw',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'Guinea-Bissau'
      },
      {'flag': 'gy', 'lang': 'English', 'langCode': 'en', 'country': 'Guyana'},
      {
        'flag': 'hk',
        'lang': 'Chinese',
        'langCode': 'zh',
        'country': 'Hong Kong'
      },
      {
        'flag': 'hm',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Heard Island and McDonald Islands'
      },
      {
        'flag': 'hn',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Honduras'
      },
      {
        'flag': 'hr',
        'lang': 'Croatian',
        'langCode': 'hr',
        'country': 'Croatia'
      },
      {'flag': 'ht', 'lang': 'French', 'langCode': 'fr', 'country': 'Haiti'},
      {
        'flag': 'hu',
        'lang': 'Hungarian',
        'langCode': 'hu',
        'country': 'Hungary'
      },
      {
        'flag': 'id',
        'lang': 'Indonesian',
        'langCode': 'id',
        'country': 'Indonesia'
      },
      {'flag': 'ie', 'lang': 'Irish', 'langCode': 'ga', 'country': 'Ireland'},
      {'flag': 'il', 'lang': 'Hebrew', 'langCode': 'he', 'country': 'Israel'},
      {
        'flag': 'im',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Isle of Man'
      },
      {'flag': 'in', 'lang': 'Hindi', 'langCode': 'hi', 'country': 'India'},
      {
        'flag': 'io',
        'lang': 'English',
        'langCode': 'en',
        'country': 'British Indian Ocean Territory'
      },
      {'flag': 'iq', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Iraq'},
      {'flag': 'ir', 'lang': 'Persian', 'langCode': 'fa', 'country': 'Iran'},
      {
        'flag': 'is',
        'lang': 'Icelandic',
        'langCode': 'is',
        'country': 'Iceland'
      },
      {'flag': 'it', 'lang': 'Italian', 'langCode': 'it', 'country': 'Italy'},
      {'flag': 'je', 'lang': 'English', 'langCode': 'en', 'country': 'Jersey'},
      {'flag': 'jm', 'lang': 'English', 'langCode': 'en', 'country': 'Jamaica'},
      {'flag': 'jo', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Jordan'},
      {'flag': 'jp', 'lang': 'Japanese', 'langCode': 'ja', 'country': 'Japan'},
      {'flag': 'ke', 'lang': 'English', 'langCode': 'en', 'country': 'Kenya'},
      {
        'flag': 'kg',
        'lang': 'Kyrgyz',
        'langCode': 'ky',
        'country': 'Kyrgyzstan'
      },
      {
        'flag': 'kh',
        'lang': 'Cambodian',
        'langCode': 'km',
        'country': 'Cambodia'
      },
      {
        'flag': 'ki',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Kiribati'
      },
      {'flag': 'km', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Comoros'},
      {
        'flag': 'kn',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Saint Kitts and Nevis'
      },
      {
        'flag': 'kp',
        'lang': 'Korean',
        'langCode': 'ko',
        'country': 'North Korea'
      },
      {
        'flag': 'kr',
        'lang': 'Korean',
        'langCode': 'ko',
        'country': 'South Korea'
      },
      {'flag': 'kw', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Kuwait'},
      {
        'flag': 'ky',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Cayman Islands'
      },
      {
        'flag': 'kz',
        'lang': 'Kazakh',
        'langCode': 'kk',
        'country': 'Kazakhstan'
      },
      {'flag': 'la', 'lang': 'Laotian', 'langCode': 'lo', 'country': 'Laos'},
      {'flag': 'lb', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Lebanon'},
      {
        'flag': 'lc',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Saint Lucia'
      },
      {
        'flag': 'li',
        'lang': 'German',
        'langCode': 'de',
        'country': 'Liechtenstein'
      },
      {
        'flag': 'lk',
        'lang': 'Sinhalese',
        'langCode': 'si',
        'country': 'Sri Lanka'
      },
      {'flag': 'lr', 'lang': 'English', 'langCode': 'en', 'country': 'Liberia'},
      {'flag': 'ls', 'lang': 'English', 'langCode': 'en', 'country': 'Lesotho'},
      {
        'flag': 'lt',
        'lang': 'Lithuanian',
        'langCode': 'lt',
        'country': 'Lithuania'
      },
      {
        'flag': 'lu',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Luxembourg'
      },
      {'flag': 'lv', 'lang': 'Latvian', 'langCode': 'lv', 'country': 'Latvia'},
      {'flag': 'ly', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Libya'},
      {'flag': 'ma', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Morocco'},
      {'flag': 'mc', 'lang': 'French', 'langCode': 'fr', 'country': 'Monaco'},
      {
        'flag': 'md',
        'lang': 'Romanian',
        'langCode': 'ro',
        'country': 'Moldova'
      },
      {
        'flag': 'me',
        'lang': 'Serbian',
        'langCode': 'sr',
        'country': 'Montenegro'
      },
      {
        'flag': 'mf',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Saint Martin'
      },
      {
        'flag': 'mg',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Madagascar'
      },
      {
        'flag': 'mh',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Marshall Islands'
      },
      {
        'flag': 'mk',
        'lang': 'Macedonian',
        'langCode': 'mk',
        'country': 'North Macedonia'
      },
      {'flag': 'ml', 'lang': 'French', 'langCode': 'fr', 'country': 'Mali'},
      {
        'flag': 'mm',
        'lang': 'Burmese',
        'langCode': 'my',
        'country': 'Myanmar [Burma]'
      },
      {
        'flag': 'mn',
        'lang': 'Mongolian',
        'langCode': 'mn',
        'country': 'Mongolia'
      },
      {'flag': 'mo', 'lang': 'Chinese', 'langCode': 'zh', 'country': 'Macao'},
      {
        'flag': 'mp',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Northern Mariana Islands'
      },
      {
        'flag': 'mq',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Martinique'
      },
      {
        'flag': 'mr',
        'lang': 'Arabic',
        'langCode': 'ar',
        'country': 'Mauritania'
      },
      {
        'flag': 'ms',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Montserrat'
      },
      {'flag': 'mt', 'lang': 'Maltese', 'langCode': 'mt', 'country': 'Malta'},
      {
        'flag': 'mu',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Mauritius'
      },
      {'flag': 'mv', 'lang': 'Divehi', 'langCode': 'dv', 'country': 'Maldives'},
      {'flag': 'mw', 'lang': 'English', 'langCode': 'en', 'country': 'Malawi'},
      {'flag': 'mx', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Mexico'},
      {'flag': 'my', 'lang': 'Malay', 'langCode': 'ms', 'country': 'Malaysia'},
      {
        'flag': 'mz',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'Mozambique'
      },
      {'flag': 'na', 'lang': 'English', 'langCode': 'en', 'country': 'Namibia'},
      {
        'flag': 'nc',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'New Caledonia'
      },
      {'flag': 'ne', 'lang': 'French', 'langCode': 'fr', 'country': 'Niger'},
      {
        'flag': 'nf',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Norfolk Island'
      },
      {'flag': 'ng', 'lang': 'English', 'langCode': 'en', 'country': 'Nigeria'},
      {
        'flag': 'ni',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Nicaragua'
      },
      {
        'flag': 'nl',
        'lang': 'Dutch',
        'langCode': 'nl',
        'country': 'Netherlands'
      },
      {
        'flag': 'no',
        'lang': 'Norwegian',
        'langCode': 'no',
        'country': 'Norway'
      },
      {'flag': 'np', 'lang': 'Nepali', 'langCode': 'ne', 'country': 'Nepal'},
      {'flag': 'nr', 'lang': 'English', 'langCode': 'en', 'country': 'Nauru'},
      {'flag': 'nu', 'lang': 'English', 'langCode': 'en', 'country': 'Niue'},
      {
        'flag': 'nz',
        'lang': 'English',
        'langCode': 'en',
        'country': 'New Zealand'
      },
      {'flag': 'om', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Oman'},
      {'flag': 'pa', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Panama'},
      {'flag': 'pe', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Peru'},
      {
        'flag': 'pf',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'French Polynesia'
      },
      {
        'flag': 'pg',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Papua New Guinea'
      },
      {
        'flag': 'ph',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Philippines'
      },
      {
        'flag': 'pk',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Pakistan'
      },
      {'flag': 'pl', 'lang': 'Polish', 'langCode': 'pl', 'country': 'Poland'},
      {
        'flag': 'pm',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Saint Pierre and Miquelon'
      },
      {
        'flag': 'pn',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Pitcairn Islands'
      },
      {
        'flag': 'pr',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Puerto Rico'
      },
      {
        'flag': 'ps',
        'lang': 'Arabic',
        'langCode': 'ar',
        'country': 'Palestine'
      },
      {
        'flag': 'pt',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'Portugal'
      },
      {'flag': 'pw', 'lang': 'English', 'langCode': 'en', 'country': 'Palau'},
      {
        'flag': 'py',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Paraguay'
      },
      {'flag': 'qa', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Qatar'},
      {'flag': 're', 'lang': 'French', 'langCode': 'fr', 'country': 'Réunion'},
      {
        'flag': 'ro',
        'lang': 'Romanian',
        'langCode': 'ro',
        'country': 'Romania'
      },
      {'flag': 'rs', 'lang': 'Serbian', 'langCode': 'sr', 'country': 'Serbia'},
      {'flag': 'ru', 'lang': 'Russian', 'langCode': 'ru', 'country': 'Russia'},
      {'flag': 'rw', 'lang': 'Rwandi', 'langCode': 'rw', 'country': 'Rwanda'},
      {
        'flag': 'sa',
        'lang': 'Arabic',
        'langCode': 'ar',
        'country': 'Saudi Arabia'
      },
      {
        'flag': 'sb',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Solomon Islands'
      },
      {
        'flag': 'sc',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Seychelles'
      },
      {'flag': 'sd', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Sudan'},
      {'flag': 'se', 'lang': 'Swedish', 'langCode': 'sv', 'country': 'Sweden'},
      {
        'flag': 'sg',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Singapore'
      },
      {
        'flag': 'sh',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Saint Helena'
      },
      {
        'flag': 'si',
        'lang': 'Slovenian',
        'langCode': 'sl',
        'country': 'Slovenia'
      },
      {
        'flag': 'sj',
        'lang': 'Norwegian',
        'langCode': 'no',
        'country': 'Svalbard and Jan Mayen'
      },
      {'flag': 'sk', 'lang': 'Slovak', 'langCode': 'sk', 'country': 'Slovakia'},
      {
        'flag': 'sl',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Sierra Leone'
      },
      {
        'flag': 'sm',
        'lang': 'Italian',
        'langCode': 'it',
        'country': 'San Marino'
      },
      {'flag': 'sn', 'lang': 'French', 'langCode': 'fr', 'country': 'Senegal'},
      {'flag': 'so', 'lang': 'Somalia', 'langCode': 'so', 'country': 'Somalia'},
      {'flag': 'sr', 'lang': 'Dutch', 'langCode': 'nl', 'country': 'Suriname'},
      {
        'flag': 'ss',
        'lang': 'English',
        'langCode': 'en',
        'country': 'South Sudan'
      },
      {
        'flag': 'st',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'São Tomé and Príncipe'
      },
      {
        'flag': 'sv',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'El Salvador'
      },
      {
        'flag': 'sx',
        'lang': 'Dutch',
        'langCode': 'nl',
        'country': 'Sint Maarten'
      },
      {'flag': 'sy', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Syria'},
      {
        'flag': 'sz',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Swaziland'
      },
      {
        'flag': 'tc',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Turks and Caicos Islands'
      },
      {'flag': 'td', 'lang': 'French', 'langCode': 'fr', 'country': 'Chad'},
      {
        'flag': 'tf',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'French Southern Territories'
      },
      {'flag': 'tg', 'lang': 'French', 'langCode': 'fr', 'country': 'Togo'},
      {'flag': 'th', 'lang': 'Thai', 'langCode': 'th', 'country': 'Thailand'},
      {
        'flag': 'tj',
        'lang': 'Tajik',
        'langCode': 'tg',
        'country': 'Tajikistan'
      },
      {'flag': 'tk', 'lang': 'English', 'langCode': 'en', 'country': 'Tokelau'},
      {
        'flag': 'tl',
        'lang': 'Portuguese',
        'langCode': 'pt',
        'country': 'East Timor'
      },
      {
        'flag': 'tm',
        'lang': 'Turkmen',
        'langCode': 'tk',
        'country': 'Turkmenistan'
      },
      {'flag': 'tn', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Tunisia'},
      {'flag': 'to', 'lang': 'English', 'langCode': 'en', 'country': 'Tonga'},
      {'flag': 'tr', 'lang': 'Turkish', 'langCode': 'tr', 'country': 'Turkey'},
      {
        'flag': 'tt',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Trinidad and Tobago'
      },
      {'flag': 'tv', 'lang': 'English', 'langCode': 'en', 'country': 'Tuvalu'},
      {'flag': 'tw', 'lang': 'Chinese', 'langCode': 'zh', 'country': 'Taiwan'},
      {
        'flag': 'tz',
        'lang': 'Swahili',
        'langCode': 'sw',
        'country': 'Tanzania'
      },
      {
        'flag': 'ua',
        'lang': 'Ukrainian',
        'langCode': 'uk',
        'country': 'Ukraine'
      },
      {'flag': 'ug', 'lang': 'English', 'langCode': 'en', 'country': 'Uganda'},
      {
        'flag': 'um',
        'lang': 'English',
        'langCode': 'en',
        'country': 'U.S. Minor Outlying Islands'
      },
      {
        'flag': 'us',
        'lang': 'English',
        'langCode': 'en',
        'country': 'United States'
      },
      {'flag': 'uy', 'lang': 'Spanish', 'langCode': 'es', 'country': 'Uruguay'},
      {
        'flag': 'uz',
        'lang': 'Uzbek',
        'langCode': 'uz',
        'country': 'Uzbekistan'
      },
      {
        'flag': 'va',
        'lang': 'Italian',
        'langCode': 'it',
        'country': 'Vatican City'
      },
      {
        'flag': 'vc',
        'lang': 'English',
        'langCode': 'en',
        'country': 'Saint Vincent and the Grenadines'
      },
      {
        'flag': 've',
        'lang': 'Spanish',
        'langCode': 'es',
        'country': 'Venezuela'
      },
      {
        'flag': 'vg',
        'lang': 'English',
        'langCode': 'en',
        'country': 'British Virgin Islands'
      },
      {
        'flag': 'vi',
        'lang': 'English',
        'langCode': 'en',
        'country': 'U.S. Virgin Islands'
      },
      {
        'flag': 'vn',
        'lang': 'Vietnamese',
        'langCode': 'vi',
        'country': 'Vietnam'
      },
      {'flag': 'vu', 'lang': 'Bislama', 'langCode': 'bi', 'country': 'Vanuatu'},
      {
        'flag': 'wf',
        'lang': 'French',
        'langCode': 'fr',
        'country': 'Wallis and Futuna'
      },
      {'flag': 'ws', 'lang': 'Samoan', 'langCode': 'sm', 'country': 'Samoa'},
      {'flag': 'xk', 'lang': 'Albanian', 'langCode': 'sq', 'country': 'Kosovo'},
      {'flag': 'ye', 'lang': 'Arabic', 'langCode': 'ar', 'country': 'Yemen'},
      {'flag': 'yt', 'lang': 'French', 'langCode': 'fr', 'country': 'Mayotte'},
      {
        'flag': 'za',
        'lang': 'Afrikaans',
        'langCode': 'af',
        'country': 'South Africa'
      },
      {'flag': 'zm', 'lang': 'English', 'langCode': 'en', 'country': 'Zambia'},
      {'flag': 'zw', 'lang': 'English', 'langCode': 'en', 'country': 'Zimbabwe'}
    ].map((e) => ChoreoLangModel()..fromJson(e)).toList();
  }
}
