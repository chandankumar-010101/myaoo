

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Swedish (`sv`).
class L10nSv extends L10n {
  L10nSv([String locale = 'sv']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Lösenorden stämmer inte överens!';

  @override
  String get pleaseEnterValidEmail => 'Vänligen ange en giltig e-postadress.';

  @override
  String get repeatPassword => 'Upprepa lösenord';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Vänligen ange minst $min tecken.';
  }

  @override
  String get about => 'Om';

  @override
  String get accept => 'Acceptera';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username accepterade inbjudan';
  }

  @override
  String get account => 'Konto';

  @override
  String get accountInformation => 'Information om kontot';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username aktiverade ändpunktskryptering';
  }

  @override
  String get addEmail => 'Lägg till e-post';

  @override
  String get addGroupDescription => 'Lägg till en gruppbeskrivning';

  @override
  String get addNewFriend => 'Lägg till ny vän';

  @override
  String get addToSpace => 'Lägg till i utrymme';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'alias';

  @override
  String get all => 'Alla';

  @override
  String get allChats => 'Alla chattar';

  @override
  String get alreadyHaveAnAccount => 'Har du redan ett konto?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName besvarade samtalet';
  }

  @override
  String get anyoneCanJoin => 'Vem som helst kan gå med';

  @override
  String get appLock => 'App-lås';

  @override
  String get archive => 'Arkiv';

  @override
  String get archivedRoom => 'Arkiverat Rum';

  @override
  String get areGuestsAllowedToJoin => 'Får gästanvändare gå med';

  @override
  String get areYouSure => 'Är du säker?';

  @override
  String get areYouSureYouWantToLogout => 'Är du säker på att du vill logga ut?';

  @override
  String get askSSSSSign => 'För att kunna signera den andra personen, vänligen ange din lösenfras eller återställningsnyckel för säker lagring.';

  @override
  String get askSSSSVerify => 'Vänligen ange din lösenfras eller återställningsnyckel för säker lagring för att verifiera din session.';

  @override
  String askVerificationRequest(Object username) {
    return 'Acceptera denna verifikationsförfrågan från $username?';
  }

  @override
  String get audioPlayerPause => 'Paus';

  @override
  String get audioPlayerPlay => 'Spela';

  @override
  String get authentication => 'Autentisering';

  @override
  String get autoplayImages => 'Automatisk spela upp animerade klistermärken och emoji';

  @override
  String get avatarHasBeenChanged => 'Avatar har ändrats';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Hemma servern stödjer följande inloggnings typer :\n $serverVersions\nMen denna applikation stödjer enbart:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Skicka med Enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Hemservern stöjder Spec-versionen:\n${serverVersions}\nMen denna app stödjer enbart $supportedVersions';
  }

  @override
  String get banFromChat => 'Bannlys från chatt';

  @override
  String get banned => 'Bannlyst';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username bannlös $targetName';
  }

  @override
  String get blockDevice => 'Blockera Enhet';

  @override
  String get blocked => 'Blockerad';

  @override
  String get botMessages => 'Bot meddelanden';

  @override
  String get bubbleSize => 'Storlek på bubbla';

  @override
  String get cachedKeys => 'Cachade nycklar';

  @override
  String get cancel => 'Avbryt';

  @override
  String cantOpenUri(Object uri) {
    return 'Kan inte öppna URL $uri';
  }

  @override
  String get changeDeviceName => 'Ändra enhetsnamn';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username ändrade sin chatt-avatar';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username ändrade chatt-beskrivningen till: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username ändrade sitt chatt-namn till: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username ändrade chatt-rättigheterna';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username ändrade visningsnamnet till: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username ändrade reglerna för gästaccess';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username ändrade reglerna för gästaccess till: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username ändrade historikens synlighet';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username ändrade historikens synlighet till: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username ändrade anslutningsreglerna';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username ändrade anslutningsreglerna till $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username ändrade sin avatar';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username ändrade rummets alias';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username ändrade inbjudningslänken';
  }

  @override
  String get changelog => 'Förändringslogg';

  @override
  String get changePassword => 'Ändra lösenord';

  @override
  String get changesHaveBeenSaved => 'Ändringarna har blivit sparade';

  @override
  String get changeTheHomeserver => 'Ändra hemserver';

  @override
  String get changeTheme => 'Ändra din stil';

  @override
  String get changeTheNameOfTheGroup => 'Ändra namn på gruppen';

  @override
  String get changeTheServer => 'Ändra server';

  @override
  String get changeWallpaper => 'Ändra bakgrund';

  @override
  String get changeYourAvatar => 'Ändra din avatar';

  @override
  String get channelCorruptedDecryptError => 'Krypteringen har blivit korrupt';

  @override
  String get chat => 'Chatt';

  @override
  String get yourUserId => 'Ditt användar-ID:';

  @override
  String get setupChatBackup => 'Konfigurera chatt-backup';

  @override
  String get iWroteDownTheKey => 'Jag har antecknat nyckeln';

  @override
  String get yourChatBackupHasBeenSetUp => 'Din chatt-backup har konfigurerats.';

  @override
  String get chatBackup => 'Chatt backup';

  @override
  String get setupChatBackupDescription => 'För att skydda dina meddelanden så det skapats en säkerhetsnyckel.\nFörvara nyckeln på ett säkert ställe, t ex med en lösenordshanterare.';

  @override
  String get chatBackupDescription => 'Din chatt backup är skyddad av en säkerhets nyckel. Se till att du inte förlorar den.';

  @override
  String get chatDetails => 'Chatt-detaljer';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chatt har lagts till i detta utrymme';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chatt har tagits bort från detta utrymme';

  @override
  String get chats => 'Chatter';

  @override
  String get chooseAStrongPassword => 'Välj ett starkt lösenord';

  @override
  String get chooseAUsername => 'Välj ett användarnamn';

  @override
  String get clearArchive => 'Rensa arkiv';

  @override
  String get clearText => 'Rensa text';

  @override
  String get close => 'Stäng';

  @override
  String get commandHint_ban => 'Bannlys användaren från detta rum';

  @override
  String get commandHint_clearcache => 'Rensa cache';

  @override
  String get commandHint_create => 'Skapa en tom grupp-chatt\nAnvänd --no-encryption för att inaktivera kryptering';

  @override
  String get commandHint_discardsession => 'Kasta bort sessionen';

  @override
  String get commandHint_dm => 'Starta en direkt-chatt\nAnvänd --no-encryption för att inaktivera kryptering';

  @override
  String get commandHint_html => 'Skicka HTML-formatted text';

  @override
  String get commandHint_invite => 'Bjud in användaren till detta rum';

  @override
  String get commandHint_join => 'Gå med i rum';

  @override
  String get commandHint_kick => 'Ta bort användare från detta rum';

  @override
  String get commandHint_leave => 'Lämna detta rum';

  @override
  String get commandHint_me => 'Beskriv dig själv';

  @override
  String get commandHint_myroomavatar => 'Sätt din bild för detta rum (by mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Sätt ditt användarnamn för rummet';

  @override
  String get commandHint_op => 'Sätt användarens kraft nivå ( standard: 50)';

  @override
  String get commandHint_plain => 'Skicka oformaterad text';

  @override
  String get commandHint_react => 'Skicka svar som reaktion';

  @override
  String get commandHint_send => 'Skicka text';

  @override
  String get commandHint_unban => 'Tillåt användare i rummet';

  @override
  String get commandInvalid => 'Felaktigt kommando';

  @override
  String commandMissing(Object command) {
    return '$command är inte ett kommando.';
  }

  @override
  String get compareEmojiMatch => 'Jämför och se till att följande emoji matchar den andra enheten:';

  @override
  String get compareNumbersMatch => 'Jämför och se till att följande nummer matchar den andra enheten:';

  @override
  String get configureChat => 'Konfigurera chatt';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get connect => 'Anslut';

  @override
  String get connectionAttemptFailed => 'Anslutning misslyckades';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontakten har blivit inbjuden till gruppen';

  @override
  String get containsDisplayName => 'Innehåller visningsnamn';

  @override
  String get containsUserName => 'Innehåller användarnamn';

  @override
  String get contentHasBeenReported => 'Innehållet har rapporterats till server-admins';

  @override
  String get contentViewer => 'Innehållsvisare';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp';

  @override
  String get copy => 'Kopiera';

  @override
  String get copyToClipboard => 'Kopiera till urklipp';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Kunde ej avkoda meddelande: $error';
  }

  @override
  String get couldNotSetAvatar => 'Kunde ej sätta avatar';

  @override
  String get couldNotSetDisplayname => 'Kunde ej sätta visningsnamn';

  @override
  String countParticipants(Object count) {
    return '$count deltagare';
  }

  @override
  String get create => 'Skapa';

  @override
  String get createAccountNow => 'Skapa konto nu';

  @override
  String createdTheChat(Object username) {
    return '$username skapade chatten';
  }

  @override
  String get createNewGroup => 'Skapa ny grupp';

  @override
  String get createNewSpace => 'Nytt utrymme';

  @override
  String get crossSigningDisabled => 'Korssignering av';

  @override
  String get crossSigningEnabled => 'Korssignering på';

  @override
  String get currentlyActive => 'För närvarande aktiv';

  @override
  String get darkTheme => 'Mörkt';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '$day-$month';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '$year-$month-$day';
  }

  @override
  String get deactivateAccountWarning => 'Detta kommer att avaktivera ditt konto. Det här går inte att ångra! Är du säker?';

  @override
  String get defaultPermissionLevel => 'Standard behörighetsnivå';

  @override
  String get delete => 'Radera';

  @override
  String get deleteAccount => 'Ta bort konto';

  @override
  String get deleteMessage => 'Ta bort meddelande';

  @override
  String get deny => 'Neka';

  @override
  String get device => 'Enhet';

  @override
  String get deviceId => 'Enhets-ID';

  @override
  String get devices => 'Enheter';

  @override
  String get deviceVerifyDescription => 'Kryptering är enbart säker när samtliga enheter har verifierats.';

  @override
  String get directChats => 'Direkt Chatt';

  @override
  String get discardPicture => 'Ta bort bilden';

  @override
  String get discover => 'Utforska';

  @override
  String get discoverGroups => 'Utforska grupper';

  @override
  String get displaynameHasBeenChanged => 'Visningsnamn har ändrats';

  @override
  String get donate => 'Donera';

  @override
  String get dontAskAgain => 'Avbryt och fråga inte igen';

  @override
  String get downloadFile => 'Ladda ner fil';

  @override
  String get edit => 'Ändra';

  @override
  String get editBlockedServers => 'redigera blockerade servrar';

  @override
  String get editChatPermissions => 'Ändra chatt-rättigheter';

  @override
  String get editDisplayname => 'Ändra visningsnamn';

  @override
  String get editJitsiInstance => 'Ändra Jitsi-instans';

  @override
  String get editRoomAliases => 'Redigera rum alias';

  @override
  String get editRoomAvatar => 'redigera rumsavatar';

  @override
  String get emoteExists => 'Dekalen existerar redan!';

  @override
  String get emoteInvalid => 'Ogiltig dekal-kod!';

  @override
  String get emotePacks => 'Dekalpaket för rummet';

  @override
  String get emoteSettings => 'Emote inställningar';

  @override
  String get emoteShortcode => 'Dekal kod';

  @override
  String get emoteWarnNeedToPick => 'Du måste välja en dekal-kod och en bild!';

  @override
  String get emptyChat => 'Tom chatt';

  @override
  String get enableChatBackup => 'Aktivera chatt backup för att inte förlora åtkomst till dina chattar.';

  @override
  String get enableEmotesGlobally => 'Aktivera dekal-paket globalt';

  @override
  String get enableEncryption => 'Aktivera kryptering';

  @override
  String get enableEncryptionWarning => 'Du kommer inte ha fortsatt möjlighet till att inaktivera krypteringen. Är du säker?';

  @override
  String get encrypted => 'Krypterad';

  @override
  String get encryption => 'Kryptering';

  @override
  String get encryptionAlgorithm => 'Krypteringsalgoritm';

  @override
  String get encryptionNotEnabled => 'Kryptering är ej aktiverad';

  @override
  String get end2endEncryptionSettings => 'Inställningar för ändpunktskryptering';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName avslutade samtalet';
  }

  @override
  String get enterAGroupName => 'Ange ett gruppnamn';

  @override
  String get enterAnEmailAddress => 'Ange en e-postaddress';

  @override
  String get enterASpacepName => 'Ange utrymmets namn';

  @override
  String get enterAUsername => 'Ange ett användarnamn';

  @override
  String get homeserver => 'Hemserver';

  @override
  String get enterYourHomeserver => 'Ange din hemserver';

  @override
  String errorObtainingLocation(Object error) {
    return 'Fel vid erhållande av plats: $error';
  }

  @override
  String get everythingReady => 'Allt är klart!';

  @override
  String get extremeOffensive => 'Extremt stötande';

  @override
  String get fileName => 'Filnamn';

  @override
  String get fileSize => 'Filstorlek';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Teckensnitt storlek';

  @override
  String get forward => 'Framåt';

  @override
  String get friday => 'Fredag';

  @override
  String get friends => 'Vänner';

  @override
  String get fromJoining => 'Från att gå med';

  @override
  String get fromTheInvitation => 'Från inbjudan';

  @override
  String get goToTheNewRoom => 'Gå till det nya rummet';

  @override
  String get group => 'Grupp';

  @override
  String get groupDescription => 'Gruppbeskrivning';

  @override
  String get groupDescriptionHasBeenChanged => 'Gruppbeskrivningen ändrad';

  @override
  String get groupIsPublic => 'Gruppen är publik';

  @override
  String get groups => 'Grupper';

  @override
  String groupWith(Object displayname) {
    return 'Gruppen med $displayname';
  }

  @override
  String get guestsAreForbidden => 'Gäster är förbjudna';

  @override
  String get guestsCanJoin => 'Gäster kan ansluta';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username har tagit tillbaka inbjudan för $targetName';
  }

  @override
  String get help => 'Hjälp';

  @override
  String get hideRedactedEvents => 'Göm redigerade händelser';

  @override
  String get hideUnknownEvents => 'Göm okända händelser';

  @override
  String get homeserverIsNotCompatible => 'Hemservern är inte kompatibel';

  @override
  String get howOffensiveIsThisContent => 'Hur stötande är detta innehåll?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identitet';

  @override
  String get ignore => 'Ignorera';

  @override
  String get ignoredUsers => 'Ignorera användare';

  @override
  String get ignoreListDescription => 'Du kan ignorera användare som stör dig. Du kommer inte att ha möjlighet att få några meddelanden eller rums-inbjudningar från användare på din personliga ignoreringslista.';

  @override
  String get ignoreUsername => 'Ignorera användarnamn';

  @override
  String get iHaveClickedOnLink => 'Jag har klickat på länken';

  @override
  String get incorrectPassphraseOrKey => 'Felaktig lösenordsfras eller åsterställningsnyckel';

  @override
  String get inoffensive => 'Oförargligt';

  @override
  String get invalidEmail => 'Felaktigt e-post';

  @override
  String get inviteContact => 'Bjud in kontakt';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Bjud in kontakt till $groupName';
  }

  @override
  String get invited => 'Inbjuden';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username bjöd in $targetName';
  }

  @override
  String get invitedUsersOnly => 'Endast inbjudna användare';

  @override
  String get inviteForMe => 'Inbjudning till mig';

  @override
  String inviteText(Object username, Object link) {
    return '$username bjöd in dig till FluffyChat. \n1. Installera FluffyChat: https://fluffychat.im \n2. Registrera dig eller logga in \n3. Öppna inbjudningslänk: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Är föjande enhetsnyckel riktig?';

  @override
  String get isTyping => 'skriver…';

  @override
  String joinedTheChat(Object username) {
    return '$username anslöt till chatten';
  }

  @override
  String get joinRoom => 'Anslut till rum';

  @override
  String get keysCached => 'Nycklarna är cachade';

  @override
  String get keysMissing => 'Nyckarna saknas';

  @override
  String kicked(Object username, Object targetName) {
    return '$username sparkade $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username sparkade och bannade $targetName';
  }

  @override
  String get kickFromChat => 'Sparka från chatt';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Senast aktiv: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Senast visade IP';

  @override
  String get lastSeenLongTimeAgo => 'Sågs för längesedan';

  @override
  String get leave => 'Lämna';

  @override
  String get leftTheChat => 'Lämnade chatten';

  @override
  String get license => 'Licens';

  @override
  String get lightTheme => 'Ljust';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Ladda $count mer deltagare';
  }

  @override
  String get loadingPleaseWait => 'Laddar... Var god vänta.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Ladda mer…';

  @override
  String get locationDisabledNotice => 'Platstjänster är inaktiverade. Var god aktivera dom för att kunna dela din plats.';

  @override
  String get locationPermissionDeniedNotice => 'Plats åtkomst nekad. Var god godkän detta för att kunna dela din plats.';

  @override
  String get login => 'Logga in';

  @override
  String logInTo(Object homeserver) {
    return 'Logga in till $homeserver';
  }

  @override
  String get loginWithOneClick => 'Logga in med ett klick';

  @override
  String get logout => 'Logga ut';

  @override
  String get makeAModerator => 'Skapa en moderator';

  @override
  String get makeAnAdmin => 'Skapa en admin';

  @override
  String get makeSureTheIdentifierIsValid => 'Se till att identifieraren är giltig';

  @override
  String get memberChanges => 'Medlemsändringar';

  @override
  String get mention => 'Nämn';

  @override
  String get messages => 'Meddelanden';

  @override
  String get messageWillBeRemovedWarning => 'Meddelandet kommer tas bort för alla deltagare';

  @override
  String get moderator => 'Moderator';

  @override
  String get monday => 'Måndag';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mer events',
    );
  }

  @override
  String get muteChat => 'Tysta chatt';

  @override
  String get needPantalaimonWarning => 'Var medveten om att du behöver Pantalaimon för att använda ändpunktskryptering tillsvidare.';

  @override
  String get newChat => 'Ny chatt';

  @override
  String get newMessageInFluffyChat => 'Nya meddelanden i FluffyChat';

  @override
  String get newVerificationRequest => 'Ny verifikationsbegäran!';

  @override
  String get next => 'Nästa';

  @override
  String get no => 'Nej';

  @override
  String get noConnectionToTheServer => 'Ingen anslutning till servern';

  @override
  String get noCrossSignBootstrap => 'Fluffychat stödjer ej aktiverad korssignering för tillfället. Vänligen aktivera detta inifrån Element.';

  @override
  String get noDescription => 'Ingen beskrivning';

  @override
  String get noEmotesFound => 'Hittade inga dekaler. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Du kan endast aktivera kryptering när rummet inte längre är publikt tillgängligt.';

  @override
  String get noGoogleServicesWarning => 'De ser ut som att du inte har google-tjänster på din telefon. Det är ett bra beslut för din integritet! För att få push notifikationer i FluffyChat rekommenderar vi att använda https://microg.org/ eller https://unifiedpush.org/ .';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 är inte en matrix server, använd $server2 istället?';
  }

  @override
  String get createNewChatExplaination => 'Skana QR koden eller dela inbjudan länken om ni ej är i närheten av varandra.';

  @override
  String get shareYourInviteLink => 'Dela din inbjudan';

  @override
  String get typeInInviteLinkManually => 'Skriv in länk med inbjudan manuellt...';

  @override
  String get scanQrCode => 'Skanna QR-kod';

  @override
  String get noMegolmBootstrap => 'Vänligen slå på online-nyckelbackup inifrån Element istället.';

  @override
  String get none => 'Ingen';

  @override
  String get newPasswordDescription => 'För att kunna återställa ditt lösenord så bör du vid tillfälle lägga till en e-postadress till ditt konto.';

  @override
  String get newUsernameDescription => 'Ditt användar-ID kommer att ha formatet @användarnamn:servernamn';

  @override
  String get noPasswordRecoveryDescription => 'Du har inte lagt till något sätt för att återställa ditt lösenord än.';

  @override
  String get noPermission => 'Ingen behörighet';

  @override
  String get noPublicRoomsFound => 'Hittade inga publika rum…';

  @override
  String get noRoomsFound => 'Hittade inga rum…';

  @override
  String get noStatusesFound => 'Inga statusar hittade än sålänge.';

  @override
  String get notifications => 'Aviseringar';

  @override
  String get notificationsEnabledForThisAccount => 'Notifikationer är påslaget för detta konto';

  @override
  String get notSupportedInWeb => 'Stöds inte på webben';

  @override
  String numberSelected(Object number) {
    return '$number vald';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count användare skriver…';
  }

  @override
  String get obtainingLocation => 'Erhåller plats…';

  @override
  String get offensive => 'Stötande';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'OK';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => 'Online Nyckel-backup är inaktiverad';

  @override
  String get onlineKeyBackupEnabled => 'Online Nyckel-backup är aktiverad';

  @override
  String get oopsPushError => 'Oj! Tyvärr uppstod ett fel vid upprättande av push notiser.';

  @override
  String get oopsSomethingWentWrong => 'Oops, någonting gick fel…';

  @override
  String get openAppToReadMessages => 'Öppna app för att lästa meddelanden';

  @override
  String get openCamera => 'Öppna kamera';

  @override
  String get openVideoCamera => 'Aktivera kamera för video';

  @override
  String get oneClientLoggedOut => 'En av dina klienter har loggats ut';

  @override
  String get addAccount => 'Lägg till konto';

  @override
  String get editBundlesForAccount => 'Lägg till paket för detta konto';

  @override
  String get addToBundle => 'Utöka paket';

  @override
  String get removeFromBundle => 'Ta bort från paket';

  @override
  String get bundleName => 'Paketnamn';

  @override
  String get enableMultiAccounts => '(BETA) Aktivera multi-konton på denna enhet';

  @override
  String get openInMaps => 'Öppna i karta';

  @override
  String get link => 'Länk';

  @override
  String get serverRequiresEmail => 'Servern behöver validera din e-postadress för registrering.';

  @override
  String get optionalGroupName => '(Optional) Gruppnamn';

  @override
  String get or => 'Eller';

  @override
  String get participant => 'Deltagare';

  @override
  String get participatingUserDevices => 'Deltagande användarenheter';

  @override
  String get passphraseOrKey => 'lösenord eller återställningsnyckel';

  @override
  String get password => 'Lösenord';

  @override
  String get passwordForgotten => 'Glömt lösenord';

  @override
  String get passwordHasBeenChanged => 'Lösenordet har ändrats';

  @override
  String get passwordRecovery => 'Återställ lösenord';

  @override
  String get people => 'Människor';

  @override
  String get pickImage => 'Välj en bild';

  @override
  String get pin => 'Nåla fast';

  @override
  String play(Object fileName) {
    return 'Spela $fileName';
  }

  @override
  String get pleaseChoose => 'Var god välj';

  @override
  String get pleaseChooseAPasscode => 'Ange ett lösenord';

  @override
  String get pleaseChooseAUsername => 'Välj ett användarnamn';

  @override
  String get pleaseClickOnLink => 'Klicka på länken i e-postmeddelandet för att sedan fortsätta.';

  @override
  String get pleaseEnter4Digits => 'Ange 4 siffror eller lämna tom för att inaktivera app-lås.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Ange ditt Matrix ID.';

  @override
  String get pleaseEnterSecurityKey => 'Var god ange din säkerhets nyckel:';

  @override
  String get pleaseEnterYourPassword => 'Ange ditt lösenord';

  @override
  String get pleaseEnterYourPin => 'Ange din pin-kod';

  @override
  String get pleaseEnterYourUsername => 'Ange ditt användarnamn';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Följ instruktionerna på hemsidan och tryck på nästa.';

  @override
  String get privacy => 'Integritet';

  @override
  String get publicGroups => 'Publika grupper';

  @override
  String get publicKey => 'Publik Nyckel';

  @override
  String get publicRooms => 'Publika Rum';

  @override
  String get publicSpace => 'Publika utrymmen';

  @override
  String get pushRules => 'Push regler';

  @override
  String get reason => 'Anledning';

  @override
  String get recording => 'Spelar in';

  @override
  String redactedAnEvent(Object username) {
    return '$username redigerade en händelse';
  }

  @override
  String get redactMessage => 'Redigera meddelande';

  @override
  String get register => 'Registrera';

  @override
  String get reject => 'Avböj';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username avböjde inbjudan';
  }

  @override
  String get rejoin => 'Återanslut';

  @override
  String get remove => 'Ta bort';

  @override
  String get removeAllOtherDevices => 'Ta bort alla andra enheter';

  @override
  String removedBy(Object username) {
    return 'Bortagen av $username';
  }

  @override
  String get removeDevice => 'Ta bort enhet';

  @override
  String get unbanFromChat => 'Ta bort chatt-blockering';

  @override
  String get removeMessage => 'Ta bort meddelande';

  @override
  String get removeYourAvatar => 'Ta bort din avatar';

  @override
  String get renderRichContent => 'Återge innehåll med rikt meddelande';

  @override
  String get replaceRoomWithNewerVersion => 'Ersätt rum med nyare version';

  @override
  String get reply => 'Svara';

  @override
  String get reportMessage => 'Rapportera meddelande';

  @override
  String get requestPermission => 'Begär behörighet';

  @override
  String get requestToReadOlderMessages => 'Begär att läsa äldre meddelanden';

  @override
  String get revokeAllPermissions => 'Återkalla alla behörigheter';

  @override
  String get roomHasBeenUpgraded => 'Rummet har blivit uppgraderat';

  @override
  String get roomVersion => 'Rum version';

  @override
  String get saturday => 'Lördag';

  @override
  String savedFileAs(Object filename) {
    return 'Sparad som $filename';
  }

  @override
  String get saveFile => 'Spara fil';

  @override
  String get saveFileToFolder => 'Spara fil i denna mapp';

  @override
  String get search => 'Sök';

  @override
  String get searchForAChat => 'Sök efter en chatt';

  @override
  String get security => 'Säkerhet';

  @override
  String get securityKey => 'Säkerhets nyckel';

  @override
  String get securityKeyLost => 'Borttappad säkerhets nyckel?';

  @override
  String seenByUser(Object username) {
    return 'Sedd av $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sedd av $username och $count andra',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Sedd av $username och $username2';
  }

  @override
  String get send => 'Skicka';

  @override
  String get sendAMessage => 'Skicka ett meddelande';

  @override
  String get sendAsText => 'Skicka som text';

  @override
  String get sendAudio => 'Skicka ljud';

  @override
  String get sendBugReports => 'Tillåt att skicka buggrapporter med sentry.io';

  @override
  String get sendFile => 'Skicka fil';

  @override
  String get sendImage => 'Skicka bild';

  @override
  String get sendMessages => 'Skickade meddelanden';

  @override
  String get sendOriginal => 'Skicka orginal';

  @override
  String get sendSticker => 'Skicka klistermärke';

  @override
  String get sendVideo => 'Skicka video';

  @override
  String sentAFile(Object username) {
    return '$username skickade en fil';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username skickade ett ljudklipp';
  }

  @override
  String sentAPicture(Object username) {
    return '$username skickade ett ljudklipp';
  }

  @override
  String sentASticker(Object username) {
    return '$username skickade en sticker';
  }

  @override
  String sentAVideo(Object username) {
    return '$username skickade en video';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName skickade samtalsinformation';
  }

  @override
  String get sentryInfo => 'Information om din intigritet: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Sessionen är verifierad';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Ställ in en profilbild';

  @override
  String get setAsCanonicalAlias => 'Sätt som primärt alias';

  @override
  String get setCustomEmotes => 'Ställ in anpassade dekaler';

  @override
  String get setGroupDescription => 'Ställ in gruppbeskrivning';

  @override
  String get setInvitationLink => 'Ställ in inbjudningslänk';

  @override
  String get setPermissionsLevel => 'Ställ in behörighetsnivå';

  @override
  String get setStatus => 'Ställ in status';

  @override
  String get settings => 'Inställningar';

  @override
  String get share => 'Dela';

  @override
  String sharedTheLocation(Object username) {
    return '$username delade sin position';
  }

  @override
  String get shareLocation => 'Dela plats';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Visa lösenord';

  @override
  String get signUp => 'Registrera';

  @override
  String get singlesignon => 'Single Sign On';

  @override
  String get skip => 'Hoppa över';

  @override
  String get soundVibrationLedColor => 'Ljud, vibrations-LED-färg';

  @override
  String get sourceCode => 'Källkod';

  @override
  String get spaceIsPublic => 'Utrymme är publikt';

  @override
  String get spaceName => 'Utrymmes namn';

  @override
  String startedACall(Object senderName) {
    return '$senderName startade ett samtal';
  }

  @override
  String get startYourFirstChat => 'Starta din första chatt nu! 🙂\n- tryck på \"ny chatt\"\n- Skanna en väns QR-kod\n- Ha så kul med chattandet';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'Hur mår du i dag?';

  @override
  String get submit => 'Skicka in';

  @override
  String get sunday => 'Söndag';

  @override
  String get synchronizingPleaseWait => 'Synkroniserar… Var god vänta.';

  @override
  String get systemTheme => 'System';

  @override
  String get tapOnDeviceToVerify => 'Tryck på en enhet för att verifiera';

  @override
  String get tapToShowImage => 'Tryck för att visa bild';

  @override
  String get tapToShowMenu => 'Tryck för att visa menyn';

  @override
  String get theyDontMatch => 'Dom Matchar Inte';

  @override
  String get theyMatch => 'Dom Matchar';

  @override
  String get thisRoomHasBeenArchived => 'Detta rummet har blivit arkiverat.';

  @override
  String get thursday => 'Torsdag';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Växla favorit';

  @override
  String get toggleMuted => 'Växla tystad';

  @override
  String get toggleUnread => 'Markera läst/oläst';

  @override
  String get tooManyRequestsWarning => 'För många förfrågningar. Vänligen försök senare!';

  @override
  String get transferFromAnotherDevice => 'Överför till annan enhet';

  @override
  String get tryToSendAgain => 'Försök att skicka igen';

  @override
  String get tuesday => 'Tisdag';

  @override
  String get unavailable => 'Upptagen';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username avbannade $targetName';
  }

  @override
  String get unblockDevice => 'Avblockera enhet';

  @override
  String get unknownDevice => 'Okänd enhet';

  @override
  String get unknownEncryptionAlgorithm => 'Okänd krypteringsalgoritm';

  @override
  String unknownEvent(Object type) {
    return 'Okänd händelse \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Okänd session, vänligen verifiera';

  @override
  String get unlockChatBackup => 'Lås upp chatt backup';

  @override
  String get unmuteChat => 'Slå på ljudet för chatten';

  @override
  String get unpin => 'Avnåla';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: 'en oläst chatt',
      other: '$unreadCount olästa chattar',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: 'ett oläst meddelande',
      other: '$unreadEvents olästa meddelanden',
    );
  }

  @override
  String get useAmoledTheme => 'Använd AMOLED kompatibla färger?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username och $count andra skriver…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username och $username2 skriver…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username skriver…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username lämnade chatten';
  }

  @override
  String get username => 'Användarnamn';

  @override
  String get userNotVerified => 'Användaren är inte verifierad';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username skickade en $type händelse';
  }

  @override
  String get userUnknownVerification => 'Användare har en okänd verifikationsstatus';

  @override
  String get userVerified => 'Användaren är verifierad';

  @override
  String get unverified => 'Ej verifierad';

  @override
  String get verified => 'Verifierad';

  @override
  String get verifiedSession => 'Bekräftad session!';

  @override
  String get verify => 'Verifiera';

  @override
  String get verifyManual => 'Verifiera Manuellt';

  @override
  String get verifyStart => 'Starta verifiering';

  @override
  String get verifySuccess => 'Du har lyckats verifiera!';

  @override
  String get verifyTitle => 'Verifiera andra konton';

  @override
  String get verifyUser => 'Verifiera Användare';

  @override
  String get videoCall => 'Videosamtal';

  @override
  String get visibilityOfTheChatHistory => 'Chatt-historikens synlighet';

  @override
  String get visibleForAllParticipants => 'Synlig för alla deltagare';

  @override
  String get visibleForEveryone => 'Synlig för alla';

  @override
  String get voiceMessage => 'Röstmeddelande';

  @override
  String get waitingPartnerAcceptRequest => 'Väntar på att deltagaren accepterar begäran…';

  @override
  String get waitingPartnerEmoji => 'Väntar på att deltagaren accepterar emojien…';

  @override
  String get waitingPartnerNumbers => 'Väntar på att deltagaren accepterar nummer…';

  @override
  String get wallpaper => 'Bakgrund';

  @override
  String get warning => 'Varning!';

  @override
  String get warningEncryptionInBeta => 'Ändpunktskryptering är för närvarande i Beta! Använd på egen risk!';

  @override
  String get wednesday => 'Onsdag';

  @override
  String get welcomeText => 'Välkommen till den sötaste messenger-klienten i Matrix nätverket.';

  @override
  String get weSentYouAnEmail => 'Vi skickade dig ett e-postmeddelande';

  @override
  String get whoCanPerformWhichAction => 'Vem kan utföra vilken åtgärd';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Vilka som är tilllåtna att ansluta till denna grupp';

  @override
  String get whyDoYouWantToReportThis => 'Varför vill du rapportera detta?';

  @override
  String get wipeChatBackup => 'Radera din chatt-backup för att skapa en ny säkerhetsnyckel?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Med dessa addresser kan du återställa ditt lösenord.';

  @override
  String get writeAMessage => 'Skriv ett meddelande…';

  @override
  String get yes => 'Ja';

  @override
  String get you => 'Du';

  @override
  String get youAreInvitedToThisChat => 'Du är inbjuden till denna chatt';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Du deltar inte längre i denna chatt';

  @override
  String get youCannotInviteYourself => 'Du kan inte bjuda in dig själv';

  @override
  String get youHaveBeenBannedFromThisChat => 'Du har blivit bannad från denna chatt';

  @override
  String get yourChatsAreBeingSynced => 'Dina chattar synkroniseras…';

  @override
  String get yourOwnUsername => 'Ditt egna användarnamn';

  @override
  String get yourPublicKey => 'Din publika nyckel';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Du kommer att anslutas till $homeserver';
  }

  @override
  String get zoomIn => 'Zooma in';

  @override
  String get zoomOut => 'Zooma ut';

  @override
  String get messageInfo => 'Meddelandeinformation';

  @override
  String get time => 'Tid';

  @override
  String get messageType => 'Meddelandetyp';

  @override
  String get sender => 'Avsändare';

  @override
  String get openGallery => 'Öppna galleri';

  @override
  String get removeFromSpace => 'Ta bort från utrymme';

  @override
  String get removeFromSpaceDescription => 'Detta raderar chatten från det nuvarande utrymmet. Chatten är fortfarande synlig under \"Alla chattar\".';

  @override
  String get addToSpaceDescription => 'Välj ett utrymme som chatten skall läggas till i.';

  @override
  String get start => 'Starta';

  @override
  String get setupChatBackupNow => 'Konfigurera din chatt-backup nu';

  @override
  String get pleaseEnterSecurityKeyDescription => 'För att låsa upp din chatt-backup, vänligen ange säkerhetsnyckeln som skapats i en tidigare session. Säkerhetsnyckeln är INTE densamma som ditt lösenord.';

  @override
  String get saveTheSecurityKeyNow => 'Spara säkerhetsnyckeln nu';

  @override
  String get addToStory => 'Addera till berättelse';

  @override
  String get publish => 'Publicera';

  @override
  String get whoCanSeeMyStories => 'Vem kan se mina berättelser?';

  @override
  String get unsubscribeStories => 'Avprenumerera berättelser';

  @override
  String get thisUserHasNotPostedAnythingYet => 'Den här användaren har inte lagt till något till deras berättelse än';

  @override
  String get yourStory => 'Din berättelse';

  @override
  String get replyHasBeenSent => 'Svar har skickats';

  @override
  String videoWithSize(Object size) {
    return 'Video ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'Berättelse från $date: \n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Notera att användare kan se och kontakta varandra i din berättelse.';

  @override
  String get whatIsGoingOn => 'Vad händer?';

  @override
  String get addDescription => 'Lägg till beskrivning';

  @override
  String get storyPrivacyWarning => 'Notera att användare kan se och kontakta varandra i din berättelse. Din berättelse är synlig i 24 timmar, men det finns ingen garanti för att berättelser raderas från alla enheter och servrar.';

  @override
  String get iUnderstand => 'Jag förstår';

  @override
  String get openChat => 'Öppna Chatt';

  @override
  String get markAsRead => 'Markera som läst';

  @override
  String get reportUser => 'Rapportera användare';

  @override
  String get dismiss => 'Avfärda';

  @override
  String get matrixWidgets => 'Matrix widgetar';

  @override
  String get integrationsNotImplemented => 'Det går inte att redigera widgetar och integrationer ännu.';

  @override
  String get editIntegrations => 'Redigera widgetar och integrationer';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender reagerade med $reaction';
  }

  @override
  String get pinMessage => 'Fäst i rum';

  @override
  String get pinnedEventsError => 'Ett fel uppstod när fastnålade meddelanden skulle hämtas';

  @override
  String get confirmEventUnpin => 'Är du säker på att händelsen inte längre skall vara fastnålad?';

  @override
  String get emojis => 'Emojis';

  @override
  String get placeCall => 'Ring';

  @override
  String get voiceCall => 'Röstsamtal';

  @override
  String get unsupportedAndroidVersion => 'Inget stöd för denna version av Android';

  @override
  String get unsupportedAndroidVersionLong => 'Denna funktion kräver en senare version av Android.';

  @override
  String get videoCallsBetaWarning => 'Videosamtal är för närvarande under testning. De kanske inte fungerar som det är tänkt eller på alla plattformar.';

  @override
  String get experimentalVideoCalls => 'Experimentella videosamtal';

  @override
  String get emailOrUsername => 'Användarnamn eller e-postadress';

  @override
  String switchToAccount(Object number) {
    return 'Byt till konto $number';
  }

  @override
  String get nextAccount => 'Nästa konto';

  @override
  String get previousAccount => 'Föregående konto';

  @override
  String get editWidgets => 'Redigera widgetar';

  @override
  String get addWidget => 'Lägg till widget';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Anteckning';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Anpassad';

  @override
  String get widgetName => 'Namn';

  @override
  String get widgetUrlError => 'Detta är inte en giltig URL.';

  @override
  String get widgetNameError => 'Vänligen ange ett visningsnamn.';

  @override
  String get errorAddingWidget => 'Ett fel uppstod när widgeten skulle läggas till.';

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
