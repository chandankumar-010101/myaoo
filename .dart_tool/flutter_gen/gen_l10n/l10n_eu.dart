

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Basque (`eu`).
class L10nEu extends L10n {
  L10nEu([String locale = 'eu']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Pasahitzak ez datoz bat!';

  @override
  String get pleaseEnterValidEmail => 'Mesedez, idatzi baliozko ePosta helbide bat.';

  @override
  String get repeatPassword => 'Berridatzi pasahitza';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Mesedez, aukeratu gutxienez $min karaktere.';
  }

  @override
  String get about => 'Honi buruz';

  @override
  String get accept => 'Ados';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username-(e)k gonbidapena onartu du';
  }

  @override
  String get account => 'Kontua';

  @override
  String get accountInformation => 'Kontuaren informazioa';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username(e)k puntuz puntuko zifraketa gaitu du';
  }

  @override
  String get addEmail => 'Gehitu eposta';

  @override
  String get addGroupDescription => 'Gehitu taldearen deskribapena';

  @override
  String get addNewFriend => 'Gehitu lagun berria';

  @override
  String get addToSpace => 'Gehitu gunera';

  @override
  String get admin => 'Administratzailea';

  @override
  String get alias => 'ezizena';

  @override
  String get all => 'Guztia';

  @override
  String get allChats => 'Txat guztiak';

  @override
  String get alreadyHaveAnAccount => 'Baduzu kontu bat?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName-(e)k deia erantzun du';
  }

  @override
  String get anyoneCanJoin => 'Edonor batu daiteke';

  @override
  String get appLock => 'Aplikazioaren blokeoa';

  @override
  String get archive => 'Artxibatu';

  @override
  String get archivedRoom => 'Artxibatutako gelak';

  @override
  String get areGuestsAllowedToJoin => 'Ba al dute batzeko baimenik erabiltzaile gonbidatuek?';

  @override
  String get areYouSure => 'Ziur al zaude?';

  @override
  String get areYouSureYouWantToLogout => 'Ziur zaude saioa amaitu nahi duzula?';

  @override
  String get askSSSSSign => 'Beste pertsona ziurtatzeko, mesedez, sartu zure biltegiratze segururako pasaesaldia edo berreskuratze gakoa.';

  @override
  String get askSSSSVerify => 'Zure saioa egiaztatzeko, mesedez sar ezazu zure biltegiratze segururako pasaesaldia edo berreskuratze gakoa.';

  @override
  String askVerificationRequest(Object username) {
    return '$username-(r)en egiaztatze eskaera onartu?';
  }

  @override
  String get audioPlayerPause => 'Gelditu';

  @override
  String get audioPlayerPlay => 'Abiarazi';

  @override
  String get authentication => 'Autentifikazioa';

  @override
  String get autoplayImages => 'Automatikoki abiarazi sticker eta emote animatuak';

  @override
  String get avatarHasBeenChanged => 'Profileko irudia aldatua izan da';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Zerbitzariak ondorengo aukerak ditu saioa hasteko:\n${serverVersions}\nBaina aplikazioak hauek onartzen ditu:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Bidali enter sakatuz';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Zerbitzariak ondorengo ezaugarriak onartzen ditu:\n${serverVersions}\nBaina aplikazioak hauek baino ez: $supportedVersions';
  }

  @override
  String get banFromChat => 'Berriketa debekatu';

  @override
  String get banned => 'Debekatuta';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username-(e)k $targetName debekatu du';
  }

  @override
  String get blockDevice => 'Gailua blokeatu';

  @override
  String get blocked => 'Blokeatuta';

  @override
  String get botMessages => 'Boten mezuak';

  @override
  String get bubbleSize => 'Puxiken tamaina';

  @override
  String get cachedKeys => 'Gakoak ongi gorde dira';

  @override
  String get cancel => 'Utzi';

  @override
  String cantOpenUri(Object uri) {
    return 'Ezin da $uri URIa ireki';
  }

  @override
  String get changeDeviceName => 'Aldatu gailuaren izena';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username-(e)k berriketako irudia aldatu du';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username(e)k txataren deskribapena aldatu du: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username-(e)k berriketaren izena \'$chatname\'-(e)ra aldatu du';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username-(e)k berriketaren baimenak aldatu ditu';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username(e)k bere izena aldatu du. Aurrerantzean \'$displayname\' izango da';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username-(e)k gonbidatuen sarbide arauak aldatu ditu';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username(e)k gonbidatuen arauak aldatu ditu: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username-(e)k historiaren ikusgarritasuna aldatu du';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username-(e)k historiaren ikusgarritasuna $rules-(e)ra aldatu du';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username-(e)k batze arauak aldatu ditu';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username-(e)k batzeko arauak $joinRules-(e)ra aldatu ditu';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username-(e)k profileko irudia aldatu du';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username-(e)k gelaren ezizena aldatu du';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username-(e)k gonbidapen esteka aldatu du';
  }

  @override
  String get changelog => 'Aldaketen erregistroa';

  @override
  String get changePassword => 'Aldatu pasahitza';

  @override
  String get changesHaveBeenSaved => 'Aldaketak gorde dira';

  @override
  String get changeTheHomeserver => 'Aldatu zerbitzaria';

  @override
  String get changeTheme => 'Aldatu itxura';

  @override
  String get changeTheNameOfTheGroup => 'Taldearen izena aldatu';

  @override
  String get changeTheServer => 'Aldatu zerbitzaria';

  @override
  String get changeWallpaper => 'Atzekaldea aldatu';

  @override
  String get changeYourAvatar => 'Aldatu avatarra';

  @override
  String get channelCorruptedDecryptError => 'Enkriptatzea hondatu egin da';

  @override
  String get chat => 'Berriketa';

  @override
  String get yourUserId => 'Zure erabiltzaile IDa:';

  @override
  String get setupChatBackup => 'Ezarri txaten babeskopiak';

  @override
  String get iWroteDownTheKey => 'Idatzi dut gakoa';

  @override
  String get yourChatBackupHasBeenSetUp => 'Txaten babeskopiak ezarri dira.';

  @override
  String get chatBackup => 'Txataren babeskopia';

  @override
  String get setupChatBackupDescription => 'Mezuak babestearren, sagurtasun gako bat sortu dugu zuretzat.\nMesedez, gorde ezazu toki seguru batean, pasahitz-kudeatzaile batean adibidez.';

  @override
  String get chatBackupDescription => 'Zure txaten babeskopiek segurtasun-gako batekin daude babestuta. Mesedez, ez ezazu gako hori galdu.';

  @override
  String get chatDetails => 'Berriketaren xehetasunak';

  @override
  String get chatHasBeenAddedToThisSpace => 'Txata gune honetara gehitu da';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Txata gune honetatik kendu da';

  @override
  String get chats => 'Txatak';

  @override
  String get chooseAStrongPassword => 'Aukera ezazu pasahitz sendo bat';

  @override
  String get chooseAUsername => 'Aukera ezazu erabiltzaile izen bat';

  @override
  String get clearArchive => 'Ezabatu artxiboa';

  @override
  String get clearText => 'Ezabatu testua';

  @override
  String get close => 'Itxi';

  @override
  String get commandHint_ban => 'Debekatu erabiltzailea gela honetan';

  @override
  String get commandHint_clearcache => 'Ezabatu cachea';

  @override
  String get commandHint_create => 'Sortu taldeko-gela huts bat\nErabili --no-encyption zifratzea desgaitzeko';

  @override
  String get commandHint_discardsession => 'Baztertu saioa';

  @override
  String get commandHint_dm => 'Hasi txat zuzen bat\nErabili --no-encryption zifratzea desgaitu nahi baduzu';

  @override
  String get commandHint_html => 'Bidali testua HTML formatuan';

  @override
  String get commandHint_invite => 'Gonbidatu erabiltzailea gela honetara';

  @override
  String get commandHint_join => 'Sartu gela horretara';

  @override
  String get commandHint_kick => 'Kendu erabiltzaile hori gela honetatik';

  @override
  String get commandHint_leave => 'Utzi gela hau';

  @override
  String get commandHint_me => 'Deskriba zaitez';

  @override
  String get commandHint_myroomavatar => 'Ezarri irudi bat gela honetarako (by mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Ezarri izengoiti bat gela honetarako';

  @override
  String get commandHint_op => 'Zehaztu erabiltzaile honen botere-maila (lehenetsia: 50)';

  @override
  String get commandHint_plain => 'Bidali formaturik gabeko testua';

  @override
  String get commandHint_react => 'Bidali erantzuna erreakzioa bailitzan';

  @override
  String get commandHint_send => 'Bidali testua';

  @override
  String get commandHint_unban => 'Baimendu erabiltzailea gela honetan';

  @override
  String get commandInvalid => 'Komandoa ez da baliogarria';

  @override
  String commandMissing(Object command) {
    return '$command ez da komandoa.';
  }

  @override
  String get compareEmojiMatch => 'Konparatu eta egiazta ezazu ondorengo emojiak beste gailukoaren berdinak direla:';

  @override
  String get compareNumbersMatch => 'Konparatu eta egiazta ezazu ondorengo zenbakiak beste gailukoaren berdinak direla:';

  @override
  String get configureChat => 'Konfiguratu txata';

  @override
  String get confirm => 'Baieztatu';

  @override
  String get connect => 'Konektatu';

  @override
  String get connectionAttemptFailed => 'Konektatze saiakerak huts egin du';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontaktua taldera gonbidatua izan da';

  @override
  String get containsDisplayName => 'pantaila-izena dauka';

  @override
  String get containsUserName => 'erabiltzaile izena dauka';

  @override
  String get contentHasBeenReported => 'Edukia zerbitzariko administrariei jakinarazi zaie';

  @override
  String get contentViewer => 'Eduki ikustailea';

  @override
  String get copiedToClipboard => 'Arbelera kopiatua';

  @override
  String get copy => 'Kopiatu';

  @override
  String get copyToClipboard => 'Kopiatu arbelera';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Ezin izan da mezua deszifratu: $error';
  }

  @override
  String get couldNotSetAvatar => 'Ezin izan da irudia ezarri';

  @override
  String get couldNotSetDisplayname => 'Ezin izan da bistaratze-izena ezarri';

  @override
  String countParticipants(Object count) {
    return '$count partaide';
  }

  @override
  String get create => 'Sortu';

  @override
  String get createAccountNow => 'Sortu kontua orain';

  @override
  String createdTheChat(Object username) {
    return '$username-(e)k berriketa sortu du';
  }

  @override
  String get createNewGroup => 'Talde berria sortu';

  @override
  String get createNewSpace => 'Gune berria';

  @override
  String get crossSigningDisabled => 'Sinadura gurutzatua desgaituta dago';

  @override
  String get crossSigningEnabled => 'Zeharkako sinadura piztuta';

  @override
  String get currentlyActive => 'Unean aktibo';

  @override
  String get darkTheme => 'Iluna';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '$month/$day';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '$year/$month/$day';
  }

  @override
  String get deactivateAccountWarning => 'Honek zure kontua desaktibatuko du. Ezin da desegin! Ziur zaude?';

  @override
  String get defaultPermissionLevel => 'Lehenetsitako botere-maila';

  @override
  String get delete => 'Ezabatu';

  @override
  String get deleteAccount => 'Ezabatu kontua';

  @override
  String get deleteMessage => 'Ezabatu mezua';

  @override
  String get deny => 'Ukatu';

  @override
  String get device => 'Gailua';

  @override
  String get deviceId => 'Gailuaren IDa';

  @override
  String get devices => 'Gailuak';

  @override
  String get deviceVerifyDescription => 'Zifraketa segurua da soilik gailu guztiak egiaztatu badira.';

  @override
  String get directChats => 'Txat zuzenak';

  @override
  String get discardPicture => 'Baztertu irudia';

  @override
  String get discover => 'Deskubritu';

  @override
  String get discoverGroups => 'Diskubritu taldeak';

  @override
  String get displaynameHasBeenChanged => 'Pantaila-izena aldatu da';

  @override
  String get donate => 'Egin dohaintza';

  @override
  String get dontAskAgain => 'Ezeztatu eta ez galdetu berriro';

  @override
  String get downloadFile => 'Deskargatu fitxategia';

  @override
  String get edit => 'Moldatu';

  @override
  String get editBlockedServers => 'Moldatu blokeatutako zerbitzariak';

  @override
  String get editChatPermissions => 'Moldatu txat-baimenak';

  @override
  String get editDisplayname => 'Moldatu ezizena';

  @override
  String get editJitsiInstance => 'Moldatu Jitsi zerbitzaria';

  @override
  String get editRoomAliases => 'Editatu gelako goitizenak';

  @override
  String get editRoomAvatar => 'Moldatu gelaren avatarra';

  @override
  String get emoteExists => 'Emotea dagoeneko existitzen da!';

  @override
  String get emoteInvalid => 'Emotearen laburdura ez da baliogarria!';

  @override
  String get emotePacks => 'Emote sortak gelarako';

  @override
  String get emoteSettings => 'Emote ezarpenak';

  @override
  String get emoteShortcode => 'Emote laburdurak';

  @override
  String get emoteWarnNeedToPick => 'Emote laburdura eta irudi bat aukeratu behar dituzu!';

  @override
  String get emptyChat => 'Hutsik dago';

  @override
  String get enableChatBackup => 'Gaitu txat babeskopiak sarbidea inoiz gal ez dezazun.';

  @override
  String get enableEmotesGlobally => 'Gaitu emote sorta txat guztietarako';

  @override
  String get enableEncryption => 'Gaitu zifraketa';

  @override
  String get enableEncryptionWarning => 'Ezingo duzu zifraketa desgaitu. Ziur zaude?';

  @override
  String get encrypted => 'Zifratuta';

  @override
  String get encryption => 'Zifraketa';

  @override
  String get encryptionAlgorithm => 'Zifraketa algoritmoa';

  @override
  String get encryptionNotEnabled => 'Zifraketa ez dago gaituta';

  @override
  String get end2endEncryptionSettings => 'Puntuz puntuko zifraketaren ezarpenak';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName(e)k deia amaitu du';
  }

  @override
  String get enterAGroupName => 'Idatzi talderako izena';

  @override
  String get enterAnEmailAddress => 'Idatzi helbide elektroniko bat';

  @override
  String get enterASpacepName => 'Idatzi gunerako izena';

  @override
  String get enterAUsername => 'Idatzi erabiltzailea';

  @override
  String get homeserver => 'Zerbitzaria';

  @override
  String get enterYourHomeserver => 'Idatzi zure zerbitzaria';

  @override
  String errorObtainingLocation(Object error) {
    return 'Errorea kokapena lortzerakoan: $error';
  }

  @override
  String get everythingReady => 'Dena prest!';

  @override
  String get extremeOffensive => 'Izugarri iraingarria';

  @override
  String get fileName => 'Fitxategiaren izena';

  @override
  String get fileSize => 'Fitxategiaren tamaina';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Letraren tamaina';

  @override
  String get forward => 'Berbidali';

  @override
  String get friday => 'Ostirala';

  @override
  String get friends => 'Lagunak';

  @override
  String get fromJoining => 'sartzeaz';

  @override
  String get fromTheInvitation => 'gonbidapenaz';

  @override
  String get goToTheNewRoom => 'Joan gela berrira';

  @override
  String get group => 'Taldea';

  @override
  String get groupDescription => 'Taldearen deskribapena';

  @override
  String get groupDescriptionHasBeenChanged => 'Taldearen deskribapena moldatu da';

  @override
  String get groupIsPublic => 'Taldea publikoa da';

  @override
  String get groups => 'Taldeak';

  @override
  String groupWith(Object displayname) {
    return '$displayname duen taldea';
  }

  @override
  String get guestsAreForbidden => 'Gonbidatuak debekatuta daude';

  @override
  String get guestsCanJoin => 'Gonbidatuak sar daitezke';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username(e)k $targetName(r)en gonbidapena baliogabetu du';
  }

  @override
  String get help => 'Laguntza';

  @override
  String get hideRedactedEvents => 'Izkutatu ezabatutakoak';

  @override
  String get hideUnknownEvents => 'Izkutatu gertaera ezezagunak';

  @override
  String get homeserverIsNotCompatible => 'Zerbitzaria ez da bateragarria';

  @override
  String get howOffensiveIsThisContent => 'Zenbaterainoko iraingarria da eduki hau?';

  @override
  String get id => 'IDa';

  @override
  String get identity => 'Nortasuna';

  @override
  String get ignore => 'Ezikusi';

  @override
  String get ignoredUsers => 'Ez ikusia egindako erabiltzaileak';

  @override
  String get ignoreListDescription => 'Molestatzen zaituzten erabiltzaileak ez ikusi ditzakezu. Ez dituzu beraien mezurik jasoko edota gonbidapenik, ezikusitako pertsonen zerrendatik.';

  @override
  String get ignoreUsername => 'Ezikusi erabiltzailea';

  @override
  String get iHaveClickedOnLink => 'Estekan sakatu dut';

  @override
  String get incorrectPassphraseOrKey => 'Pasahitza edo segurtasun gakoa ez da zuzena';

  @override
  String get inoffensive => 'Ez da iraingarria';

  @override
  String get invalidEmail => 'Helbide elektronikoa ez da baliogarria';

  @override
  String get inviteContact => 'Gonbidatu kontaktua';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Gonbidatu kontaktua $groupName(e)ra';
  }

  @override
  String get invited => 'Gonbidatuta';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username(e)k $targetName gonbidatu du';
  }

  @override
  String get invitedUsersOnly => 'Gonbidatutako erabiltzaileak solik';

  @override
  String get inviteForMe => 'Niretzako gonbidapenak';

  @override
  String inviteText(Object username, Object link) {
    return '$username(e)k FluffyChatera gonbidatu zaitu.\n1. Instala ezazu FluffyChat: https://fluffychat.im\n2. Eman ezazu izena edo hasi ezazu saioa\n3. Ireki ezazu gonbidapen esteka: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Zuzena al da ondorengo gailuaren gakoa?';

  @override
  String get isTyping => 'idazten ari da…';

  @override
  String joinedTheChat(Object username) {
    return '$username txatera sartu da';
  }

  @override
  String get joinRoom => 'Sartu gelara';

  @override
  String get keysCached => 'Gakoak cachean daude';

  @override
  String get keysMissing => 'Gakoak falta dira';

  @override
  String kicked(Object username, Object targetName) {
    return '$username(e)k $targetName kaleratu du';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username(e)k $targetName kaleratu eta debekua ezarri dio';
  }

  @override
  String get kickFromChat => 'Kaleratu txatetik';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Azkenekoz aktibo: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Azkenekoz ikusitako IPa';

  @override
  String get lastSeenLongTimeAgo => 'Duela denbora luze';

  @override
  String get leave => 'Irten';

  @override
  String get leftTheChat => 'Txatetik irten da';

  @override
  String get license => 'Lizentzia';

  @override
  String get lightTheme => 'Argia';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Kargatu $count partehartzaile gehiago';
  }

  @override
  String get loadingPleaseWait => 'Kargatzen… Mesedez, itxaron.';

  @override
  String get showSpaces => 'Erakutsi guneen zerrenda';

  @override
  String get loadMore => 'Kargatu gehiago…';

  @override
  String get locationDisabledNotice => 'Kokapen zerbitzuak ez daude gaituta. Mesedez, gaitu itzazu zure kokapena partekatu ahal izateko.';

  @override
  String get locationPermissionDeniedNotice => 'Kokapen baimena ukatu da. Mesedez, eman ezazu zure kokapena partekatzeko.';

  @override
  String get login => 'Hasi saioa';

  @override
  String logInTo(Object homeserver) {
    return 'Hasi saioa $homeserver(e)n';
  }

  @override
  String get loginWithOneClick => 'Hasi saioa klik bakarrarekin';

  @override
  String get logout => 'Amaitu saioa';

  @override
  String get makeAModerator => 'Bilakatu moderatzaile';

  @override
  String get makeAnAdmin => 'Bilakatu administratzaile';

  @override
  String get makeSureTheIdentifierIsValid => 'Egiaztatu identifikazioa baliozkoa dela';

  @override
  String get memberChanges => 'Kideen aldaketak';

  @override
  String get mention => 'Aipamena';

  @override
  String get messages => 'Mezuak';

  @override
  String get messageWillBeRemovedWarning => 'Mezua partehartzaile guztientzat ezabatuko da';

  @override
  String get moderator => 'Moderatzailea';

  @override
  String get monday => 'Astelehena';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'gertaera 1 gehiago',
      other: '$count gertaera gehiago',
    );
  }

  @override
  String get muteChat => 'Mututu txata';

  @override
  String get needPantalaimonWarning => 'Mesedez, kontuan izan Pantalaimon behar duzula oraingoz puntuz puntuko zifraketarako.';

  @override
  String get newChat => 'Txat berria';

  @override
  String get newMessageInFluffyChat => 'Mezu berria FluffyChaten';

  @override
  String get newVerificationRequest => 'Egiaztaketa eskaera berria!';

  @override
  String get next => 'Hurrengoa';

  @override
  String get no => 'Ez';

  @override
  String get noConnectionToTheServer => 'Ez dago konexiorik zerbitzariarekin';

  @override
  String get noCrossSignBootstrap => 'FluffyChatek une honetan ez du gaituta zeharkako-sinadura. Mesedez, gaitu ezazu Element-en ezarpenetan.';

  @override
  String get noDescription => 'Ez dago deskribapenik';

  @override
  String get noEmotesFound => 'Ez da emoterik aurkitu. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Zifraketa aktiba dezakezu soilik gela publikoa ez bada.';

  @override
  String get noGoogleServicesWarning => 'Dirudienez ez daukazu Googleren zerbitzurik zure mugikorrean. Primerako erabakia zure pribatutasunerako! FluffyChaten jakinarazpenak jasotzeko https://microg.org/ edo https://unifiedpush.org/ erabiltzea gomendatzen dugu.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 ez da matrix zerbitzari bat, $server2 erabili nahi duzu haren ordez?';
  }

  @override
  String get createNewChatExplaination => 'QR kodea eskaneatu edota elkarren ondoan ez bazaudete, partekatu gonbidapen esteka.';

  @override
  String get shareYourInviteLink => 'Partekatu gonbidapen esteka';

  @override
  String get typeInInviteLinkManually => 'Eskuz idatzi gonbidapen esteka…';

  @override
  String get scanQrCode => 'Eskaneatu QR kodea';

  @override
  String get noMegolmBootstrap => 'Mesedez, gaitu gakoen online babeskopia Elementen ezarpenetan.';

  @override
  String get none => 'Bat ere ez';

  @override
  String get newPasswordDescription => 'Pasahitza berreskuratu ahal izateko, posta elektroniko bat gehitu beharko zenuke zure kontuan.';

  @override
  String get newUsernameDescription => 'Zure erabiltzaile IDak honako formatua izango du: @erabiltzailea:zerbitzaria';

  @override
  String get noPasswordRecoveryDescription => 'Oraindik ez duzu pasahitza berreskuratzeko modurik gehitu.';

  @override
  String get noPermission => 'Baimenik ez';

  @override
  String get noPublicRoomsFound => 'Ez da gela publikorik aurkitu…';

  @override
  String get noRoomsFound => 'Ez da gelarik aurkitu…';

  @override
  String get noStatusesFound => 'Ez da egoerarik aurkitu oraingoz.';

  @override
  String get notifications => 'Jakinarazpenak';

  @override
  String get notificationsEnabledForThisAccount => 'Kontu honentzat gaitutako jakinarazpenak';

  @override
  String get notSupportedInWeb => 'Ez dago weberako gaituta';

  @override
  String numberSelected(Object number) {
    return '$number aukeratuta';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count erabiltzaile idazten ari dira…';
  }

  @override
  String get obtainingLocation => 'Kokapena lortzen…';

  @override
  String get offensive => 'Iraingarria';

  @override
  String get offline => 'Lineaz kanpo';

  @override
  String get ok => 'Ados';

  @override
  String get online => 'Linean';

  @override
  String get onlineKeyBackupDisabled => 'Gakoen online babeskopia ez dago gaituta';

  @override
  String get onlineKeyBackupEnabled => 'Gakoen online babeskopia gaituta dago';

  @override
  String get oopsPushError => 'Hara! Zoritxarrez, errore bat gertatu da jakinarazpenak ezartzerakoan.';

  @override
  String get oopsSomethingWentWrong => 'Hara, zerbaitek huts egin du…';

  @override
  String get openAppToReadMessages => 'Ireki aplikazioa mezuak irakurtzeko';

  @override
  String get openCamera => 'Ireki kamera';

  @override
  String get openVideoCamera => 'Ireki kamera bideorako';

  @override
  String get oneClientLoggedOut => 'Zure gailuetako batek saioa itxi du';

  @override
  String get addAccount => 'Gehitu kontua';

  @override
  String get editBundlesForAccount => 'Moldatu kontu honetarako sortak';

  @override
  String get addToBundle => 'Gehitu sortara';

  @override
  String get removeFromBundle => 'Kendu sorta honetatik';

  @override
  String get bundleName => 'Sortaren izena';

  @override
  String get enableMultiAccounts => '(BETA) Gaitu kontu bat baino gehiago gailu honetan';

  @override
  String get openInMaps => 'Ireki mapen aplikazioan';

  @override
  String get link => 'Esteka';

  @override
  String get serverRequiresEmail => 'Zerbitzari honek zure posta elektronikoa egiaztatu behar du izena eman dezazun.';

  @override
  String get optionalGroupName => '(Hautazkoa) Taldearen izena';

  @override
  String get or => 'Edo';

  @override
  String get participant => 'Partehartzailea';

  @override
  String get participatingUserDevices => 'Partehartzaileen gailuak';

  @override
  String get passphraseOrKey => 'pasahitza edo berreskuratzeko gakoa';

  @override
  String get password => 'Pasahitza';

  @override
  String get passwordForgotten => 'Ahaztu zait pasahitza';

  @override
  String get passwordHasBeenChanged => 'Pasahitza aldatu da';

  @override
  String get passwordRecovery => 'Pasahitzaren berreskurapena';

  @override
  String get people => 'Jendea';

  @override
  String get pickImage => 'Aukeratu irudi bat';

  @override
  String get pin => 'Iltzatu';

  @override
  String play(Object fileName) {
    return 'Abiarazi $fileName';
  }

  @override
  String get pleaseChoose => 'Mesedez, aukeratu';

  @override
  String get pleaseChooseAPasscode => 'Mesedez, aukeratu kode bat';

  @override
  String get pleaseChooseAUsername => 'Mesedez, aukeratu goitizen bat';

  @override
  String get pleaseClickOnLink => 'Mesedez, sakatu epostako estekan eta ondoren jarraitu.';

  @override
  String get pleaseEnter4Digits => 'Mesedez, idatzi lau zenbaki edo utzi hutsik aplikazioa babestu nahi ez baduzu.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Mesedez, idatzi Matrix ID bat.';

  @override
  String get pleaseEnterSecurityKey => 'Mesedez, idatzi zure babes-gakoa:';

  @override
  String get pleaseEnterYourPassword => 'Mesedez, idatzi zure pasahitza';

  @override
  String get pleaseEnterYourPin => 'Mesedez, idatzi zure zenbakia';

  @override
  String get pleaseEnterYourUsername => 'Mesedez, idatzi zure erabiltzaile-izena';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Mesedez, jarrai itzazu webguneko argibideak eta sakatu Hurrengoa.';

  @override
  String get privacy => 'Pribatutasuna';

  @override
  String get publicGroups => 'Talde publikoak';

  @override
  String get publicKey => 'Gako publikoa';

  @override
  String get publicRooms => 'Gela publikoak';

  @override
  String get publicSpace => 'Gune publikoa';

  @override
  String get pushRules => 'Push arauak';

  @override
  String get reason => 'Zergatia';

  @override
  String get recording => 'Grabatzen';

  @override
  String redactedAnEvent(Object username) {
    return '$username(e)k gertaera bat izkutatu du';
  }

  @override
  String get redactMessage => 'Izkutatu mezua';

  @override
  String get register => 'Eman izena';

  @override
  String get reject => 'Baztertu';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username(e)k gonbidapena baztertu du';
  }

  @override
  String get rejoin => 'Sartu berriro';

  @override
  String get remove => 'Kendu';

  @override
  String get removeAllOtherDevices => 'Kendu gainerako gailuak';

  @override
  String removedBy(Object username) {
    return '$username(e)k kendu du';
  }

  @override
  String get removeDevice => 'Kendu gailua';

  @override
  String get unbanFromChat => 'Baimendu txatean';

  @override
  String get removeMessage => 'Kendu mezua';

  @override
  String get removeYourAvatar => 'Kendu zure avatarra';

  @override
  String get renderRichContent => 'Kargatu mezu aberatseko edukia';

  @override
  String get replaceRoomWithNewerVersion => 'Ordezkatu gela bertsio berriago batekin';

  @override
  String get reply => 'Erantzun';

  @override
  String get reportMessage => 'Salatu mezua';

  @override
  String get requestPermission => 'Eskatu baimena';

  @override
  String get requestToReadOlderMessages => 'Eskatu mezu zaharragoak irakurri ahal izatea';

  @override
  String get revokeAllPermissions => 'Kendu baimen guztiak';

  @override
  String get roomHasBeenUpgraded => 'Gela eguneratu da';

  @override
  String get roomVersion => 'Gelaren bertsioa';

  @override
  String get saturday => 'Larunbata';

  @override
  String savedFileAs(Object filename) {
    return 'Fitxategia $filename izenarekin gorde da';
  }

  @override
  String get saveFile => 'Gorde fitxategia';

  @override
  String get saveFileToFolder => 'Gorde fitxategia hemen';

  @override
  String get search => 'Bilatu';

  @override
  String get searchForAChat => 'Bilatu txat bat';

  @override
  String get security => 'Segurtasuna';

  @override
  String get securityKey => 'Segurtasun gakoa';

  @override
  String get securityKeyLost => 'Galdu al duzu segurtasun gakoa?';

  @override
  String seenByUser(Object username) {
    return '$username(e)k ikusi du';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$username(e)k eta beste $count(e)k ikusi dute',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return '$username(e)k eta $username2(e)k ikusi dute';
  }

  @override
  String get send => 'Bidali';

  @override
  String get sendAMessage => 'Bidali mezua';

  @override
  String get sendAsText => 'Bidali testu bezala';

  @override
  String get sendAudio => 'Bidali audioa';

  @override
  String get sendBugReports => 'Gaitu erroreen berri sentry.io bidez ematea';

  @override
  String get sendFile => 'Bidali fitxategia';

  @override
  String get sendImage => 'Bidali irudia';

  @override
  String get sendMessages => 'Bidali mezuak';

  @override
  String get sendOriginal => 'Bidali jatorrizkoa';

  @override
  String get sendSticker => 'Bidali stickerra';

  @override
  String get sendVideo => 'Bidali bideoa';

  @override
  String sentAFile(Object username) {
    return '$username(e)k fitxategia bidali du';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username(e)k audioa bidali du';
  }

  @override
  String sentAPicture(Object username) {
    return '$username(e)k irudia bidali du';
  }

  @override
  String sentASticker(Object username) {
    return '$username(e)k stickerra bidali du';
  }

  @override
  String sentAVideo(Object username) {
    return '$username(e)k bideoa bidali du';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName(e)k deiaren informazioa bidali du';
  }

  @override
  String get sentryInfo => 'Zure pribatutasunari buruzko informazioa: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Saioa egiaztatu da';

  @override
  String get separateChatTypes => 'Bereizi Mezu Zuzenak, Taldeak eta Guneak';

  @override
  String get setAProfilePicture => 'Ezarri profileko irudia';

  @override
  String get setAsCanonicalAlias => 'Ezarri goitizen nagusi bezala';

  @override
  String get setCustomEmotes => 'Ezarri neurrira egindako emoteak';

  @override
  String get setGroupDescription => 'Ezarri taldeko deskribapena';

  @override
  String get setInvitationLink => 'Ezarri gonbidapen esteka';

  @override
  String get setPermissionsLevel => 'Ezarri baimen maila';

  @override
  String get setStatus => 'Ezarri egoera';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get share => 'Partekatu';

  @override
  String sharedTheLocation(Object username) {
    return '$username(e)k kokapena partekatu du';
  }

  @override
  String get shareLocation => 'Partekatu kokapena';

  @override
  String get showDirectChatsInSpaces => 'Erakutsi zerikusia duten Mezu Zuzenak Taldeetan';

  @override
  String get showPassword => 'Erakutsi pasahitza';

  @override
  String get signUp => 'Eman izena';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'Saltatu';

  @override
  String get soundVibrationLedColor => 'Soinua, dardara, LED kolorea';

  @override
  String get sourceCode => 'Iturburu kodea';

  @override
  String get spaceIsPublic => 'Gunea publikoa da';

  @override
  String get spaceName => 'Gunearen izena';

  @override
  String startedACall(Object senderName) {
    return '$senderName(e)k deia hasi du';
  }

  @override
  String get startYourFirstChat => 'Hasi zure lehen txata oraintxe bertan! 🙂\n- Ttap \'Txat berria\'n\n- Eskaneatu lagun baten QR kodea\n- Dibertitu txateatzen';

  @override
  String get status => 'Egoera';

  @override
  String get statusExampleMessage => 'Zer moduz zaude gaur?';

  @override
  String get submit => 'Bidali';

  @override
  String get sunday => 'Igandea';

  @override
  String get synchronizingPleaseWait => 'Sinkronizatzen… Mesedez, itxaron.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get tapOnDeviceToVerify => 'Sakatu gailu batean egiaztatzeko';

  @override
  String get tapToShowImage => 'Sakatu irudia ikusteko';

  @override
  String get tapToShowMenu => 'Sakatu menua ikusteko';

  @override
  String get theyDontMatch => 'Ez datoz bat';

  @override
  String get theyMatch => 'Bat datoz';

  @override
  String get thisRoomHasBeenArchived => 'Gela hau artxibatu da.';

  @override
  String get thursday => 'Osteguna';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours12:$minutes $suffix';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Piztu / Itzali gogokoa';

  @override
  String get toggleMuted => 'Piztu / Itzali mututuak';

  @override
  String get toggleUnread => 'Markatu irakurrita / irakurri gabe gisa';

  @override
  String get tooManyRequestsWarning => 'Eskaera gehiegi. Mesedez, saia zaitez geroago!';

  @override
  String get transferFromAnotherDevice => 'Beste gailu batetik transferitu';

  @override
  String get tryToSendAgain => 'Saia zaitez berriro bidaltzen';

  @override
  String get tuesday => 'Asteartea';

  @override
  String get unavailable => 'Ez dago eskuragai';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username(e)k $targetName baimendu du';
  }

  @override
  String get unblockDevice => 'Desblokeatu gailua';

  @override
  String get unknownDevice => 'Gailu ezezaguna';

  @override
  String get unknownEncryptionAlgorithm => 'Zifraketa-algoritmo ezezaguna';

  @override
  String unknownEvent(Object type) {
    return '\'$type\' gertaera ezezaguna';
  }

  @override
  String get unknownSessionVerify => 'Saio ezezaguna; mesedez, egiaztatu';

  @override
  String get unlockChatBackup => 'Desblokeatu txataren babeskopia';

  @override
  String get unmuteChat => 'Kendu mozala txatari';

  @override
  String get unpin => 'Kendu iltzea';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: 'irakurri gabeko txat 1',
      other: '$unreadCount txat irakurri gabe',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: 'irakurri gabeko txat bat',
      other: '$unreadEvents mezu irakurri gabe',
    );
  }

  @override
  String get useAmoledTheme => 'Erabili AMOLEDekin bateragarriak diren koloreak?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username eta beste $count idazten ari dira…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username eta $username2 idazten ari dira…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username idazten ari da…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username txatetik irten da';
  }

  @override
  String get username => 'Erabiltzaile izena';

  @override
  String get userNotVerified => 'Erabiltzailea ez da egiaztatu';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username(e)k $type gertaera bat bidali du';
  }

  @override
  String get userUnknownVerification => 'Erabiltzailearen egiaztaketa egoera ezezaguna da';

  @override
  String get userVerified => 'Erabiltzailea egiaztatu da';

  @override
  String get unverified => 'Egiaztatu gabe';

  @override
  String get verified => 'Egiaztatuta';

  @override
  String get verifiedSession => 'Arrakastaz egiaztatu da saioa!';

  @override
  String get verify => 'Egiaztatu';

  @override
  String get verifyManual => 'Eskuz egiaztatu';

  @override
  String get verifyStart => 'Abiarazi egiaztaketa';

  @override
  String get verifySuccess => 'Arrakastaz egiaztatu duzu!';

  @override
  String get verifyTitle => 'Beste kontua egiaztatzen';

  @override
  String get verifyUser => 'Egiaztatu erabiltzailea';

  @override
  String get videoCall => 'Bideo-deia';

  @override
  String get visibilityOfTheChatHistory => 'Txat-historiaren ikusgarritasuna';

  @override
  String get visibleForAllParticipants => 'Partehartzaile guztientzat ikusgai';

  @override
  String get visibleForEveryone => 'Edonorentzat ikusgai';

  @override
  String get voiceMessage => 'Ahozko mezua';

  @override
  String get waitingPartnerAcceptRequest => 'Bikotearen zain eskaera onartu dezan…';

  @override
  String get waitingPartnerEmoji => 'Bikotearen zain emojia onartu dezan…';

  @override
  String get waitingPartnerNumbers => 'Bikotearen zain zenbakia onartu dezan…';

  @override
  String get wallpaper => 'Horma-irudia';

  @override
  String get warning => 'Kontuz!';

  @override
  String get warningEncryptionInBeta => 'Puntuz puntuko zifraketa Beta fasean dago!';

  @override
  String get wednesday => 'Asteazkena';

  @override
  String get welcomeText => 'Ongi etorri Matrix sareko bat-bateko mezularitza programa moñoñoenera.';

  @override
  String get weSentYouAnEmail => 'ePosta bat bidali dizugu';

  @override
  String get whoCanPerformWhichAction => 'Nork egin dezakeen zer';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Nork duen baimena talde honetan sartzeko';

  @override
  String get whyDoYouWantToReportThis => 'Zergatik salatu nahi duzu?';

  @override
  String get wipeChatBackup => 'Ezabatu txataren babeskopia segurtasun-gako berria sortzeko?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Helbide hauekin pasahitza berreskuratu dezakezu.';

  @override
  String get writeAMessage => 'Idatzi mezua…';

  @override
  String get yes => 'Bai';

  @override
  String get you => 'Zeu';

  @override
  String get youAreInvitedToThisChat => 'Txat honetara gonbidatu zaituzte';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Ez duzu txat honetan parte hartzen honezkero';

  @override
  String get youCannotInviteYourself => 'Ezin duzu zure burua gonbidatu';

  @override
  String get youHaveBeenBannedFromThisChat => 'Txat honetan debekatu zaituzte';

  @override
  String get yourChatsAreBeingSynced => 'Zure txatak sinkronizatzen ari dira…';

  @override
  String get yourOwnUsername => 'Zure erabiltzaile propioa';

  @override
  String get yourPublicKey => 'Zure gako publikoa';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return '$homeserver(e)ra konektatuko zara';
  }

  @override
  String get zoomIn => 'Gerturatu';

  @override
  String get zoomOut => 'Urrundu';

  @override
  String get messageInfo => 'Mezuaren xehetasunak';

  @override
  String get time => 'Ordua';

  @override
  String get messageType => 'Mezu mota';

  @override
  String get sender => 'Igorlea';

  @override
  String get openGallery => 'Ireki galeria';

  @override
  String get removeFromSpace => 'Kendu gunetik';

  @override
  String get removeFromSpaceDescription => 'Honek txata uneko gunetik kenduko du. Ikusgai egoten jarraituko du \"Txat guztiak\" atalean.';

  @override
  String get addToSpaceDescription => 'Aukeratu gune bat txat hau gehitzeko.';

  @override
  String get start => 'Hasi';

  @override
  String get setupChatBackupNow => 'Ezarri txaten babeskopia orain';

  @override
  String get pleaseEnterSecurityKeyDescription => 'Txaten babeskopiak desblokeatzeko, mesedez, idatzi aurreko saioan sortutako segurtasun-gakoa. Segurtasun-gakoa EZ da zure pasahitza.';

  @override
  String get saveTheSecurityKeyNow => 'Gorde segurtasun-gakoa orain';

  @override
  String get addToStory => 'Gehitu storyra';

  @override
  String get publish => 'Argitaratu';

  @override
  String get whoCanSeeMyStories => 'Nork ikus ditzazke nire storyak?';

  @override
  String get unsubscribeStories => 'Storyak jasotzeari utzi';

  @override
  String get thisUserHasNotPostedAnythingYet => 'Erabiltzaile honek oraindik ez du ezer argitaratu bere storyetan';

  @override
  String get yourStory => 'Zure storya';

  @override
  String get replyHasBeenSent => 'Erantzuna bidali da';

  @override
  String videoWithSize(Object size) {
    return 'Bideoa ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return '${date}ko storya:\n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Mesedez, kontuan izan jendeak bata bestea ikusi eta harremanetan jar daitekeela zure storyan.';

  @override
  String get whatIsGoingOn => 'Zertan zabiltza?';

  @override
  String get addDescription => 'Gehitu deskribapena';

  @override
  String get storyPrivacyWarning => 'Mesedez, kontuan izan jendeak bata bestea ikus dezakeela eta bata bestearekin harremanetan jar daitekeela. Zure storya 24 orduz egongo da ikusgai baina ezin da ziurtatu gailu eta zerbitzari guztietatik ezabatuko denik denbora pasatakoan.';

  @override
  String get iUnderstand => 'Ulertzen dut';

  @override
  String get openChat => 'Ireki txata';

  @override
  String get markAsRead => 'Markatu irakurrita gisa';

  @override
  String get reportUser => 'Salatu erabiltzailea';

  @override
  String get dismiss => 'Baztertu';

  @override
  String get matrixWidgets => 'Matrixen widgetak';

  @override
  String get integrationsNotImplemented => 'Oraindik ez da posible widget eta integrazioak moldatzea.';

  @override
  String get editIntegrations => 'Moldatu widget eta integrazioak';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender(e)k $reaction(r)ekin erreakzionatu du';
  }

  @override
  String get pinMessage => 'Iltzatu gelan';

  @override
  String get pinnedEventsError => 'Errorea iltzatutako mezua kargatzerakoan';

  @override
  String get confirmEventUnpin => 'Ziur zaude gertaerari iltzea kendu nahi diozula?';

  @override
  String get emojis => 'Emojiak';

  @override
  String get placeCall => 'Egin deia';

  @override
  String get voiceCall => 'Ahozko deia';

  @override
  String get unsupportedAndroidVersion => 'Android bertsioarekin arazoa';

  @override
  String get unsupportedAndroidVersionLong => 'Funtzio honek Android bertsio berriago bat behar du. Mesedez, egiaztatu eguneraketan dauden eta begiratu Lineage OS-ek zure gailuarentzat aukerarik eskaintzen duen.';

  @override
  String get videoCallsBetaWarning => 'Mesedez, kontuan izan bideo deiak beta fasean daudela. Litekeena da behar bezala erabili ezin izatea —erabili ahal badira—.';

  @override
  String get experimentalVideoCalls => 'Bideo-dei esperimentalak';

  @override
  String get emailOrUsername => 'ePosta edo erabiltzaile-izena';

  @override
  String switchToAccount(Object number) {
    return 'Aldatu $number kontura';
  }

  @override
  String get nextAccount => 'Hurrengo kontua';

  @override
  String get previousAccount => 'Aurreko kontua';

  @override
  String get editWidgets => 'Editatu widgetak';

  @override
  String get addWidget => 'Gehitu widgeta';

  @override
  String get widgetVideo => 'Bideoa';

  @override
  String get widgetEtherpad => 'Testu-oharra';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Neurrira egindakoa';

  @override
  String get widgetName => 'Izena';

  @override
  String get widgetUrlError => 'Ez da baliozko URL bat.';

  @override
  String get widgetNameError => 'Mesedez, ezarri/zehaztu izen publiko bat.';

  @override
  String get errorAddingWidget => 'Errorea widgeta gehitzerakoan.';

  @override
  String get youRejectedTheInvitation => 'Gonbidapena baztertu duzu';

  @override
  String get youJoinedTheChat => 'Txatera sartu zara';

  @override
  String get youAcceptedTheInvitation => 'Gonbidapena onartu duzu';

  @override
  String youBannedUser(Object user) {
    return '$user(r)i debekua ezarri diozu';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(Object user) {
    return '$user(r)i luzatutako gonbidapena baliogabetu duzu';
  }

  @override
  String youInvitedBy(Object user) {
    return '$user(e)k gonbidatu zaitu';
  }

  @override
  String youInvitedUser(Object user) {
    return '$user gonbidatu duzu';
  }

  @override
  String youKicked(Object user) {
    return '$user kanporatu duzu';
  }

  @override
  String youKickedAndBanned(Object user) {
    return '$user kanporatu eta debekua ezarri diozu';
  }

  @override
  String youUnbannedUser(Object user) {
    return '$user(r)i debekua kendu diozu';
  }

  @override
  String get noEmailWarning => 'Please enter a valid email address. Otherwise you won\'t be able to reset your password. If you don\'t want to, tap again on the button to continue.';
}
