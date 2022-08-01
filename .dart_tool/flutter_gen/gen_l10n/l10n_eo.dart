

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Esperanto (`eo`).
class L10nEo extends L10n {
  L10nEo([String locale = 'eo']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Passwords do not match!';

  @override
  String get pleaseEnterValidEmail => 'Please enter a valid email address.';

  @override
  String get repeatPassword => 'Repeat password';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Please choose at least $min characters.';
  }

  @override
  String get about => 'Prio';

  @override
  String get accept => 'Akcepti';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username akceptis la inviton';
  }

  @override
  String get account => 'Konto';

  @override
  String get accountInformation => 'Informoj pri konto';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username aktivigis tutvojan ĉifradon';
  }

  @override
  String get addEmail => 'Aldoni retpoŝtadreson';

  @override
  String get addGroupDescription => 'Aldoni priskribon de grupo';

  @override
  String get addNewFriend => 'Aldoni novan amikon';

  @override
  String get addToSpace => 'Aldoni al aro';

  @override
  String get admin => 'Administranto';

  @override
  String get alias => 'kromnomo';

  @override
  String get all => 'Ĉio';

  @override
  String get allChats => 'Ĉiuj babiloj';

  @override
  String get alreadyHaveAnAccount => 'Ĉu vi jam havas konton?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName respondis la vokon';
  }

  @override
  String get anyoneCanJoin => 'Ĉiu ajn povas aliĝi';

  @override
  String get appLock => 'Ŝlosado';

  @override
  String get archive => 'Arĥivo';

  @override
  String get archivedRoom => 'Arĥivita ĉambro';

  @override
  String get areGuestsAllowedToJoin => 'Ĉu gastoj rajtas aliĝi';

  @override
  String get areYouSure => 'Ĉu vi certas?';

  @override
  String get areYouSureYouWantToLogout => 'Ĉu vi certe volas adiaŭi?';

  @override
  String get askSSSSSign => 'Por ke vi povu kontroli (subskribi) la alian personon, bonvolu enigi pasfrazon de via sekreta deponejo aŭ vian rehavan ŝlosilon.';

  @override
  String get askSSSSVerify => 'Bonvolu enigi pasfrazon de via sekura deponejo aŭ vian rehavan ŝlosilon por kontroli vian salutaĵon.';

  @override
  String askVerificationRequest(Object username) {
    return 'Ĉu akcepti ĉi tiun kontrolpeton de $username?';
  }

  @override
  String get audioPlayerPause => 'Paŭzigi';

  @override
  String get audioPlayerPlay => 'Ludi';

  @override
  String get authentication => 'Aŭtentikigo';

  @override
  String get autoplayImages => 'Memage ludi movbildajn glumarkojn kaj mienetojn';

  @override
  String get avatarHasBeenChanged => 'Profilbildo ŝanĝiĝis';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'La hejmservilo subtenas la jenajn specojn de salutoj:\n${serverVersions}\nSed ĉi tiu aplikaĵo subtenas nur:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Sendi per eniga klavo';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'La hejmservilo subtenas la jenajn version de la specifaĵo:\n${serverVersions}\nSed ĉi tiu aplikaĵo subtenas nur $supportedVersions';
  }

  @override
  String get banFromChat => 'Forbari de babilo';

  @override
  String get banned => 'Forbarita';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username forbaris uzanton $targetName';
  }

  @override
  String get blockDevice => 'Bloki aparaton';

  @override
  String get blocked => 'Blokita';

  @override
  String get botMessages => 'Mesaĝoj de robotoj';

  @override
  String get bubbleSize => 'Bubble size';

  @override
  String get cachedKeys => 'Kaŝmemoris ŝlosilojn';

  @override
  String get cancel => 'Nuligi';

  @override
  String cantOpenUri(Object uri) {
    return 'Ne povis malfermi URI $uri';
  }

  @override
  String get changeDeviceName => 'Ŝanĝi nomon de aparato';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username ŝanĝis bildon de la babilo';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username ŝanĝis priskribon de la babilo al: «$description»';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username ŝanĝis nomon de la babilo al: «$chatname»';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username ŝanĝis permesojn pri la babilo';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username ŝanĝis sian prezentan nomon al: $username';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username ŝanĝis regulojn pri aliro de gastoj';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username ŝanĝis regulojn pri aliro de gastoj al: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username ŝanĝis videblecon de la historio';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username ŝanĝis videblecon de la historio al: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username ŝanĝis regulojn pri aliĝado';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username ŝanĝis regulojn pri aliĝado al: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username ŝanĝis sian profilbildon';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username ŝanĝis la kromnomojn de la ĉambro';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username ŝanĝis la invitan ligilon';
  }

  @override
  String get changelog => 'Protokolo de ŝanĝoj';

  @override
  String get changePassword => 'Ŝanĝi pasvorton';

  @override
  String get changesHaveBeenSaved => 'Ŝanĝoj konserviĝis';

  @override
  String get changeTheHomeserver => 'Ŝanĝi hejmservilon';

  @override
  String get changeTheme => 'Ŝanĝu la haŭton';

  @override
  String get changeTheNameOfTheGroup => 'Ŝanĝi nomon de la grupo';

  @override
  String get changeTheServer => 'Ŝanĝi la servilon';

  @override
  String get changeWallpaper => 'Ŝanĝi fonbildon';

  @override
  String get changeYourAvatar => 'Ŝanĝi vian profilbildon';

  @override
  String get channelCorruptedDecryptError => 'La ĉifrado estas difektita';

  @override
  String get chat => 'Babilo';

  @override
  String get yourUserId => 'Your user ID:';

  @override
  String get setupChatBackup => 'Set up chat backup';

  @override
  String get iWroteDownTheKey => 'I wrote down the key';

  @override
  String get yourChatBackupHasBeenSetUp => 'Your chat backup has been set up.';

  @override
  String get chatBackup => 'Savkopiado de babilo';

  @override
  String get setupChatBackupDescription => 'To protect your messages, we have generated a security key for you.\nPlease keep this in a safe place, such as a password manager.';

  @override
  String get chatBackupDescription => 'Via savkopio de babilo estas sekurigita per sekureca ŝlosilo. Bonvolu certigi, ke vi ne perdos ĝin.';

  @override
  String get chatDetails => 'Detaloj pri babilo';

  @override
  String get chatHasBeenAddedToThisSpace => 'Babilo aldoniĝis al ĉi tiu aro';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Babilo foriĝis de ĉi tiu aro';

  @override
  String get chats => 'Babiloj';

  @override
  String get chooseAStrongPassword => 'Elektu fortan pasvorton';

  @override
  String get chooseAUsername => 'Elektu uzantonomon';

  @override
  String get clearArchive => 'Vakigi arĥivon';

  @override
  String get clearText => 'Forigi tekston';

  @override
  String get close => 'Fermi';

  @override
  String get commandHint_ban => 'Forbari la donitan uzanton de ĉi tiu ĉambro';

  @override
  String get commandHint_clearcache => 'Clear cache';

  @override
  String get commandHint_create => 'Create an empty group chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_discardsession => 'Discard session';

  @override
  String get commandHint_dm => 'Start a direct chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_html => 'Sendi tekston formatan je HTML';

  @override
  String get commandHint_invite => 'Inviti la donitan uzanton al ĉi tiu ĉambro';

  @override
  String get commandHint_join => 'Aliĝi al la donita ĉambro';

  @override
  String get commandHint_kick => 'Forigi la donitan uzanton de ĉi tiu ĉambro';

  @override
  String get commandHint_leave => 'Foriri de ĉi tiu ĉambro';

  @override
  String get commandHint_me => 'Priskribu vian agon';

  @override
  String get commandHint_myroomavatar => 'Agordi vian profilbildon por ĉi tiu ĉambro (laŭ mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Agordi vian prezentan nomon en ĉi tiu ĉambro';

  @override
  String get commandHint_op => 'Agordi povnivelon de la donita uzanto (implicite: 50)';

  @override
  String get commandHint_plain => 'Sendi senformatan tekston';

  @override
  String get commandHint_react => 'Sendi respondon kiel reagon';

  @override
  String get commandHint_send => 'Sendi tekston';

  @override
  String get commandHint_unban => 'Malforbari la donitan uzanton de ĉi tiu ĉambro';

  @override
  String get commandInvalid => 'Nevalida ordono';

  @override
  String commandMissing(Object command) {
    return '$command ne estas ordono.';
  }

  @override
  String get compareEmojiMatch => 'Komparu kaj certigu, ke la jenaj bildosignoj samas en ambaŭ aparatoj:';

  @override
  String get compareNumbersMatch => 'Komparu kaj certigu, ke la jenaj numeroj samas en ambaŭ aparatoj:';

  @override
  String get configureChat => 'Agordi babilon';

  @override
  String get confirm => 'Konfirmi';

  @override
  String get connect => 'Konektiĝi';

  @override
  String get connectionAttemptFailed => 'Malsukcesis provo konektiĝi';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontakto invitiĝis al la grupo';

  @override
  String get containsDisplayName => 'Enhavas prezentan nomon';

  @override
  String get containsUserName => 'Enhavas uzantonomon';

  @override
  String get contentHasBeenReported => 'La enhavo raportiĝis al la administrantoj de la servilo';

  @override
  String get contentViewer => 'Vidilo de enhavo';

  @override
  String get copiedToClipboard => 'Kopiite al tondujo';

  @override
  String get copy => 'Kopii';

  @override
  String get copyToClipboard => 'Kopii al tondujo';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Ne povis malĉifri mesaĝon: $error';
  }

  @override
  String get couldNotSetAvatar => 'Ne povis agordi profilbildon';

  @override
  String get couldNotSetDisplayname => 'Ne povis agordi prezentan nomon';

  @override
  String countParticipants(Object count) {
    return '$count partoprenantoj';
  }

  @override
  String get create => 'Krei';

  @override
  String get createAccountNow => 'Krei konton nun';

  @override
  String createdTheChat(Object username) {
    return '$username kreis la babilon';
  }

  @override
  String get createNewGroup => 'Krei novan grupon';

  @override
  String get createNewSpace => 'Nova aro';

  @override
  String get crossSigningDisabled => 'Delegaj subskriboj estas malŝaltitaj';

  @override
  String get crossSigningEnabled => 'Delegaj subskriboj estas ŝaltitaj';

  @override
  String get currentlyActive => 'Nun aktiva';

  @override
  String get darkTheme => 'Malhela';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '${day}a de la ${month}a';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '${day}a de la ${month}a de $year';
  }

  @override
  String get deactivateAccountWarning => 'Ĉi tio malaktivigos vian konton de uzanto. Ne eblas tion malfari! Ĉu certe vi certas?';

  @override
  String get defaultPermissionLevel => 'Norma nivelo de permesoj';

  @override
  String get delete => 'Forigi';

  @override
  String get deleteAccount => 'Forigi konton';

  @override
  String get deleteMessage => 'Forigi mesaĝon';

  @override
  String get deny => 'Malakcepti';

  @override
  String get device => 'Aparato';

  @override
  String get deviceId => 'Identigilo de aparato';

  @override
  String get devices => 'Aparatoj';

  @override
  String get deviceVerifyDescription => 'Ĉifrado nur sekuras kiam ĉiuj aparatoj kontroliĝis.';

  @override
  String get directChats => 'Rektaj babiloj';

  @override
  String get discardPicture => 'Forĵeti bildon';

  @override
  String get discover => 'Trovi';

  @override
  String get discoverGroups => 'Trovu grupojn';

  @override
  String get displaynameHasBeenChanged => 'Prezenta nomo ŝanĝiĝis';

  @override
  String get donate => 'Donaci';

  @override
  String get dontAskAgain => 'Nuligi kaj ne redemandi';

  @override
  String get downloadFile => 'Elŝuti dosieron';

  @override
  String get edit => 'Redakti';

  @override
  String get editBlockedServers => 'Redakti blokitajn servilojn';

  @override
  String get editChatPermissions => 'Redakti permesojn de babilo';

  @override
  String get editDisplayname => 'Redakti prezentan nomon';

  @override
  String get editJitsiInstance => 'Redakti provizanton de Jitsi';

  @override
  String get editRoomAliases => 'Ŝanĝi kromnomojn de ĉambro';

  @override
  String get editRoomAvatar => 'Redakti bildon de ĉambro';

  @override
  String get emoteExists => 'Mieneto jam ekzistas!';

  @override
  String get emoteInvalid => 'Nevalida mallongigo de mieneto!';

  @override
  String get emotePacks => 'Mienetaroj por la ĉambro';

  @override
  String get emoteSettings => 'Agordoj pri mienetoj';

  @override
  String get emoteShortcode => 'Mallongigo de mieneto';

  @override
  String get emoteWarnNeedToPick => 'Vi devas elekti mallongigon de mieneto kaj bildon!';

  @override
  String get emptyChat => 'Malplena babilo';

  @override
  String get enableChatBackup => 'Ŝaltu savkopiadon de babiloj por neniam ree perdi aliron al viaj babiloj.';

  @override
  String get enableEmotesGlobally => 'Ŝalti mienetaron ĉie';

  @override
  String get enableEncryption => 'Ŝalti ĉifradon';

  @override
  String get enableEncryptionWarning => 'Vi ne povos malŝalti la ĉifradon. Ĉu vi certas?';

  @override
  String get encrypted => 'Ĉifrite';

  @override
  String get encryption => 'Ĉifrado';

  @override
  String get encryptionAlgorithm => 'Ĉifra algoritmo';

  @override
  String get encryptionNotEnabled => 'Ĉifrado ne estas ŝaltita';

  @override
  String get end2endEncryptionSettings => 'Agordoj pri tutvoja ĉifrado';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName finis la vokon';
  }

  @override
  String get enterAGroupName => 'Enigu nomon de grupo';

  @override
  String get enterAnEmailAddress => 'Enigu retpoŝtadreson';

  @override
  String get enterASpacepName => 'Enigi nomon de aro';

  @override
  String get enterAUsername => 'Enigu uzantonomon';

  @override
  String get homeserver => 'Hejmservilo';

  @override
  String get enterYourHomeserver => 'Enigu vian hejmservilon';

  @override
  String errorObtainingLocation(Object error) {
    return 'Eraris akirado de loko: $error';
  }

  @override
  String get everythingReady => 'Ĉio pretas!';

  @override
  String get extremeOffensive => 'Tre ofenda';

  @override
  String get fileName => 'Dosiernomo';

  @override
  String get fileSize => 'Grandeco de dosiero';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Grandeco de tiparo';

  @override
  String get forward => 'Plusendi';

  @override
  String get friday => 'Vendredo';

  @override
  String get friends => 'Amikoj';

  @override
  String get fromJoining => 'Ekde aliĝo';

  @override
  String get fromTheInvitation => 'Ekde la invito';

  @override
  String get goToTheNewRoom => 'Iri al la nova ĉambro';

  @override
  String get group => 'Grupo';

  @override
  String get groupDescription => 'Priskribo de grupo';

  @override
  String get groupDescriptionHasBeenChanged => 'Priskribo de grupo ŝanĝiĝis';

  @override
  String get groupIsPublic => 'Grupo estas publika';

  @override
  String get groups => 'Grupoj';

  @override
  String groupWith(Object displayname) {
    return 'Grupo kun $displayname';
  }

  @override
  String get guestsAreForbidden => 'Gastoj estas malpermesitaj';

  @override
  String get guestsCanJoin => 'Gastoj povas aliĝi';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username nuligis la inviton por $targetName';
  }

  @override
  String get help => 'Helpo';

  @override
  String get hideRedactedEvents => 'Kaŝi obskurigitajn eventojn';

  @override
  String get hideUnknownEvents => 'Kaŝi nekonatajn eventojn';

  @override
  String get homeserverIsNotCompatible => 'Hejmservilo ne estas interkonforma';

  @override
  String get howOffensiveIsThisContent => 'Kiel ofenda estas ĉi tiu enhavo?';

  @override
  String get id => 'Identigilo';

  @override
  String get identity => 'Identeco';

  @override
  String get ignore => 'Malatenti';

  @override
  String get ignoredUsers => 'Malatentitaj uzantoj';

  @override
  String get ignoreListDescription => 'Vi povas malatenti uzantojn, kiuj vin ĝenas. Vi ne povos ricevi mesaĝojn nek invitojn al ĉambroj de la uzantoj sur via listo de malatentatoj.';

  @override
  String get ignoreUsername => 'Malatenti uzantonomon';

  @override
  String get iHaveClickedOnLink => 'Mi klakis la ligilon';

  @override
  String get incorrectPassphraseOrKey => 'Neĝusta pasfrazo aŭ rehava ŝlosilo';

  @override
  String get inoffensive => 'Neofenda';

  @override
  String get invalidEmail => 'Nevalida retpoŝtadreso';

  @override
  String get inviteContact => 'Inviti kontakton';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Inviti kontakton al $groupName';
  }

  @override
  String get invited => 'Invitita';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username invitis uzanton $targetName';
  }

  @override
  String get invitedUsersOnly => 'Nur invititoj';

  @override
  String get inviteForMe => 'Invito por mi';

  @override
  String inviteText(Object username, Object link) {
    return '$username invitis vin al FluffyChat. \n1. Instalu la aplikaĵon FluffyChat: https://fluffychat.im \n2. Registriĝu aŭ salutu \n3. Malfermu la invitan ligilon: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Ĉu la jena identigilo de aparato estas ĝusta?';

  @override
  String get isTyping => 'tajpas…';

  @override
  String joinedTheChat(Object username) {
    return '$username aliĝis al la babilo';
  }

  @override
  String get joinRoom => 'Aliĝi al ĉambro';

  @override
  String get keysCached => 'Ŝlosiloj estas kaŝmemoritaj';

  @override
  String get keysMissing => 'Ŝlosiloj mankas';

  @override
  String kicked(Object username, Object targetName) {
    return '$username forpelis uzanton $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username forpelis kaj forbaris uzanton $targetName';
  }

  @override
  String get kickFromChat => 'Forpeli de babilo';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Lastafoje aktiva: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Lastafoje vidita IP-adreso';

  @override
  String get lastSeenLongTimeAgo => 'Vidita antaŭ longe';

  @override
  String get leave => 'Foriri';

  @override
  String get leftTheChat => 'Foriris de la ĉambro';

  @override
  String get license => 'Permesilo';

  @override
  String get lightTheme => 'Hela';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Enlegi $count pliajn partoprenantojn';
  }

  @override
  String get loadingPleaseWait => 'Enlegante… bonvolu atendi.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Enlegi pli…';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get login => 'Saluti';

  @override
  String logInTo(Object homeserver) {
    return 'Saluti servilon $homeserver';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => 'Adiaŭi';

  @override
  String get makeAModerator => 'Igi reguligisto';

  @override
  String get makeAnAdmin => 'Igi administranto';

  @override
  String get makeSureTheIdentifierIsValid => 'Certigu, ke la identigilo estas valida';

  @override
  String get memberChanges => 'Ŝanĝoj de anoj';

  @override
  String get mention => 'Mencii';

  @override
  String get messages => 'Mesaĝoj';

  @override
  String get messageWillBeRemovedWarning => 'Mesaĝo foriĝos por ĉiuj partoprenantoj';

  @override
  String get moderator => 'Reguligisto';

  @override
  String get monday => 'Lundo';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 plia evento',
      other: '$count pliaj eventoj',
    );
  }

  @override
  String get muteChat => 'Silentigi babilon';

  @override
  String get needPantalaimonWarning => 'Bonvolu scii, ke vi ankoraŭ bezonas la programon Pantalaimon por uzi tutvojan ĉifradon.';

  @override
  String get newChat => 'Nova babilo';

  @override
  String get newMessageInFluffyChat => 'Nova mesaĝo en FluffyChat';

  @override
  String get newVerificationRequest => 'Nova kontrolpeto!';

  @override
  String get next => 'Sekva';

  @override
  String get no => 'Ne';

  @override
  String get noConnectionToTheServer => 'Neniu konekto al la servilo';

  @override
  String get noCrossSignBootstrap => 'FluffyChat ankoraŭ ne subtenas ŝaltadon de delegaj subskriboj. Bonvolu ŝalti ilin per Element.';

  @override
  String get noDescription => 'Sen priskribo';

  @override
  String get noEmotesFound => 'Neniuj mienetoj troviĝis. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Vi nur povas aktivigi ĉifradon kiam la ĉambro ne plu estas publike alirebla.';

  @override
  String get noGoogleServicesWarning => 'Ŝajnas, ke via telefono ne havas servojn de Google. Tio estas bona decido por via privateco! Por ricevadi pasivajn sciigojn en FluffyChat, ni rekomendas, ke vi uzu la https://microg.org/ aŭ https://unifiedpush.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 ne estas matriksa servilo, eble provu anstataŭe servilon $server2?';
  }

  @override
  String get createNewChatExplaination => 'Just scan the QR code or share your invite link if you are not next to each other.';

  @override
  String get shareYourInviteLink => 'Share your invite link';

  @override
  String get typeInInviteLinkManually => 'Type in invite link manually...';

  @override
  String get scanQrCode => 'Scan QR code';

  @override
  String get noMegolmBootstrap => 'FluffyChat ankoraŭ ne subtenas ŝaltadon de enreta savkopiado de ŝlosiloj. Bonvolu ŝalti ĝin per Element.';

  @override
  String get none => 'Neniu';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'Your user ID will then have the format @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'Vi ankoraŭ ne aldonis manieron rehavi vian pasvorton.';

  @override
  String get noPermission => 'Neniu permeso';

  @override
  String get noPublicRoomsFound => 'Neniuj publikaj ĉambroj troviĝis…';

  @override
  String get noRoomsFound => 'Neniuj ĉambroj troviĝis…';

  @override
  String get noStatusesFound => 'Neniuj statoj troviĝis ankoraŭ.';

  @override
  String get notifications => 'Sciigoj';

  @override
  String get notificationsEnabledForThisAccount => 'Sciigoj ŝaltiĝis por ĉi tiu konto';

  @override
  String get notSupportedInWeb => 'Nesubtenata de la TTT-versio';

  @override
  String numberSelected(Object number) {
    return '$number elektitaj';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count uzantoj tajpas…';
  }

  @override
  String get obtainingLocation => 'Akirante lokon…';

  @override
  String get offensive => 'Ofenda';

  @override
  String get offline => 'Eksterrete';

  @override
  String get ok => 'bone';

  @override
  String get online => 'Enrete';

  @override
  String get onlineKeyBackupDisabled => 'Enreta savkopiado de ŝlosiloj estas malŝaltita';

  @override
  String get onlineKeyBackupEnabled => 'Enreta savkopiado de ŝlosiloj estas ŝaltita';

  @override
  String get oopsPushError => 'Oj! Bedaŭrinde eraris la agordado de pasivaj sciigoj.';

  @override
  String get oopsSomethingWentWrong => 'Oj! Io misokazis…';

  @override
  String get openAppToReadMessages => 'Malfermu la aplikaĵon por legi mesaĝojn';

  @override
  String get openCamera => 'Malfermi fotilon';

  @override
  String get openVideoCamera => 'Open camera for a video';

  @override
  String get oneClientLoggedOut => 'One of your clients has been logged out';

  @override
  String get addAccount => 'Add account';

  @override
  String get editBundlesForAccount => 'Edit bundles for this account';

  @override
  String get addToBundle => 'Add to bundle';

  @override
  String get removeFromBundle => 'Remove from this bundle';

  @override
  String get bundleName => 'Bundle name';

  @override
  String get enableMultiAccounts => '(BETA) Enable multi accounts on this device';

  @override
  String get openInMaps => 'Open in maps';

  @override
  String get link => 'Link';

  @override
  String get serverRequiresEmail => 'This server needs to validate your email address for registration.';

  @override
  String get optionalGroupName => '(Malnepra) Nomo de grupo';

  @override
  String get or => 'Aŭ';

  @override
  String get participant => 'Partoprenanto';

  @override
  String get participatingUserDevices => 'Partoprenantaj aparatoj de uzanto';

  @override
  String get passphraseOrKey => 'pasfrazo aŭ rehava ŝlosilo';

  @override
  String get password => 'Pasvorto';

  @override
  String get passwordForgotten => 'Forgesita pasvorto';

  @override
  String get passwordHasBeenChanged => 'Pasvorto ŝanĝiĝis';

  @override
  String get passwordRecovery => 'Rehavo de pasvorto';

  @override
  String get people => 'Personoj';

  @override
  String get pickImage => 'Elekti bildon';

  @override
  String get pin => 'Fiksi';

  @override
  String play(Object fileName) {
    return 'Ludi $fileName';
  }

  @override
  String get pleaseChoose => 'Bonvolu elekti';

  @override
  String get pleaseChooseAPasscode => 'Bonvolu elekti paskodon';

  @override
  String get pleaseChooseAUsername => 'Bonvolu elekti uzantonomon';

  @override
  String get pleaseClickOnLink => 'Bonvolu klaki la ligilon en la retletero kaj pluiĝi.';

  @override
  String get pleaseEnter4Digits => 'Bonvolu enigi 4 ciferojn, aŭ nenion por malŝalti ŝlosadon de la aplikaĵo.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Bonvolu enigi identigilon de Matrix.';

  @override
  String get pleaseEnterSecurityKey => 'Bonvolu enigi vian sekurecan ŝlosilon:';

  @override
  String get pleaseEnterYourPassword => 'Bonvolu enigi vian pasvorton';

  @override
  String get pleaseEnterYourPin => 'Bonvolu enigi vian personan identigan numeron';

  @override
  String get pleaseEnterYourUsername => 'Bonvolu enigi vian uzantonomon';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Bonvolu sekvi la instrukciojn de la retejo kaj tuŝetu al «Sekva».';

  @override
  String get privacy => 'Privateco';

  @override
  String get publicGroups => 'Publikaj grupoj';

  @override
  String get publicKey => 'Publika ŝlosilo';

  @override
  String get publicRooms => 'Publikaj ĉambroj';

  @override
  String get publicSpace => 'Publika aro';

  @override
  String get pushRules => 'Reguloj de pasivaj sciigoj';

  @override
  String get reason => 'Kialo';

  @override
  String get recording => 'Registrante';

  @override
  String redactedAnEvent(Object username) {
    return '$username obskurigis eventon';
  }

  @override
  String get redactMessage => 'Obskurigi mesaĝon';

  @override
  String get register => 'Registriĝi';

  @override
  String get reject => 'Rifuzi';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username rifuzis la inviton';
  }

  @override
  String get rejoin => 'Ree aliĝi';

  @override
  String get remove => 'Forigi';

  @override
  String get removeAllOtherDevices => 'Forigi ĉiujn aliajn aparatojn';

  @override
  String removedBy(Object username) {
    return 'Forigita de $username';
  }

  @override
  String get removeDevice => 'Forigi aparaton';

  @override
  String get unbanFromChat => 'Malforbari';

  @override
  String get removeMessage => 'Forigi mesaĝon';

  @override
  String get removeYourAvatar => 'Forigi vian profilbildon';

  @override
  String get renderRichContent => 'Bildigi riĉforman enhavon de mesaĝoj';

  @override
  String get replaceRoomWithNewerVersion => 'Anstataŭigi ĉambron per nova versio';

  @override
  String get reply => 'Respondi';

  @override
  String get reportMessage => 'Raporti mesaĝon';

  @override
  String get requestPermission => 'Peti permeson';

  @override
  String get requestToReadOlderMessages => 'Peti legi pli malnovajn mesaĝojn';

  @override
  String get revokeAllPermissions => 'Nuligi ĉiujn permesojn';

  @override
  String get roomHasBeenUpgraded => 'Ĉambro gradaltiĝis';

  @override
  String get roomVersion => 'Versio de ĉambro';

  @override
  String get saturday => 'Sabato';

  @override
  String savedFileAs(Object filename) {
    return 'Konservi dosieron kun la nomo: $filename';
  }

  @override
  String get saveFile => 'Konservi dosieron';

  @override
  String get saveFileToFolder => 'Konservi dosieron al tiu ĉi dosierujo';

  @override
  String get search => 'Serĉi';

  @override
  String get searchForAChat => 'Serĉi babilon';

  @override
  String get security => 'Sekureco';

  @override
  String get securityKey => 'Sekureca ŝlosilo';

  @override
  String get securityKeyLost => 'Ĉu vi perdis sekurecan ŝlosilon?';

  @override
  String seenByUser(Object username) {
    return 'Vidita de $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vidita de $username kaj $count aliaj',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Vidita de $username kaj $username2';
  }

  @override
  String get send => 'Sendi';

  @override
  String get sendAMessage => 'Sendi mesaĝon';

  @override
  String get sendAsText => 'Sendi kiel tekston';

  @override
  String get sendAudio => 'Sendi sondosieron';

  @override
  String get sendBugReports => 'Permesi raportadon de eraroj per sentry.io';

  @override
  String get sendFile => 'Sendi dosieron';

  @override
  String get sendImage => 'Sendi bildon';

  @override
  String get sendMessages => 'Sendi mesaĝojn';

  @override
  String get sendOriginal => 'Sendi originalon';

  @override
  String get sendSticker => 'Sendi glumarkon';

  @override
  String get sendVideo => 'Sendi filmon';

  @override
  String sentAFile(Object username) {
    return '$username sendis dosieron';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username sendis sondosieron';
  }

  @override
  String sentAPicture(Object username) {
    return '$username sendis bildon';
  }

  @override
  String sentASticker(Object username) {
    return '$username sendis glumarkon';
  }

  @override
  String sentAVideo(Object username) {
    return '$username sendis filmon';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName sendis informojn pri voko';
  }

  @override
  String get sentryInfo => 'Informoj pri via privateco: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Salutaĵo estas kontrolita';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Agordi profilbildon';

  @override
  String get setAsCanonicalAlias => 'Agordi kiel ĉefan kromnomon';

  @override
  String get setCustomEmotes => 'Agordi proprajn mienetojn';

  @override
  String get setGroupDescription => 'Agordi priskribon de grupo';

  @override
  String get setInvitationLink => 'Agordi invitan ligilon';

  @override
  String get setPermissionsLevel => 'Agordi nivelon de permesoj';

  @override
  String get setStatus => 'Agordi staton';

  @override
  String get settings => 'Agordoj';

  @override
  String get share => 'Konigi';

  @override
  String sharedTheLocation(Object username) {
    return '$username konigis sian lokon';
  }

  @override
  String get shareLocation => 'Konigi lokon';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Montri pasvorton';

  @override
  String get signUp => 'Registriĝi';

  @override
  String get singlesignon => 'Ununura saluto';

  @override
  String get skip => 'Preterpasi';

  @override
  String get soundVibrationLedColor => 'Sono, LED-koloro de vibrado';

  @override
  String get sourceCode => 'Fontkodo';

  @override
  String get spaceIsPublic => 'Aro estas publika';

  @override
  String get spaceName => 'Nomo de aro';

  @override
  String startedACall(Object senderName) {
    return '$senderName komencis vokon';
  }

  @override
  String get startYourFirstChat => 'Komencu nun vian unuan babilon! 🙂\n• Tuŝetu al la butono de mesaĝo\n• Enigu la uzantonomon de amiko\n• Ĝuu babiladon';

  @override
  String get status => 'Stato';

  @override
  String get statusExampleMessage => 'Kiel vi fartas?';

  @override
  String get submit => 'Sendi';

  @override
  String get sunday => 'Dimanĉo';

  @override
  String get synchronizingPleaseWait => 'Spegulante… Bonvolu atendi.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get tapOnDeviceToVerify => 'Tuŝetu aparaton por kontroli';

  @override
  String get tapToShowImage => 'Tuŝetu por montri bildon';

  @override
  String get tapToShowMenu => 'Tuŝetu por montri menuon';

  @override
  String get theyDontMatch => 'Ili ne akordas';

  @override
  String get theyMatch => 'Ili akordas';

  @override
  String get thisRoomHasBeenArchived => 'Ĉi tiu ĉambro arĥiviĝis.';

  @override
  String get thursday => 'Ĵaŭdo';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Baskuli elstarigon';

  @override
  String get toggleMuted => 'Basklui silentigon';

  @override
  String get toggleUnread => 'Baskuli legitecon';

  @override
  String get tooManyRequestsWarning => 'Tro multaj petoj. Bonvolu reprovi poste!';

  @override
  String get transferFromAnotherDevice => 'Transporti de alia aparato';

  @override
  String get tryToSendAgain => 'Reprovi sendi';

  @override
  String get tuesday => 'Mardo';

  @override
  String get unavailable => 'Nedisponeble';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username malforbaris uzanton $targetName';
  }

  @override
  String get unblockDevice => 'Malbloki aparaton';

  @override
  String get unknownDevice => 'Nekonata aparato';

  @override
  String get unknownEncryptionAlgorithm => 'Nekonata ĉifra algoritmo';

  @override
  String unknownEvent(Object type) {
    return 'Nekonata evento «$type»';
  }

  @override
  String get unknownSessionVerify => 'Nekonata salutaĵo; bonvolu kontroli';

  @override
  String get unlockChatBackup => 'Malŝlosi savkopion de babilo';

  @override
  String get unmuteChat => 'Malsilentigi babilon';

  @override
  String get unpin => 'Malfiksi';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 nelegita babilo',
      other: '$unreadCount nelegitaj babiloj',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 nelegita mesaĝo',
      other: '$unreadEvents nelegitaj mesaĝoj',
    );
  }

  @override
  String get useAmoledTheme => 'Ĉu uzi kolorojn adaptitajn por AMOLED?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username kaj $count aliaj tajpas…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username kaj $username2 tajpas…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username tajpas…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username foriris de la babilo';
  }

  @override
  String get username => 'Uzantonomo';

  @override
  String get userNotVerified => 'Uzanto ne kontroliĝis';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username sendis eventon de speco $type';
  }

  @override
  String get userUnknownVerification => 'Uzanto havas nekonatan staton de kontrolo';

  @override
  String get userVerified => 'Uzanto kontroliĝis';

  @override
  String get unverified => 'Unverified';

  @override
  String get verified => 'Kontrolita';

  @override
  String get verifiedSession => 'Sukcese kontrolis salutaĵon!';

  @override
  String get verify => 'Kontroli';

  @override
  String get verifyManual => 'Kontroli permane';

  @override
  String get verifyStart => 'Komenci kontrolon';

  @override
  String get verifySuccess => 'Vi sukcese kontrolis!';

  @override
  String get verifyTitle => 'Kontrolante alian konton';

  @override
  String get verifyUser => 'Kontroli uzanton';

  @override
  String get videoCall => 'Vidvoko';

  @override
  String get visibilityOfTheChatHistory => 'Videbleco de historio de la babilo';

  @override
  String get visibleForAllParticipants => 'Videbla al ĉiuj partoprenantoj';

  @override
  String get visibleForEveryone => 'Videbla al ĉiuj';

  @override
  String get voiceMessage => 'Voĉmesaĝo';

  @override
  String get waitingPartnerAcceptRequest => 'Atendante konfirmon de peto de la kunulo…';

  @override
  String get waitingPartnerEmoji => 'Atendante akcepton de la bildosignoj de la kunulo…';

  @override
  String get waitingPartnerNumbers => 'Atendante akcepton de la numeroj, de la kunulo…';

  @override
  String get wallpaper => 'Fonbildo';

  @override
  String get warning => 'Averto!';

  @override
  String get warningEncryptionInBeta => 'Tutvoja ĉifrado estas ankoraŭ beta-versia! Uzu je via propra risko!';

  @override
  String get wednesday => 'Merkredo';

  @override
  String get welcomeText => 'Bonvenu al la plej ĉarma tujmesaĝilo en la reto de Matrix.';

  @override
  String get weSentYouAnEmail => 'Ni sendis retleteron al vi';

  @override
  String get whoCanPerformWhichAction => 'Kiu povas kion';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Kiu rajtas aliĝi al ĉi tiu grupo';

  @override
  String get whyDoYouWantToReportThis => 'Kial vi volas tion ĉi raporti?';

  @override
  String get wipeChatBackup => 'Ĉu forviŝi la savkopion de via babilo por krei novan sekurecan ŝlosilon?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Per tiuj ĉi adresoj vi povas rehavi vian pasvorton.';

  @override
  String get writeAMessage => 'Skribi mesaĝon…';

  @override
  String get yes => 'Jes';

  @override
  String get you => 'Vi';

  @override
  String get youAreInvitedToThisChat => 'Vi estas invitita al ĉi tiu babilo';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Vi ne plu partoprenas ĉi tiun babilon';

  @override
  String get youCannotInviteYourself => 'Vi ne povas inviti vin mem';

  @override
  String get youHaveBeenBannedFromThisChat => 'Vi estas forbarita de ĉi tiu babilo';

  @override
  String get yourChatsAreBeingSynced => 'Viaj babiloj estas spegulataj…';

  @override
  String get yourOwnUsername => 'Via propra uzantonomo';

  @override
  String get yourPublicKey => 'Via publika ŝlosilo';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Vi konektiĝos al $homeserver';
  }

  @override
  String get zoomIn => 'Zomi';

  @override
  String get zoomOut => 'Malzomi';

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
  String get videoCallsBetaWarning => 'Please note that video calls are currently in beta. They might not work as expected or work at all on all platforms.';

  @override
  String get experimentalVideoCalls => 'Experimental video calls';

  @override
  String get emailOrUsername => 'Email or username';

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
