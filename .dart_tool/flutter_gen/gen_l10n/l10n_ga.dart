

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Irish (`ga`).
class L10nGa extends L10n {
  L10nGa([String locale = 'ga']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Níl na pasfhocail chéanna!';

  @override
  String get pleaseEnterValidEmail => 'Iontráil ríomhphost bailí le do thoil.';

  @override
  String get repeatPassword => 'Scríobh an pasfhocal arís';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Roghnaigh $min carachtar ar a laghad.';
  }

  @override
  String get about => 'Faoi';

  @override
  String get accept => 'Glac';

  @override
  String acceptedTheInvitation(Object username) {
    return 'Ghlac $username leis an cuireadh';
  }

  @override
  String get account => 'Cuntas';

  @override
  String get accountInformation => 'Faisnéis cuntais';

  @override
  String activatedEndToEndEncryption(Object username) {
    return 'Thosaigh $username an criptiú ó dheireadh go deireadh';
  }

  @override
  String get addEmail => 'Cuir ríomhphoist';

  @override
  String get addGroupDescription => 'Cuir tuairisc grúpa';

  @override
  String get addNewFriend => 'Cuir cara nua';

  @override
  String get addToSpace => 'Cuir go spás';

  @override
  String get admin => 'Riarthóir';

  @override
  String get alias => 'ailias';

  @override
  String get all => 'Gach';

  @override
  String get allChats => 'Gach comhrá';

  @override
  String get alreadyHaveAnAccount => 'An bhfuil cuntas agat cheana féin?';

  @override
  String answeredTheCall(Object senderName) {
    return 'D\'fhreagair $senderName an glao';
  }

  @override
  String get anyoneCanJoin => 'Is féidir le aon duine dul isteach';

  @override
  String get appLock => 'Bac aip';

  @override
  String get archive => 'Cartlann';

  @override
  String get archivedRoom => 'Seomra cartlainne';

  @override
  String get areGuestsAllowedToJoin => 'An bhfuil cead ag aoi-úsáideoirí a bheith páirteach';

  @override
  String get areYouSure => 'An bhfuil tú cinnte?';

  @override
  String get areYouSureYouWantToLogout => 'An bhfuil tú cinnte gur mhaith leat logáil amach?';

  @override
  String get askSSSSSign => 'Chun a bheith in ann an duine eile a shíniú, cuir isteach do phasfhrása stóir sábháilte nó d\'eochair téarnaimh.';

  @override
  String get askSSSSVerify => 'Cuir isteach do phasfrása stóir sábháilte nó d\'eochair téarnaimh chun do sheisiún a fhíorú le do thoil.';

  @override
  String askVerificationRequest(Object username) {
    return 'Glac leis an iarratas fíoraithe seo ó $username?';
  }

  @override
  String get audioPlayerPause => 'Cuir ar sos';

  @override
  String get audioPlayerPlay => 'Seinn';

  @override
  String get authentication => 'Fíordheimhniú';

  @override
  String get autoplayImages => 'Seinn greamáin agus straoiseog beoite go huathoibríoch';

  @override
  String get avatarHasBeenChanged => 'D\'athraigh abhatár';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Tá na cineálacha logála isteach seo ar fáil faoin freastalaí baile:\n${serverVersions}\nAch níl ach na ceann seo ar fáil faoin aip seo:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Seol ar iontráil';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Tá na leaganacha sonraíochta seo ar fáil faoin freastalaí baile:\n${serverVersions}\nAch níl ach na ceann seo ar fáil faoin aip seo $supportedVersions';
  }

  @override
  String get banFromChat => 'Toirmisc ón gcomhrá';

  @override
  String get banned => 'Coiscthe';

  @override
  String bannedUser(Object username, Object targetName) {
    return 'Chuir $username cosc ar $targetName';
  }

  @override
  String get blockDevice => 'Bac Gléas';

  @override
  String get blocked => 'Bactha';

  @override
  String get botMessages => 'Teachtaireachtaí bota';

  @override
  String get bubbleSize => 'Méid na mbolgán cainte';

  @override
  String get cachedKeys => 'Eochracha i dtaisce';

  @override
  String get cancel => 'Cealaigh';

  @override
  String cantOpenUri(Object uri) {
    return 'Ní féidir an URI $uri a oscailt';
  }

  @override
  String get changeDeviceName => 'Athraigh ainm an ghléis';

  @override
  String changedTheChatAvatar(Object username) {
    return 'D\'athraigh $username abhatár an chomhrá';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return 'D\'athraigh $username an cur síos comhrá go: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return 'D\'athraigh $username an t-ainm comhrá go: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return 'D\'athraigh $username na ceadanna comhrá';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return 'D\'athraigh $username a n-ainm taispeána go: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return 'D\'athraigh $username na rialacha rochtana aoi';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return 'D\'athraigh $username na rialacha maidir le rochtain aoi chuig: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return 'D\'athraigh $username infheictheacht na staire';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return 'D\'athraigh $username infheictheacht na staire go: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return 'D\'athraigh $username na rialacha ceangail';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return 'D\'athraigh $username na rialacha ceangail go: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return 'D\'athraigh $username a n-abhatár';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return 'D\'athraigh $username ailiasanna an tseomra';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return 'D\'athraigh $username nasc an chuiridh';
  }

  @override
  String get changelog => 'Loga na n-athruithe';

  @override
  String get changePassword => 'Athraigh an pasfhocal';

  @override
  String get changesHaveBeenSaved => 'Sábháladh athruithe';

  @override
  String get changeTheHomeserver => 'Athraigh an freastalaí baile';

  @override
  String get changeTheme => 'Athraigh do stíl';

  @override
  String get changeTheNameOfTheGroup => 'Athraigh ainm an ghrúpa';

  @override
  String get changeTheServer => 'Athraigh an freastalaí';

  @override
  String get changeWallpaper => 'Athraigh cúlbhrat';

  @override
  String get changeYourAvatar => 'Athraigh do abhatár';

  @override
  String get channelCorruptedDecryptError => 'Truaillíodh an criptiú';

  @override
  String get chat => 'Comhrá';

  @override
  String get yourUserId => 'D\'aitheantas úsáideora:';

  @override
  String get setupChatBackup => 'Bunaigh cúltaca comhrá';

  @override
  String get iWroteDownTheKey => 'Scríobh mé an eochair';

  @override
  String get yourChatBackupHasBeenSetUp => 'Bunaíodh do chúltaca comhrá.';

  @override
  String get chatBackup => 'Cúltaca comhrá';

  @override
  String get setupChatBackupDescription => 'To protect your messages, we have generated a security key for you.\nPlease keep this in a safe place, such as a password manager.';

  @override
  String get chatBackupDescription => 'Tá do chúltaca comhrá daingnithe le heochair slándála. Déan cinnte nach gcaillfidh tú é.';

  @override
  String get chatDetails => 'Sonraí comhrá';

  @override
  String get chatHasBeenAddedToThisSpace => 'Cuireadh comhrá leis an spás seo';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Baineadh comhrá as an spás seo';

  @override
  String get chats => 'Comhráite';

  @override
  String get chooseAStrongPassword => 'Roghnaigh pasfhocal láidir';

  @override
  String get chooseAUsername => 'Roghnaigh ainm úsáideora';

  @override
  String get clearArchive => 'Glan an cartlann';

  @override
  String get clearText => 'Glan an téacs';

  @override
  String get close => 'Dún';

  @override
  String get commandHint_ban => 'Cuir cosc ar an úsáideoir áirithe ón seomra seo';

  @override
  String get commandHint_clearcache => 'Glan an taisce';

  @override
  String get commandHint_create => 'Cruthaigh comhrá grúpa folamh\nÚsáid --no-encryption chun criptiúchán a dhíchumasú';

  @override
  String get commandHint_discardsession => 'Discard session';

  @override
  String get commandHint_dm => 'Start a direct chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_html => 'Seol téacs HTML-formáidithe';

  @override
  String get commandHint_invite => 'Cuir cosc ar an úsáideoir áirithe ón seomra seo';

  @override
  String get commandHint_join => 'Téigh isteach sa seomra áirithe';

  @override
  String get commandHint_kick => 'Bain an t-úsáideoir áirithe den seomra seo';

  @override
  String get commandHint_leave => 'Fág an seomra seo';

  @override
  String get commandHint_me => 'Déan cur síos ort féin';

  @override
  String get commandHint_myroomavatar => 'Cuir do phictiúr don seomra seo (le mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Socraigh d\'ainm taispeána don seomra seo';

  @override
  String get commandHint_op => 'Socraigh leibhéal cumhachta an úsáideora áirithe (réamhshocrú: 50)';

  @override
  String get commandHint_plain => 'Seol téacs neamhfhoirmithe';

  @override
  String get commandHint_react => 'Seol freagra mar fhreagairt';

  @override
  String get commandHint_send => 'Seol téacs';

  @override
  String get commandHint_unban => 'Cuir deireadh an cosc den úsáideoir áirithe ón seomra seo';

  @override
  String get commandInvalid => 'Ordú neamhbhailí';

  @override
  String commandMissing(Object command) {
    return 'Ní ordú é $command.';
  }

  @override
  String get compareEmojiMatch => 'Déan comparáid agus déan cinnte go bhfuil an emoji seo a leanas comhoiriúnach le emoji an ghléis eile:';

  @override
  String get compareNumbersMatch => 'Déan comparáid idir na huimhreacha seo a leanas agus déan cinnte go bhfuil na huimhreacha seo a leanas ag teacht le huimhreacha an ghléis eile:';

  @override
  String get configureChat => 'Cumraigh comhrá';

  @override
  String get confirm => 'Deimhnigh';

  @override
  String get connect => 'Ceangail';

  @override
  String get connectionAttemptFailed => 'Theip ar iarracht an naisc';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Tugadh cuireadh don theagmháil a thar isteach sa grúpa';

  @override
  String get containsDisplayName => 'Coinníonn sé ainm taispeána';

  @override
  String get containsUserName => 'Coinníonn sé ainm úsáideora';

  @override
  String get contentHasBeenReported => 'Tuairiscíodh an t-ábhar do lucht riaracháin an fhreastalaí';

  @override
  String get contentViewer => 'Amharcóir ábhair';

  @override
  String get copiedToClipboard => 'Cóipeáilte ar an ghearrthaisce';

  @override
  String get copy => 'Cóipeáil';

  @override
  String get copyToClipboard => 'Cóipeáil ar an ghearrthaisce';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Níorbh fhéidir teachtaireacht a dhíchriptiú: $error';
  }

  @override
  String get couldNotSetAvatar => 'Níorbh fhéidir abhatár a shocrú';

  @override
  String get couldNotSetDisplayname => 'Níorbh fhéidir an t-ainm taispeána a shocrú';

  @override
  String countParticipants(Object count) {
    return '$count rannpháirtithe';
  }

  @override
  String get create => 'Cruthaigh';

  @override
  String get createAccountNow => 'Déan cuntas anois';

  @override
  String createdTheChat(Object username) {
    return 'Rinne $username an comhrá';
  }

  @override
  String get createNewGroup => 'Déan grúpa nua';

  @override
  String get createNewSpace => 'Spás nua';

  @override
  String get crossSigningDisabled => 'Cros-síniú casta as';

  @override
  String get crossSigningEnabled => 'Tá cros-shíniú tosaithe';

  @override
  String get currentlyActive => 'Gníomhach faoi láthair';

  @override
  String get darkTheme => 'Dorcha';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '$day/$month';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '$day/$month/$year';
  }

  @override
  String get deactivateAccountWarning => 'Díghníomhachtaeoidh sé seo do chuntas úsáideora. Ní féidir é seo a chealú! An bhfuil tú cinnte?';

  @override
  String get defaultPermissionLevel => 'Leibhéal ceada réamhshocraithe';

  @override
  String get delete => 'Scrios';

  @override
  String get deleteAccount => 'Scrios an cuntas';

  @override
  String get deleteMessage => 'Scrios an teachtaireacht';

  @override
  String get deny => 'Diúltaigh';

  @override
  String get device => 'Gléas';

  @override
  String get deviceId => 'ID gléis';

  @override
  String get devices => 'Gléasanna';

  @override
  String get deviceVerifyDescription => 'Níl an criptiú slán ach amháin nuair a fhíoraítear gach gléas.';

  @override
  String get directChats => 'Comhráite Díreacha';

  @override
  String get discardPicture => 'Scrios pictiúr';

  @override
  String get discover => 'Tar ar';

  @override
  String get discoverGroups => 'Tar ar ghrúpaí';

  @override
  String get displaynameHasBeenChanged => 'Athraíodh an t-ainm taispeána';

  @override
  String get donate => 'Bronn';

  @override
  String get dontAskAgain => 'Cealaigh agus ná fiafraigh arís';

  @override
  String get downloadFile => 'Íoslódáil comhad';

  @override
  String get edit => 'Cuir in eagar';

  @override
  String get editBlockedServers => 'Cuir freastalaí blocáilte in eagar';

  @override
  String get editChatPermissions => 'Cuir ceadanna an chomhrá in eagar';

  @override
  String get editDisplayname => 'Cuir ainm taispeána in eagar';

  @override
  String get editJitsiInstance => 'Cuir ásc Jitsi in eagar';

  @override
  String get editRoomAliases => 'Cuir ailiasanna an tseomra in eagar';

  @override
  String get editRoomAvatar => 'Cuir in eagar abhatár an tseomra';

  @override
  String get emoteExists => 'Tá iomaite ann cheana féin!';

  @override
  String get emoteInvalid => 'Gearrchód emote neamhbhailí!';

  @override
  String get emotePacks => 'Pacáistí straoiseoige don seomra';

  @override
  String get emoteSettings => 'Socruithe straoiseoige';

  @override
  String get emoteShortcode => 'Gearrchód straoiseoige';

  @override
  String get emoteWarnNeedToPick => 'Caithfidh tú gearrchód straoiseoige agus íomhá a roghnú!';

  @override
  String get emptyChat => 'Comhrá folamh';

  @override
  String get enableChatBackup => 'Cumasaigh an cúltaca comhrá chun do chuid comhráite a chailleadh riamh.';

  @override
  String get enableEmotesGlobally => 'Cumasaigh pacáiste straoiseoige go huilíoch';

  @override
  String get enableEncryption => 'Tosaigh criptiú';

  @override
  String get enableEncryptionWarning => 'Ní bheidh in ann an criptiú a dhíchumasú níos mó. An bhfuil tú cinnte?';

  @override
  String get encrypted => 'Criptithe';

  @override
  String get encryption => 'Criptiúchán';

  @override
  String get encryptionAlgorithm => 'Algartam criptithe';

  @override
  String get encryptionNotEnabled => 'Ní chumasaítear criptiú';

  @override
  String get end2endEncryptionSettings => 'Socruithe criptithe ó dheireadh go deireadh';

  @override
  String endedTheCall(Object senderName) {
    return 'Chuir $senderName deireadh leis an nglao';
  }

  @override
  String get enterAGroupName => 'Iontráil ainm grúpa';

  @override
  String get enterAnEmailAddress => 'Cuir isteach seoladh ríomhphoist';

  @override
  String get enterASpacepName => 'Cuir isteach ainm spáis';

  @override
  String get enterAUsername => 'Cuir isteach ainm úsáideora';

  @override
  String get homeserver => 'Freastalaí baile';

  @override
  String get enterYourHomeserver => 'Cuir isteach do fhreastalaí baile';

  @override
  String errorObtainingLocation(Object error) {
    return 'Earráid maidir le suíomh a fháil: $error';
  }

  @override
  String get everythingReady => 'Gach rud réidh!';

  @override
  String get extremeOffensive => 'Fíor-maslach';

  @override
  String get fileName => 'Ainm an chomhaid';

  @override
  String get fileSize => 'Méid an chomhaid';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Méid cló';

  @override
  String get forward => 'Seol ar aghaidh';

  @override
  String get friday => 'Dé hAoine';

  @override
  String get friends => 'Cairde';

  @override
  String get fromJoining => 'Ó tar isteach';

  @override
  String get fromTheInvitation => 'Ón gcuireadh';

  @override
  String get goToTheNewRoom => 'Téigh go dtí an seomra nua';

  @override
  String get group => 'Grúpa';

  @override
  String get groupDescription => 'Cur síos ar an ngrúpa';

  @override
  String get groupDescriptionHasBeenChanged => 'D\'athraigh cur síos an ghrúpa';

  @override
  String get groupIsPublic => 'Tá an grúpa poiblí';

  @override
  String get groups => 'Grúpaí';

  @override
  String groupWith(Object displayname) {
    return 'Grúpa le $displayname';
  }

  @override
  String get guestsAreForbidden => 'Tá cosc ar aíonna';

  @override
  String get guestsCanJoin => 'Is féidir le haíonna páirt a ghlacadh';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return 'Tharraing $username an cuireadh do $targetName siar';
  }

  @override
  String get help => 'Cabhair';

  @override
  String get hideRedactedEvents => 'Folaigh imeachtaí athdhéanta';

  @override
  String get hideUnknownEvents => 'Folaigh imeachtaí anaithnide';

  @override
  String get homeserverIsNotCompatible => 'Níl an freastalaí baile comhoiriúnach';

  @override
  String get howOffensiveIsThisContent => 'Cé chomh maslach atá an t-ábhar seo?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Aitheantas';

  @override
  String get ignore => 'Tabhair neamhaird ar';

  @override
  String get ignoredUsers => 'Úsáideoirí a dtugann tú neamhaird orthu';

  @override
  String get ignoreListDescription => 'Is féidir leat neamhaird a dhéanamh d\'úsáideoirí atá ag cur isteach ort. Ní bheidh tú in ann aon teachtaireachtaí nó cuireadh seomra a fháil ó na húsáideoirí ar do liosta neamhaird phearsanta.';

  @override
  String get ignoreUsername => 'Tabhair neamhaird ar ainm úsáideora';

  @override
  String get iHaveClickedOnLink => 'Chliceáil mé ar an nasc';

  @override
  String get incorrectPassphraseOrKey => 'Pasfhrása nó eochair téarnaimh mícheart';

  @override
  String get inoffensive => 'Neamhurchóideach';

  @override
  String get invalidEmail => 'Ríomhphost neamhbhailí';

  @override
  String get inviteContact => 'Tabhair cuireadh do theagmháil';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Tabhair cuireadh do theagmháil chuig $groupName';
  }

  @override
  String get invited => 'Le cuireadh';

  @override
  String invitedUser(Object username, Object targetName) {
    return 'Thug $username cuireadh do $targetName';
  }

  @override
  String get invitedUsersOnly => 'Úsáideoirí le cuireadh amháin';

  @override
  String get inviteForMe => 'Tabhair cuireadh dom';

  @override
  String inviteText(Object username, Object link) {
    return 'Thug $username cuireadh duit chuig FluffyChat.\n1. Suiteáil FluffyChat: https://fluffychat.im\n2. Cláraigh nó sínigh isteach\n3. Oscail an nasc cuiridh: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'An bhfuil an eochair gléis seo a leanas ceart?';

  @override
  String get isTyping => 'ag clóscríobh…';

  @override
  String joinedTheChat(Object username) {
    return 'Tháinig $username isteach sa chomhrá';
  }

  @override
  String get joinRoom => 'Téigh isteach sa seomra';

  @override
  String get keysCached => 'Cuirtear eochracha i dtaisce';

  @override
  String get keysMissing => 'Tá na heochracha ar iarraidh';

  @override
  String kicked(Object username, Object targetName) {
    return 'Chaith $username $targetName amach';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return 'Chaith $username amach agus chuir cosc ar $targetName freisin';
  }

  @override
  String get kickFromChat => 'Caith é amach as an comhrá';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Gníomhach deireanach: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'IP le feiceáil go deireanach';

  @override
  String get lastSeenLongTimeAgo => 'Le feiceáil i bhfad ó shin';

  @override
  String get leave => 'Fág';

  @override
  String get leftTheChat => 'Fágadh an comhrá';

  @override
  String get license => 'Ceadúnas';

  @override
  String get lightTheme => 'Solas';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Lódáil $count níos mó rannpháirtithe';
  }

  @override
  String get loadingPleaseWait => 'Ag lódáil… Fan, le do thoil.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Lódáil níos mó…';

  @override
  String get locationDisabledNotice => 'Tá seirbhísí suímh díchumasaithe. Cuir ar a gcumas le do thoil a bheith in ann do shuíomh a roinnt.';

  @override
  String get locationPermissionDeniedNotice => 'Diúltaíodh cead suímh. Deonaigh dóibh le do thoil go mbeidh tú in ann do shuíomh a roinnt.';

  @override
  String get login => 'Logáil isteach';

  @override
  String logInTo(Object homeserver) {
    return 'Logáil isteach chuig $homeserver';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => 'Logáil amach';

  @override
  String get makeAModerator => 'Ceap modhnóir';

  @override
  String get makeAnAdmin => 'Ceap riarachán';

  @override
  String get makeSureTheIdentifierIsValid => 'Cinntigh go bhfuil an t-aitheantóir bailí';

  @override
  String get memberChanges => 'Athruithe ball';

  @override
  String get mention => 'Luaigh';

  @override
  String get messages => 'Teachtaireachtaí';

  @override
  String get messageWillBeRemovedWarning => 'Bainfear an teachtaireacht do na rannpháirtithe go léir';

  @override
  String get moderator => 'Modhnóir';

  @override
  String get monday => 'Dé Luain';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 imeacht níos mó',
      other: '$count níos mó imeachtaí',
    );
  }

  @override
  String get muteChat => 'Ciúnaigh comhrá';

  @override
  String get needPantalaimonWarning => 'Bí ar an eolas go dteastaíonn Pantalaimon uait chun criptiú ó cheann go ceann a úsáid anois.';

  @override
  String get newChat => 'Comhrá nua';

  @override
  String get newMessageInFluffyChat => 'Teachtaireacht nua i FluffyChat';

  @override
  String get newVerificationRequest => 'Iarratas fíoraithe nua!';

  @override
  String get next => 'Ar Aghaidh';

  @override
  String get no => 'Níl';

  @override
  String get noConnectionToTheServer => 'Gan aon nasc leis an bhfreastalaí';

  @override
  String get noCrossSignBootstrap => 'Níl Tras-Síniú ar fáil i Fluffychat ag an am seo. Cumasaigh é in Element.';

  @override
  String get noDescription => 'Gan cuntas';

  @override
  String get noEmotesFound => 'Níor aimsíodh aon straoiseoga. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Ní féidir leat criptiú a ghníomhachtú ach a luaithe nach bhfuil an seomra inrochtana go poiblí a thuilleadh.';

  @override
  String get noGoogleServicesWarning => 'Dealraíonn sé nach bhfuil aon seirbhísí google agat ar do ghuthán. Sin cinneadh maith le do phríobháideacht! Chun fógraí brú a fháil i FluffyChat molaimid https://microg.org/ nó https://unifiedpush.org/ a úsáid.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return 'Níl $server1 freastalaí Matrix. Úsáid $server2 ina áit sin?';
  }

  @override
  String get createNewChatExplaination => 'Ní gá duit ach an cód QR a scanadh nó do nasc cuiridh a roinnt mura bhfuil sibh in aice lena chéile.';

  @override
  String get shareYourInviteLink => 'Roinn do nasc cuiridh';

  @override
  String get typeInInviteLinkManually => 'Clóscríobh an nasc cuiridh de láimh...';

  @override
  String get scanQrCode => 'Scan cód QR';

  @override
  String get noMegolmBootstrap => 'Cas air cúltaca eochair ar líne ó laistigh de Element ina ionad.';

  @override
  String get none => 'Aon cheann';

  @override
  String get newPasswordDescription => 'D\'fhonn a bheith in ann do phasfhocal a ghnóthú, ba cheart duit seoladh ríomhphoist a chur le do chuntas ina dhiaidh sin.';

  @override
  String get newUsernameDescription => 'Ansin beidh an fhormáid @ainmúsáideora:ainmfreastalaí ag d\'aitheantas úsáideora';

  @override
  String get noPasswordRecoveryDescription => 'Níor chuir tú bealach leis do phasfhocal a aisghabháil fós.';

  @override
  String get noPermission => 'Gan cead';

  @override
  String get noPublicRoomsFound => 'Níor aimsíodh aon seomraí poiblí…';

  @override
  String get noRoomsFound => 'Níor aimsíodh aon seomraí…';

  @override
  String get noStatusesFound => 'Níl aon stádas le fáil go dtí seo.';

  @override
  String get notifications => 'Fógraí';

  @override
  String get notificationsEnabledForThisAccount => 'Fógraí cumasaithe don chuntas seo';

  @override
  String get notSupportedInWeb => 'Gan tacaíocht i ngréasán';

  @override
  String numberSelected(Object number) {
    return '$number roghnaithe';
  }

  @override
  String numUsersTyping(Object count) {
    return 'Tá $count úsáideoirí ag clóscríobh…';
  }

  @override
  String get obtainingLocation => 'ag Aimsiú an suíomh…';

  @override
  String get offensive => 'Maslach';

  @override
  String get offline => 'As líne';

  @override
  String get ok => 'togha';

  @override
  String get online => 'Ar líne';

  @override
  String get onlineKeyBackupDisabled => 'Tá Cúltaca Eochair Ar Líne díchumasaithe';

  @override
  String get onlineKeyBackupEnabled => 'Tá Cúltaca Eochair Ar Líne cumasaithe';

  @override
  String get oopsPushError => 'Hoips! Ar an drochuair, tharla earráid nuair a bhí na fógraí brú á mbunú.';

  @override
  String get oopsSomethingWentWrong => 'Úps, chuaigh rud éigin mícheart …';

  @override
  String get openAppToReadMessages => 'Oscail an aip chun teachtaireachtaí a léamh';

  @override
  String get openCamera => 'Oscail ceamara';

  @override
  String get openVideoCamera => 'Oscail físcheamara';

  @override
  String get oneClientLoggedOut => 'One of your clients has been logged out';

  @override
  String get addAccount => 'Breisigh cuntas';

  @override
  String get editBundlesForAccount => 'Edit bundles for this account';

  @override
  String get addToBundle => 'Add to bundle';

  @override
  String get removeFromBundle => 'Remove from this bundle';

  @override
  String get bundleName => 'Bundle name';

  @override
  String get enableMultiAccounts => '(BÉITE) Cumasaigh cuntais iomadúla ar an gléas seo';

  @override
  String get openInMaps => 'Oscail i léarscáileanna';

  @override
  String get link => 'Nasc';

  @override
  String get serverRequiresEmail => 'Ní mór don fhreastalaí seo do sheoladh ríomhphoist a bhailíochtú le haghaidh clárúcháin.';

  @override
  String get optionalGroupName => '(Optional) Ainm an ghrúpa';

  @override
  String get or => 'Nó';

  @override
  String get participant => 'Rannpháirtí';

  @override
  String get participatingUserDevices => 'Gléasanna úsáideora rannpháirteacha';

  @override
  String get passphraseOrKey => 'pasfhrása nó eochair téarnaimh';

  @override
  String get password => 'Pasfhocal';

  @override
  String get passwordForgotten => 'Pasfhocal dearmadta';

  @override
  String get passwordHasBeenChanged => 'Athraíodh an pasfhocal';

  @override
  String get passwordRecovery => 'Aisfháil pasfhocail';

  @override
  String get people => 'Daoine';

  @override
  String get pickImage => 'Roghnaigh íomhá';

  @override
  String get pin => 'Biorán';

  @override
  String play(Object fileName) {
    return 'Seinn $fileName';
  }

  @override
  String get pleaseChoose => 'Roghnaigh le do thoil';

  @override
  String get pleaseChooseAPasscode => 'Roghnaigh paschód le do thoil';

  @override
  String get pleaseChooseAUsername => 'Roghnaigh ainm úsáideora le do thoil';

  @override
  String get pleaseClickOnLink => 'Cliceáil ar an nasc sa ríomhphost agus ansin lean ar aghaidh.';

  @override
  String get pleaseEnter4Digits => 'Iontráil 4 dhigit le do thoil nó fág folamh chun glas aipe a dhíchumasú.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Iontráil ID Matrix le do thoil.';

  @override
  String get pleaseEnterSecurityKey => 'Iontráil d\'eochair slándála le do thoil:';

  @override
  String get pleaseEnterYourPassword => 'Iontráil do phasfhocal le do thoil';

  @override
  String get pleaseEnterYourPin => 'Cuir isteach d\'uimhir PIN le do thoil';

  @override
  String get pleaseEnterYourUsername => 'Cuir isteach d\'ainm úsáideora le do thoil';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Lean na treoracha ar an suíomh gréasáin agus tapáil \"ar aghaidh\".';

  @override
  String get privacy => 'Príobháideacht';

  @override
  String get publicGroups => 'Grúpaí Poiblí';

  @override
  String get publicKey => 'Eochair Phoiblí';

  @override
  String get publicRooms => 'Seomraí Poiblí';

  @override
  String get publicSpace => 'Spás poiblí';

  @override
  String get pushRules => 'Rialacha na bhfógraí';

  @override
  String get reason => 'Fáth';

  @override
  String get recording => 'Ag Taifeadadh';

  @override
  String redactedAnEvent(Object username) {
    return 'Rinne $username cinsire imeacht';
  }

  @override
  String get redactMessage => 'Bain teachtaireacht amach';

  @override
  String get register => 'Cláraigh';

  @override
  String get reject => 'Diúltaigh';

  @override
  String rejectedTheInvitation(Object username) {
    return 'Dhiúltaigh $username don chuireadh';
  }

  @override
  String get rejoin => 'Téigh ar ais isteach';

  @override
  String get remove => 'Bain';

  @override
  String get removeAllOtherDevices => 'Bain gach gléas eile';

  @override
  String removedBy(Object username) {
    return 'Bainte de ag $username';
  }

  @override
  String get removeDevice => 'Bain gléas';

  @override
  String get unbanFromChat => 'Cuir deireadh an cosc ón gcomhrá';

  @override
  String get removeMessage => 'Bain teachtaireacht';

  @override
  String get removeYourAvatar => 'Bain d\'abhatár';

  @override
  String get renderRichContent => 'Taispeáin ábhar teachtaireachta saibhir';

  @override
  String get replaceRoomWithNewerVersion => 'Cuir leagan seomra níos nuaí in ionad an tseomra';

  @override
  String get reply => 'Freagair';

  @override
  String get reportMessage => 'Tuairiscigh teachtaireacht';

  @override
  String get requestPermission => 'Iarr cead';

  @override
  String get requestToReadOlderMessages => 'Iarraidh teachtaireachtaí níos sine a léamh';

  @override
  String get revokeAllPermissions => 'Cúlghair gach cead';

  @override
  String get roomHasBeenUpgraded => 'Uasghrádaíodh an seomra';

  @override
  String get roomVersion => 'Leagan seomra';

  @override
  String get saturday => 'Dé Sathairn';

  @override
  String savedFileAs(Object filename) {
    return 'Sábháladh comhad mar $filename';
  }

  @override
  String get saveFile => 'Sábháil comhad';

  @override
  String get saveFileToFolder => 'Sábháil comhad chuig an bhfillteán seo';

  @override
  String get search => 'Cuardaigh';

  @override
  String get searchForAChat => 'Cuardaigh comhrá';

  @override
  String get security => 'Slándáil';

  @override
  String get securityKey => 'Eochair slándála';

  @override
  String get securityKeyLost => 'Ar chaill tú d\'eochair slándála?';

  @override
  String seenByUser(Object username) {
    return 'Le feiceáil ag $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Le feiceáil ag $username agus $count daoine eile',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Le feiceáil ag $username agus $username2';
  }

  @override
  String get send => 'Seol';

  @override
  String get sendAMessage => 'Seol teachtaireacht';

  @override
  String get sendAsText => 'Seol mar théacs';

  @override
  String get sendAudio => 'Seol fuaim';

  @override
  String get sendBugReports => 'Ceadaigh tuairiscí fabhtanna a sheoladh le sentry.io';

  @override
  String get sendFile => 'Seol comhad';

  @override
  String get sendImage => 'Seol íomhá';

  @override
  String get sendMessages => 'Seol teachtaireachtaí';

  @override
  String get sendOriginal => 'Seol an bunchóip';

  @override
  String get sendSticker => 'Seol greamán';

  @override
  String get sendVideo => 'Seol físeán';

  @override
  String sentAFile(Object username) {
    return 'Sheol $username comhad';
  }

  @override
  String sentAnAudio(Object username) {
    return 'Sheol $username fuaim';
  }

  @override
  String sentAPicture(Object username) {
    return 'Sheol $username pictiúr';
  }

  @override
  String sentASticker(Object username) {
    return 'Sheol $username greamán';
  }

  @override
  String sentAVideo(Object username) {
    return 'Sheol $username físeán';
  }

  @override
  String sentCallInformations(Object senderName) {
    return 'Sheol $senderName faisnéis maidir le glaonna';
  }

  @override
  String get sentryInfo => 'Eolas faoi do phríobháideacht: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Tá an seisiún fíoraithe';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Socraigh pictiúr próifíle';

  @override
  String get setAsCanonicalAlias => 'Socraigh mar phríomh-ailias';

  @override
  String get setCustomEmotes => 'Socraigh straoiseoga saincheaptha';

  @override
  String get setGroupDescription => 'Socraigh cur síos ar an ngrúpa';

  @override
  String get setInvitationLink => 'Socraigh nasc cuiridh';

  @override
  String get setPermissionsLevel => 'Socraigh leibhéal ceadanna';

  @override
  String get setStatus => 'Cuir stádas';

  @override
  String get settings => 'Socruithe';

  @override
  String get share => 'Roinn';

  @override
  String sharedTheLocation(Object username) {
    return 'Roinn $username an suíomh';
  }

  @override
  String get shareLocation => 'Roinn suíomh';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Taispeáin pasfhocal';

  @override
  String get signUp => 'Cláraigh Cuntas';

  @override
  String get singlesignon => 'Sínigh Aonair ar';

  @override
  String get skip => 'Léim';

  @override
  String get soundVibrationLedColor => 'Fuaim, tonnchrith LED-dath';

  @override
  String get sourceCode => 'Cód foinseach';

  @override
  String get spaceIsPublic => 'Tá an spás poiblí';

  @override
  String get spaceName => 'Ainm an spáis';

  @override
  String startedACall(Object senderName) {
    return 'Thosaigh $senderName glao';
  }

  @override
  String get startYourFirstChat => 'Tosaigh do chéad chomhrá anois! 🙂\n- Tapáil ar an gcnaipe teachtaireachta\n- Cuir isteach ainm úsáideora cara\n- Bíodh spraoi agat ag comhrá';

  @override
  String get status => 'Staid';

  @override
  String get statusExampleMessage => 'Conas atá tú inniu?';

  @override
  String get submit => 'Cuir isteach';

  @override
  String get sunday => 'Dé Domhnaigh';

  @override
  String get synchronizingPleaseWait => 'Ag sioncrónú... Fan, le do thoil.';

  @override
  String get systemTheme => 'Córas';

  @override
  String get tapOnDeviceToVerify => 'Tapáil ar ghléas le fíorú';

  @override
  String get tapToShowImage => 'Tapáil chun íomhá a thaispeáint';

  @override
  String get tapToShowMenu => 'Tapáil chun an roghchlár a thaispeáint';

  @override
  String get theyDontMatch => 'Níl siad céanna';

  @override
  String get theyMatch => 'Tá siad céanna';

  @override
  String get thisRoomHasBeenArchived => 'Tá an seomra seo curtha i gcartlann.';

  @override
  String get thursday => 'Déardaoin';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours12:$minutes $suffix';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Scoránaigh mar ceann is fearr leat';

  @override
  String get toggleMuted => 'Scoránaigh mar ciúnaithe';

  @override
  String get toggleUnread => 'Marcáil Léite/Neamhléite';

  @override
  String get tooManyRequestsWarning => 'An iomarca iarratas. Bain triail eile as níos déanaí!';

  @override
  String get transferFromAnotherDevice => 'Aistriú ó ghléas eile';

  @override
  String get tryToSendAgain => 'Déan iarracht a sheoladh arís';

  @override
  String get tuesday => 'Dé Máirt';

  @override
  String get unavailable => 'Níl ar fáil';

  @override
  String unbannedUser(Object username, Object targetName) {
    return 'Chuir $username deireadh an cosc $targetName';
  }

  @override
  String get unblockDevice => 'Díbhlocáil Gléas';

  @override
  String get unknownDevice => 'Gléas anaithnid';

  @override
  String get unknownEncryptionAlgorithm => 'Algartam criptithe anaithnid';

  @override
  String unknownEvent(Object type) {
    return 'Imeacht anaithnid \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Seisiún anaithnid, fíoraigh é le do thoil';

  @override
  String get unlockChatBackup => 'Díghlasáil cúltaca comhrá';

  @override
  String get unmuteChat => 'Neamhciúnaigh comhrá';

  @override
  String get unpin => 'Bain biorán';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 comhrá neamhléite',
      other: '$unreadCount comhráite neamhléite',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 teachtaireacht neamhléite',
      other: '{unreadCount',
    );
  }

  @override
  String get useAmoledTheme => 'Úsáid dathanna comhoiriúnacha le AMOLED?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return 'tá $username agus $count daoine eile ag clóscríobh…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return 'Tá $username agus $username2 ag clóscríobh…';
  }

  @override
  String userIsTyping(Object username) {
    return 'Tá $username ag clóscríobh…';
  }

  @override
  String userLeftTheChat(Object username) {
    return 'D\'fhág $username an comhrá';
  }

  @override
  String get username => 'Ainm úsáideora';

  @override
  String get userNotVerified => 'Níl an t-úsáideoir fíoraithe';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return 'Sheol $username imeacht $type';
  }

  @override
  String get userUnknownVerification => 'Tá stádas fíoraithe anaithnid ag an úsáideoir';

  @override
  String get userVerified => 'Tá an t-úsáideoir fíoraithe';

  @override
  String get unverified => 'Unverified';

  @override
  String get verified => 'Deimhnithe';

  @override
  String get verifiedSession => 'Fíoraíodh an seisiún go rathúil!';

  @override
  String get verify => 'Deimhnigh';

  @override
  String get verifyManual => 'Fíoraigh de láimh';

  @override
  String get verifyStart => 'Tosaigh Fíorú';

  @override
  String get verifySuccess => 'D\'fhíoraigh tú go rathúil!';

  @override
  String get verifyTitle => 'Ag fíorú cuntas eile';

  @override
  String get verifyUser => 'Fíoraigh Úsáideoir';

  @override
  String get videoCall => 'Físghlao';

  @override
  String get visibilityOfTheChatHistory => 'Infheictheacht stair na comhrá';

  @override
  String get visibleForAllParticipants => 'Infheicthe do na rannpháirtithe go léir';

  @override
  String get visibleForEveryone => 'Infheicthe do gach duine';

  @override
  String get voiceMessage => 'Glórphost';

  @override
  String get waitingPartnerAcceptRequest => 'Ag fanacht le comhpháirtí glacadh leis an iarratas…';

  @override
  String get waitingPartnerEmoji => 'Ag fanacht le comhpháirtí glacadh leis na straoiseoga…';

  @override
  String get waitingPartnerNumbers => 'Ag fanacht le comhpháirtí glacadh leis na huimhreacha …';

  @override
  String get wallpaper => 'Cúlbhrat';

  @override
  String get warning => 'Rabhadh!';

  @override
  String get warningEncryptionInBeta => 'Tá criptiú ó dheireadh go deireadh i mBéite faoi láthair! Úsáid ar do phriacal féin!';

  @override
  String get wednesday => 'Dé Céadaoin';

  @override
  String get welcomeText => 'Fáilte chuig an teachtaire meandarach is gleoite sa líonra Matrix.';

  @override
  String get weSentYouAnEmail => 'Sheolamar ríomhphost chugat';

  @override
  String get whoCanPerformWhichAction => 'Cé atá in ann an gníomh a dhéanamh';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Cé a bhfuil cead aige/aici dul isteach sa ghrúpa seo';

  @override
  String get whyDoYouWantToReportThis => 'Cén fáth ar mhaith leat é seo a thuairisciú?';

  @override
  String get wipeChatBackup => 'Glan do cúltaca comhrá a chruthú eochair slándála nua?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Leis na seoltaí seo is féidir leat do phasfhocal a athshlánú.';

  @override
  String get writeAMessage => 'Scríobh teachtaireacht…';

  @override
  String get yes => 'Tá';

  @override
  String get you => 'Tú';

  @override
  String get youAreInvitedToThisChat => 'Tugtar cuireadh duit chuig an gcomhrá seo';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Níl tú ag glacadh páirte sa chomhrá seo a thuilleadh';

  @override
  String get youCannotInviteYourself => 'Ní féidir leat cuireadh a thabhairt duit féin';

  @override
  String get youHaveBeenBannedFromThisChat => 'Cuireadh cosc ort ón gcomhrá seo';

  @override
  String get yourChatsAreBeingSynced => 'Tá do chuid comhráite á sioncronú…';

  @override
  String get yourOwnUsername => 'D\'ainm úsáideora féin';

  @override
  String get yourPublicKey => 'D\'eochair phoiblí';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Beidh tú ceangailte le $homeserver';
  }

  @override
  String get zoomIn => 'Zúmáil isteach';

  @override
  String get zoomOut => 'Zúmáil amach';

  @override
  String get messageInfo => 'Message info';

  @override
  String get time => 'Time';

  @override
  String get messageType => 'Message Type';

  @override
  String get sender => 'Sender';

  @override
  String get openGallery => 'Open gallery';

  @override
  String get removeFromSpace => 'Remove from class';

  @override
  String get removeFromSpaceDescription => 'This removes this chat from the current class. It will then still be visible under \"All chats\".';

  @override
  String get addToSpaceDescription => 'Select a class to add this chat to it.';

  @override
  String get start => 'Start';

  @override
  String get setupChatBackupNow => 'Set up your chat backup now';

  @override
  String get pleaseEnterSecurityKeyDescription => 'To unlock your chat backup, please enter your security key that has been generated in a previous session. Your security key is NOT your password.';

  @override
  String get saveTheSecurityKeyNow => 'Save the security key now';

  @override
  String get addToStory => 'Add to story';

  @override
  String get publish => 'Publish';

  @override
  String get whoCanSeeMyStories => 'Who can see my stories?';

  @override
  String get unsubscribeStories => 'Unsubscribe stories';

  @override
  String get thisUserHasNotPostedAnythingYet => 'This user has not posted anything in their story yet';

  @override
  String get yourStory => 'Your story';

  @override
  String get replyHasBeenSent => 'Reply has been sent';

  @override
  String videoWithSize(Object size) {
    return 'Video ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'Story from $date: \n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Please note that people can see and contact each other in your story.';

  @override
  String get whatIsGoingOn => 'What is going on?';

  @override
  String get addDescription => 'Add description';

  @override
  String get storyPrivacyWarning => 'Please note that people can see and contact each other in your story. Your stories will be visible for 24 hours but there is no guarantee that they will be deleted from all devices and servers.';

  @override
  String get iUnderstand => 'I understand';

  @override
  String get openChat => 'Open Chat';

  @override
  String get markAsRead => 'Mark as read';

  @override
  String get reportUser => 'Report user';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get matrixWidgets => 'Matrix Widgets';

  @override
  String get integrationsNotImplemented => 'Editing widgets and integrations is not possible yet.';

  @override
  String get editIntegrations => 'Edit widgets and integrations';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender reacted with $reaction';
  }

  @override
  String get pinMessage => 'Pin to room';

  @override
  String get pinnedEventsError => 'Error loading pinned messages';

  @override
  String get confirmEventUnpin => 'Are you sure to permanently unpin the event?';

  @override
  String get emojis => 'Emojis';

  @override
  String get placeCall => 'Place call';

  @override
  String get voiceCall => 'Voice call';

  @override
  String get unsupportedAndroidVersion => 'Unsupported Android version';

  @override
  String get unsupportedAndroidVersionLong => 'This feature requires a newer Android version. Please check for updates or Lineage OS support.';

  @override
  String get videoCallsBetaWarning => 'Tabhair faoi deara go bhfuil físglaonna i béite. B\'fhéidir nach bhfeidhmíonn siad ar gach ardán chomh atá súil aige ná ar bith.';

  @override
  String get experimentalVideoCalls => 'Experimental video calls';

  @override
  String get emailOrUsername => 'Ríomhphost nó ainm úsáideora';

  @override
  String switchToAccount(Object number) {
    return 'Switch to account $number';
  }

  @override
  String get nextAccount => 'Next account';

  @override
  String get previousAccount => 'Previous account';

  @override
  String get editWidgets => 'Edit widgets';

  @override
  String get addWidget => 'Add widget';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Text note';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Custom';

  @override
  String get widgetName => 'Name';

  @override
  String get widgetUrlError => 'This is not a valid URL.';

  @override
  String get widgetNameError => 'Please provide a display name.';

  @override
  String get errorAddingWidget => 'Error adding the widget.';

  @override
  String get youRejectedTheInvitation => 'You rejected the invitation';

  @override
  String get youJoinedTheChat => 'You joined the chat';

  @override
  String get youAcceptedTheInvitation => 'You accepted the invitation';

  @override
  String youBannedUser(Object user) {
    return 'You banned $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(Object user) {
    return 'You have withdrawn the invitation for $user';
  }

  @override
  String youInvitedBy(Object user) {
    return 'You have been invited by $user';
  }

  @override
  String youInvitedUser(Object user) {
    return 'You invited $user';
  }

  @override
  String youKicked(Object user) {
    return 'You kicked $user';
  }

  @override
  String youKickedAndBanned(Object user) {
    return 'You kicked and banned $user';
  }

  @override
  String youUnbannedUser(Object user) {
    return 'You unbanned $user';
  }

  @override
  String get noEmailWarning => 'Please enter a valid email address. Otherwise you won\'t be able to reset your password. If you don\'t want to, tap again on the button to continue.';
}
