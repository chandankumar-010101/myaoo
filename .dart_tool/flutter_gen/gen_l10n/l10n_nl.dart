

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Dutch Flemish (`nl`).
class L10nNl extends L10n {
  L10nNl([String locale = 'nl']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Wachtwoorden komen niet overeen!';

  @override
  String get pleaseEnterValidEmail => 'Voor een geldige email in.';

  @override
  String get repeatPassword => 'Wachtwoord herhalen';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Kies een wachtwoord met minimaal $min tekens.';
  }

  @override
  String get about => 'Over ons';

  @override
  String get accept => 'Accepteren';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username heeft de uitnodiging geaccepteerd';
  }

  @override
  String get account => 'Account';

  @override
  String get accountInformation => 'Accountgegevens';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username heeft eind-tot-eindversleuteling geactiveerd';
  }

  @override
  String get addEmail => 'Email toevoegen';

  @override
  String get addGroupDescription => 'Voeg een groepsomschrijving toe';

  @override
  String get addNewFriend => 'Nieuwe vriend toevoegen';

  @override
  String get addToSpace => 'Aan class toevoegen';

  @override
  String get admin => 'Beheerder';

  @override
  String get alias => 'alias';

  @override
  String get all => 'Alle';

  @override
  String get allChats => 'Alle chats';

  @override
  String get alreadyHaveAnAccount => 'Heb je al een account?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName heeft de oproep beantwoord';
  }

  @override
  String get anyoneCanJoin => 'Iedereen kan deelnemen';

  @override
  String get appLock => 'App-vergrendeling';

  @override
  String get archive => 'Archief';

  @override
  String get archivedRoom => 'Gearchiveerde Kamer';

  @override
  String get areGuestsAllowedToJoin => 'Mogen gasten deelnemen';

  @override
  String get areYouSure => 'Weet je het zeker?';

  @override
  String get areYouSureYouWantToLogout => 'Weet je zeker dat je wilt uitloggen?';

  @override
  String get askSSSSSign => 'Voer je beveiligde opslag wachtwoordzin of herstelsleutel in om de andere persoon te kunnen ondertekenen.';

  @override
  String get askSSSSVerify => 'Voer je beveiligde opslag wachtwoordzin of herstelsleutel in om je sessie te verifiëren.';

  @override
  String askVerificationRequest(Object username) {
    return 'Accepteer je dit verificatieverzoek van $username?';
  }

  @override
  String get audioPlayerPause => 'Pause';

  @override
  String get audioPlayerPlay => 'Afspelen';

  @override
  String get authentication => 'Authenticatie';

  @override
  String get autoplayImages => 'Automatisch geanimeerde stickers en emoticons afspelen';

  @override
  String get avatarHasBeenChanged => 'Avatar is gewijzigd';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'De homeserver ondersteunt de login types:\n${serverVersions}\nMaar deze app ondersteunt alleen:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Verstuur met enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'De homeserver ondersteunt de Spec-versies:\n${serverVersions}\nMaar deze app ondersteunt alleen $supportedVersions';
  }

  @override
  String get banFromChat => 'Van chat verbannen';

  @override
  String get banned => 'Verbannen';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username verbant $targetName';
  }

  @override
  String get blockDevice => 'Apparaat blokkeren';

  @override
  String get blocked => 'Geblokkeerd';

  @override
  String get botMessages => 'Bot-berichten';

  @override
  String get bubbleSize => 'Bubbelgrootte';

  @override
  String get cachedKeys => 'Sleutels in cache';

  @override
  String get cancel => 'Annuleren';

  @override
  String cantOpenUri(Object uri) {
    return 'Kan de URI $uri niet openen';
  }

  @override
  String get changeDeviceName => 'Apparaatnaam wijzigen';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username heeft de chatavatar gewijzigd';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username heeft de chatomschrijving gewijzigd in: $description';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username heeft de chatnaam gewijzigd in: $chatname';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username heeft de chatrechten gewijzigd';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username\'s naam is nu $displayname';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username heeft de toegangsregels voor gasten gewijzigd';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username heeft de gastenregels gewijzigd in: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username heeft de zichtbaarheid van de geschiedenis gewijzigd';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username heeft de zichtbaarheid van de geschiedenis gewijzigd in: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username heeft de deelnameregels gewijzigd';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username heeft de deelnameregels gewijzigd in: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username\'s avatar is gewijzigd';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username heeft de kameraliassen gewijzigd';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username heeft de uitnodigingslink gewijzigd';
  }

  @override
  String get changelog => 'Wijzigingslogboek';

  @override
  String get changePassword => 'Wachtwoord wijzigen';

  @override
  String get changesHaveBeenSaved => 'Wijzigingen zijn opgeslagen';

  @override
  String get changeTheHomeserver => 'Homeserver wijzigen';

  @override
  String get changeTheme => 'Stijl veranderen';

  @override
  String get changeTheNameOfTheGroup => 'Groepsnaam wijzigen';

  @override
  String get changeTheServer => 'Server wijzigen';

  @override
  String get changeWallpaper => 'Achtergrond wijzigen';

  @override
  String get changeYourAvatar => 'Je avatar veranderen';

  @override
  String get channelCorruptedDecryptError => 'De encryptie is beschadigd';

  @override
  String get chat => 'Chat';

  @override
  String get yourUserId => 'Uw persoon-ID:';

  @override
  String get setupChatBackup => 'Chat back-up instellen';

  @override
  String get iWroteDownTheKey => 'Ik heb de sleutel opgeschreven';

  @override
  String get yourChatBackupHasBeenSetUp => 'Uw chat back-up is ingesteld.';

  @override
  String get chatBackup => 'Chatback-up';

  @override
  String get setupChatBackupDescription => 'Om je berichten te beschermen genereren we een veiligheidssleutel voor jouw.\nBewaar deze op een veilig plek, bijvoorbeeld in een wachtwoordmanager.';

  @override
  String get chatBackupDescription => 'Je chatback-up is beveiligd met een veiligheidssleutel. Zorg ervoor dat je deze niet verliest.';

  @override
  String get chatDetails => 'Chatdetails';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat is toegevoegd aan deze class';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat is verwijderd uit deze class';

  @override
  String get chats => 'Chats';

  @override
  String get chooseAStrongPassword => 'Kies een sterk wachtwoord';

  @override
  String get chooseAUsername => 'Kies een inlognaam';

  @override
  String get clearArchive => 'Archief wissen';

  @override
  String get clearText => 'Tekst wissen';

  @override
  String get close => 'Sluiten';

  @override
  String get commandHint_ban => 'Persoon uit deze kamer verbannen';

  @override
  String get commandHint_clearcache => 'Cache wissen';

  @override
  String get commandHint_create => 'Maak een lege groepschat\nGebruik --no-encryption om de versleuteling uit te schakelen';

  @override
  String get commandHint_discardsession => 'Sessie weggooien';

  @override
  String get commandHint_dm => 'Start een directe chat\nGebruik --no-encryption om de versleuteling uit te schakelen';

  @override
  String get commandHint_html => 'Tekst met HTML-opmaak versturen';

  @override
  String get commandHint_invite => 'Persoon in deze kamer uitnodigen';

  @override
  String get commandHint_join => 'Deelnemen aan de gegeven kamer';

  @override
  String get commandHint_kick => 'Persoon uit deze kamer verwijderen';

  @override
  String get commandHint_leave => 'Deze kamer verlaten';

  @override
  String get commandHint_me => 'Beschrijf jezelf';

  @override
  String get commandHint_myroomavatar => 'Je avatar voor deze kamer instellen (met mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Je naam voor deze kamer instellen';

  @override
  String get commandHint_op => 'Machtsniveau van de persoon instellen (standaard: 50)';

  @override
  String get commandHint_plain => 'Niet-opgemaakte tekst versturen';

  @override
  String get commandHint_react => 'Antwoord als reactie versturen';

  @override
  String get commandHint_send => 'Tekst versturen';

  @override
  String get commandHint_unban => 'Persoon weer in deze kamer toestaan';

  @override
  String get commandInvalid => 'Opdracht ongeldig';

  @override
  String commandMissing(Object command) {
    return '$command is geen opdracht.';
  }

  @override
  String get compareEmojiMatch => 'Vergelijk of de volgende emoji overeenkomen met die van het andere apparaat:';

  @override
  String get compareNumbersMatch => 'Vergelijk of de volgende nummers overeenkomen met die van het andere apparaat:';

  @override
  String get configureChat => 'Chat configureren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get connect => 'Verbinden';

  @override
  String get connectionAttemptFailed => 'Verbindingspoging is mislukt';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Contact is voor de groep uitgenodigd';

  @override
  String get containsDisplayName => 'Bevat naam';

  @override
  String get containsUserName => 'Bevat gebruikersnaam';

  @override
  String get contentHasBeenReported => 'De inhoud is gerapporteerd aan de serverbeheerders';

  @override
  String get contentViewer => 'Contentvoorvertoning';

  @override
  String get copiedToClipboard => 'Gekopieerd naar klembord';

  @override
  String get copy => 'Bericht kopiëren';

  @override
  String get copyToClipboard => 'Kopieer naar klembord';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Kan het bericht niet decoderen: $error';
  }

  @override
  String get couldNotSetAvatar => 'Kan avatar niet instellen';

  @override
  String get couldNotSetDisplayname => 'Kan naam niet instellen';

  @override
  String countParticipants(Object count) {
    return '$count personen';
  }

  @override
  String get create => 'Aanmaken';

  @override
  String get createAccountNow => 'Maak nu een account aan';

  @override
  String createdTheChat(Object username) {
    return '$username heeft de chat gemaakt';
  }

  @override
  String get createNewGroup => 'Nieuwe groep';

  @override
  String get createNewSpace => 'Nieuwe class';

  @override
  String get crossSigningDisabled => 'Kruislings ondertekenen uitgeschakeld';

  @override
  String get crossSigningEnabled => 'Kruislings ondertekenen ingeschakeld';

  @override
  String get currentlyActive => 'Momenteel actief';

  @override
  String get darkTheme => 'Donker';

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
    return '$day-$month-$year';
  }

  @override
  String get deactivateAccountWarning => 'Hierdoor wordt je account gedeactiveerd. Dit kan niet ongedaan gemaakt worden! Weet je het zeker?';

  @override
  String get defaultPermissionLevel => 'Standaardmachtigingsniveau';

  @override
  String get delete => 'Verwijderen';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get deleteMessage => 'Bericht verwijderen';

  @override
  String get deny => 'Weigeren';

  @override
  String get device => 'Apparaat';

  @override
  String get deviceId => 'Apparaat-ID';

  @override
  String get devices => 'Apparaten';

  @override
  String get deviceVerifyDescription => 'De versleuteling is pas veilig als alle apparaten zijn geverifieerd.';

  @override
  String get directChats => 'Directe chats';

  @override
  String get discardPicture => 'Afbeelding verwijderen';

  @override
  String get discover => 'Ontdekken';

  @override
  String get discoverGroups => 'Groepen ontdekken';

  @override
  String get displaynameHasBeenChanged => 'De naam is gewijzigd';

  @override
  String get donate => 'Doneer';

  @override
  String get dontAskAgain => 'Annuleer en vraag niet opnieuw';

  @override
  String get downloadFile => 'Bestand downloaden';

  @override
  String get edit => 'Wijzig';

  @override
  String get editBlockedServers => 'Geblokkeerde servers wijzigen';

  @override
  String get editChatPermissions => 'Chatrechten wijzigen';

  @override
  String get editDisplayname => 'Naam wijzigen';

  @override
  String get editJitsiInstance => 'Jitsi-server wijzigen';

  @override
  String get editRoomAliases => 'Kameraliassen wijzigen';

  @override
  String get editRoomAvatar => 'Kameravatar wijzigen';

  @override
  String get emoteExists => 'Emoticon bestaat al!';

  @override
  String get emoteInvalid => 'Ongeldige emoticon korte code!';

  @override
  String get emotePacks => 'Emoticonpakketten voor de kamer';

  @override
  String get emoteSettings => 'Emoticon-instellingen';

  @override
  String get emoteShortcode => 'Emoticon korte code';

  @override
  String get emoteWarnNeedToPick => 'Je moet een emoticon korte code en afbeelding kiezen!';

  @override
  String get emptyChat => 'Lege chat';

  @override
  String get enableChatBackup => 'Schakel de chatback-up in om nooit de toegang tot je chats te verliezen.';

  @override
  String get enableEmotesGlobally => 'Emoticonpakket overal inschakelen';

  @override
  String get enableEncryption => 'Versleuteling inschakelen';

  @override
  String get enableEncryptionWarning => 'Je kunt de versleuteling hierna niet meer uitschakelen. Weet je het zeker?';

  @override
  String get encrypted => 'Versleuteld';

  @override
  String get encryption => 'Versleuteling';

  @override
  String get encryptionAlgorithm => 'Versleutelingsalgoritme';

  @override
  String get encryptionNotEnabled => 'Versleuteling is niet ingeschakeld';

  @override
  String get end2endEncryptionSettings => 'Eind-tot-eindversleutelingsinstellingen';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName heeft het gesprek beëindigd';
  }

  @override
  String get enterAGroupName => 'Vul een groepsnaam in';

  @override
  String get enterAnEmailAddress => 'Voer een email in';

  @override
  String get enterASpacepName => 'Vul een spacenaam in';

  @override
  String get enterAUsername => 'Vul een inlognaam in';

  @override
  String get homeserver => 'Server';

  @override
  String get enterYourHomeserver => 'Vul je homeserver in';

  @override
  String errorObtainingLocation(Object error) {
    return 'Locatie ophalen fout: $error';
  }

  @override
  String get everythingReady => 'Alles klaar!';

  @override
  String get extremeOffensive => 'Extreem beledigend';

  @override
  String get fileName => 'Bestandsnaam';

  @override
  String get fileSize => 'Bestandsgrootte';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Lettergrootte';

  @override
  String get forward => 'Stuur door';

  @override
  String get friday => 'Vrijdag';

  @override
  String get friends => 'Vrienden';

  @override
  String get fromJoining => 'Vanaf deelname';

  @override
  String get fromTheInvitation => 'Vanaf uitnodiging';

  @override
  String get goToTheNewRoom => 'Ga naar de nieuwe kamer';

  @override
  String get group => 'Groep';

  @override
  String get groupDescription => 'Groepsomschrijving';

  @override
  String get groupDescriptionHasBeenChanged => 'Groepsomschrijving gewijzigd';

  @override
  String get groupIsPublic => 'Groep is openbaar';

  @override
  String get groups => 'Groepen';

  @override
  String groupWith(Object displayname) {
    return 'Groep met $displayname';
  }

  @override
  String get guestsAreForbidden => 'Gasten zijn verboden';

  @override
  String get guestsCanJoin => 'Gasten kunnen deelnemen';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username heeft de uitnodiging voor $targetName ingetrokken';
  }

  @override
  String get help => 'Help';

  @override
  String get hideRedactedEvents => 'Bewerkte gebeurtenissen verbergen';

  @override
  String get hideUnknownEvents => 'Onbekende gebeurtenissen verbergen';

  @override
  String get homeserverIsNotCompatible => 'Homeserver is niet compatibel';

  @override
  String get howOffensiveIsThisContent => 'Hoe beledigend is deze inhoud?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identiteit';

  @override
  String get ignore => 'Negeer';

  @override
  String get ignoredUsers => 'Genegeerde personen';

  @override
  String get ignoreListDescription => 'Je kunt personen die je storen negeren. Je kunt geen berichten of kameruitnodigingen ontvangen van de personen op je negeerlijst.';

  @override
  String get ignoreUsername => 'Negeer persoon';

  @override
  String get iHaveClickedOnLink => 'Ik heb op de link geklikt';

  @override
  String get incorrectPassphraseOrKey => 'Onjuiste wachtwoordzin of herstelsleutel';

  @override
  String get inoffensive => 'Niet beledigend';

  @override
  String get invalidEmail => 'Ongeldige email';

  @override
  String get inviteContact => 'Contact uitnodigen';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Contact voor $groupName uitnodigen';
  }

  @override
  String get invited => 'Uitgenodigd';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username heeft $targetName uitgenodigd';
  }

  @override
  String get invitedUsersOnly => 'Alleen uitgenodigde personen';

  @override
  String get inviteForMe => 'Persoonlijke uitnodiging';

  @override
  String inviteText(Object username, Object link) {
    return '$username heeft je uitgenodigd voor FluffyChat.\n1. Installeer FluffyChat: https://fluffychat.im\n2. Registreer of log in\n3. Open deze uitnodigingslink: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Is de volgende apparaatsleutel correct?';

  @override
  String get isTyping => 'is aan het typen…';

  @override
  String joinedTheChat(Object username) {
    return '$username is toegetreden tot de chat';
  }

  @override
  String get joinRoom => 'Deelnemen';

  @override
  String get keysCached => 'Er zitten sleutels in de cache';

  @override
  String get keysMissing => 'Er zitten geen sleutels in de cache';

  @override
  String kicked(Object username, Object targetName) {
    return '$username heeft $targetName verwijderd';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username heeft $targetName verwijderd en verbannen';
  }

  @override
  String get kickFromChat => 'Uit chat verwijderen';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Laatst actief: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Laatst bekende IP';

  @override
  String get lastSeenLongTimeAgo => 'Lang geleden gezien';

  @override
  String get leave => 'Chat verlaten';

  @override
  String get leftTheChat => 'Verliet de chat';

  @override
  String get license => 'Licentie';

  @override
  String get lightTheme => 'Licht';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Laad nog $count personen';
  }

  @override
  String get loadingPleaseWait => 'Bezig met laden… Even geduld.';

  @override
  String get showSpaces => 'Classes-lijst tonen';

  @override
  String get loadMore => 'Meer laden…';

  @override
  String get locationDisabledNotice => 'Locatievoorzieningen is uitgeschakeld. Zet dit eerst aan om je locatie te delen.';

  @override
  String get locationPermissionDeniedNotice => 'Locatievoorzieningen is geweigerd. Zet hem aan om locatie delen te gebruiken.';

  @override
  String get login => 'Inloggen';

  @override
  String logInTo(Object homeserver) {
    return 'Inloggen bij $homeserver';
  }

  @override
  String get loginWithOneClick => 'Inloggen met één klik';

  @override
  String get logout => 'Uitloggen';

  @override
  String get makeAModerator => 'Maak moderator';

  @override
  String get makeAnAdmin => 'Beheerder maken';

  @override
  String get makeSureTheIdentifierIsValid => 'Zorg ervoor dat de identificatie geldig is';

  @override
  String get memberChanges => 'Persoon wijzigingen';

  @override
  String get mention => 'Vermeld';

  @override
  String get messages => 'Berichten';

  @override
  String get messageWillBeRemovedWarning => 'Bericht wordt verwijderd voor alle personen';

  @override
  String get moderator => 'Moderator';

  @override
  String get monday => 'Maandag';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'Nog 1 gebeurtenis',
      other: 'Nog $count gebeurtenissen',
    );
  }

  @override
  String get muteChat => 'Meldingen uitschakelen';

  @override
  String get needPantalaimonWarning => 'Houd er rekening mee dat je voorlopig Pantalaimon nodig hebt om eind-tot-eindversleuteling te gebruiken.';

  @override
  String get newChat => 'Nieuwe chat';

  @override
  String get newMessageInFluffyChat => 'Nieuw bericht in FluffyChat';

  @override
  String get newVerificationRequest => 'Nieuw verificatieverzoek!';

  @override
  String get next => 'Volgende';

  @override
  String get no => 'Nee';

  @override
  String get noConnectionToTheServer => 'Geen verbinding met de server';

  @override
  String get noCrossSignBootstrap => 'FluffyChat biedt momenteel geen ondersteuning voor het inschakelen van kruislings ondertekenen. Schakel het in vanuit Element.';

  @override
  String get noDescription => 'Geen omschrijving';

  @override
  String get noEmotesFound => 'Geen emoticons gevonden. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Je kunt de versleuteling pas activeren zodra de kamer niet meer openbaar toegankelijk is.';

  @override
  String get noGoogleServicesWarning => 'Het lijkt erop dat je geen Google-services op je telefoon hebt. Dat is een goede beslissing voor je privacy! Om pushmeldingen in FluffyChat te ontvangen raden we je https://microg.org/ of https://unifiedpush.org aan.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 is geen Matrix-server, wil je $server2 gebruiken?';
  }

  @override
  String get createNewChatExplaination => 'Scan de QR-code of deel je uitnodigingslink als je niet naast elkaar zit.';

  @override
  String get shareYourInviteLink => 'Deel je uitnodigingslink';

  @override
  String get typeInInviteLinkManually => 'Type de uitnodigingslink in...';

  @override
  String get scanQrCode => 'QR-code scannen';

  @override
  String get noMegolmBootstrap => 'Zet in plaats daarvan de online sleutelback-up aan vanuit Element.';

  @override
  String get none => 'Geen';

  @override
  String get newPasswordDescription => 'Om je wachtwoord te kunnen resetten moet je een email toevoegen aan je account.';

  @override
  String get newUsernameDescription => 'Je persoon-id heeft dan het formaat @naam:server';

  @override
  String get noPasswordRecoveryDescription => 'Je hebt nog geen manier toegevoegd om je wachtwoord te herstellen.';

  @override
  String get noPermission => 'Geen toestemming';

  @override
  String get noPublicRoomsFound => 'Geen openbare kamers gevonden…';

  @override
  String get noRoomsFound => 'Geen kamers gevonden …';

  @override
  String get noStatusesFound => 'Geen statussen gevonden tot nu toe.';

  @override
  String get notifications => 'Notificaties';

  @override
  String get notificationsEnabledForThisAccount => 'Meldingen ingeschakeld voor dit account';

  @override
  String get notSupportedInWeb => 'Niet ondersteund in web';

  @override
  String numberSelected(Object number) {
    return '$number geselecteerd';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count personen typen…';
  }

  @override
  String get obtainingLocation => 'Locatie ophalen…';

  @override
  String get offensive => 'Beledigend';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'OK';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => 'Online sleutelback-up is uitgeschakeld';

  @override
  String get onlineKeyBackupEnabled => 'Online sleutelback-up is ingeschakeld';

  @override
  String get oopsPushError => 'Oeps! Helaas is er een fout opgetreden bij het instellen van de pushmeldingen.';

  @override
  String get oopsSomethingWentWrong => 'Oeps, er ging iets mis…';

  @override
  String get openAppToReadMessages => 'Open app om de berichten te lezen';

  @override
  String get openCamera => 'Camera openen';

  @override
  String get openVideoCamera => 'Videocamera openen';

  @override
  String get oneClientLoggedOut => 'Één van jouw apparaten is uitgelogd';

  @override
  String get addAccount => 'Account toevoegen';

  @override
  String get editBundlesForAccount => 'Bundels voor dit account wijzigen';

  @override
  String get addToBundle => 'Aan bundel toevoegen';

  @override
  String get removeFromBundle => 'Van bundel verwijderen';

  @override
  String get bundleName => 'Bundelnaam';

  @override
  String get enableMultiAccounts => '(BETA) Multi-accounts inschakelen op dit apparaat';

  @override
  String get openInMaps => 'In kaarten openen';

  @override
  String get link => 'Link';

  @override
  String get serverRequiresEmail => 'Deze server wil je email laten bevestigen bij de registratie.';

  @override
  String get optionalGroupName => 'Groepsnaam (optioneel)';

  @override
  String get or => 'Of';

  @override
  String get participant => 'Personen';

  @override
  String get participatingUserDevices => 'Deelnemende apparaten';

  @override
  String get passphraseOrKey => 'wachtwoordzin of herstelsleutel';

  @override
  String get password => 'Wachtwoord';

  @override
  String get passwordForgotten => 'Wachtwoord vergeten';

  @override
  String get passwordHasBeenChanged => 'Wachtwoord gewijzigd';

  @override
  String get passwordRecovery => 'Wachtwoordherstel';

  @override
  String get people => 'Personen';

  @override
  String get pickImage => 'Kies een afbeelding';

  @override
  String get pin => 'Pin';

  @override
  String play(Object fileName) {
    return 'Speel $fileName';
  }

  @override
  String get pleaseChoose => 'Kies';

  @override
  String get pleaseChooseAPasscode => 'Kies een toegangscode';

  @override
  String get pleaseChooseAUsername => 'Kies een inlognaam';

  @override
  String get pleaseClickOnLink => 'Klik op de link in de email en ga dan verder.';

  @override
  String get pleaseEnter4Digits => 'Voer 4 cijfers in of laat leeg om app-vergrendeling uit te schakelen.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Voer een Matrix ID in.';

  @override
  String get pleaseEnterSecurityKey => 'Voer je veiligheidsssleutel in:';

  @override
  String get pleaseEnterYourPassword => 'Voer je wachtwoord in';

  @override
  String get pleaseEnterYourPin => 'Voer je pincode in';

  @override
  String get pleaseEnterYourUsername => 'Voer je inlognaam in';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Volg de instructies op de website en tik op volgende.';

  @override
  String get privacy => 'Privacy';

  @override
  String get publicGroups => 'Publieke Groepen';

  @override
  String get publicKey => 'Publieke sleutel';

  @override
  String get publicRooms => 'Publieke Kamers';

  @override
  String get publicSpace => 'Publieke class';

  @override
  String get pushRules => 'Meldingsinstellingen';

  @override
  String get reason => 'Reden';

  @override
  String get recording => 'Opnemen';

  @override
  String redactedAnEvent(Object username) {
    return '$username heeft een event verwijderd';
  }

  @override
  String get redactMessage => 'Verwijder';

  @override
  String get register => 'Registeren';

  @override
  String get reject => 'Weigeren';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username heeft de uitnodiging afgewezen';
  }

  @override
  String get rejoin => 'Opnieuw deelnemen';

  @override
  String get remove => 'Verwijder';

  @override
  String get removeAllOtherDevices => 'Verwijder alle andere apparaten';

  @override
  String removedBy(Object username) {
    return 'Verwijderd door $username';
  }

  @override
  String get removeDevice => 'Verwijder apparaat';

  @override
  String get unbanFromChat => 'Verbanning opheffen';

  @override
  String get removeMessage => 'Verwijder bericht';

  @override
  String get removeYourAvatar => 'Je avatar verwijderen';

  @override
  String get renderRichContent => 'Uitgebreide berichtinhoud weergeven';

  @override
  String get replaceRoomWithNewerVersion => 'Kamerversie upgraden';

  @override
  String get reply => 'Antwoord';

  @override
  String get reportMessage => 'Bericht rapporteren';

  @override
  String get requestPermission => 'Vraag toestemming';

  @override
  String get requestToReadOlderMessages => 'Vraag om oudere berichten te lezen';

  @override
  String get revokeAllPermissions => 'Alle machtigingen intrekken';

  @override
  String get roomHasBeenUpgraded => 'Kamer is geüpgrade';

  @override
  String get roomVersion => 'Kamerversie';

  @override
  String get saturday => 'Zaterdag';

  @override
  String savedFileAs(Object filename) {
    return 'Bestand opgeslagen als $filename';
  }

  @override
  String get saveFile => 'Bestand opslaan';

  @override
  String get saveFileToFolder => 'Bestand opslaan in deze map';

  @override
  String get search => 'Zoeken';

  @override
  String get searchForAChat => 'Zoek een chat';

  @override
  String get security => 'Beveiliging';

  @override
  String get securityKey => 'Veiligheidssleutel';

  @override
  String get securityKeyLost => 'Veiligheidssleutel verloren?';

  @override
  String seenByUser(Object username) {
    return 'Gezien door $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gezien door $username en $count anderen',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Gezien door $username en $username2';
  }

  @override
  String get send => 'Verstuur';

  @override
  String get sendAMessage => 'Stuur een bericht';

  @override
  String get sendAsText => 'Als tekst versturen';

  @override
  String get sendAudio => 'Audio versturen';

  @override
  String get sendBugReports => 'Bugrapporten met sentry.io versturen';

  @override
  String get sendFile => 'Bestand versturen';

  @override
  String get sendImage => 'Afbeelding versturen';

  @override
  String get sendMessages => 'Berichten versturen';

  @override
  String get sendOriginal => 'Origineel versturen';

  @override
  String get sendSticker => 'Sticker versturen';

  @override
  String get sendVideo => 'Video versturen';

  @override
  String sentAFile(Object username) {
    return '$username heeft een bestand verzonden';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username heeft een audio verzonden';
  }

  @override
  String sentAPicture(Object username) {
    return '$username heeft een afbeelding verzonden';
  }

  @override
  String sentASticker(Object username) {
    return '$username heeft een sticker verzonden';
  }

  @override
  String sentAVideo(Object username) {
    return '$username heeft een video verzonden';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName heeft oproepgegevens verzonden';
  }

  @override
  String get sentryInfo => 'Informatie over je privacy: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Sessie is geverifieerd';

  @override
  String get separateChatTypes => 'Gescheiden directe chats, groepen en classes';

  @override
  String get setAProfilePicture => 'Profielfoto instellen';

  @override
  String get setAsCanonicalAlias => 'Instellen als hoofdalias';

  @override
  String get setCustomEmotes => 'Aangepaste emoticons inschakelen';

  @override
  String get setGroupDescription => 'Stel een groepsomschrijving in';

  @override
  String get setInvitationLink => 'Uitnodigingslink instellen';

  @override
  String get setPermissionsLevel => 'Machtigingsniveau instellen';

  @override
  String get setStatus => 'Status instellen';

  @override
  String get settings => 'Instellingen';

  @override
  String get share => 'Delen';

  @override
  String sharedTheLocation(Object username) {
    return '$username heeft deze locatie gedeeld';
  }

  @override
  String get shareLocation => 'Locatie delen';

  @override
  String get showDirectChatsInSpaces => 'Toon gerelateerde directe chats in classes';

  @override
  String get showPassword => 'Wachtwoord weergeven';

  @override
  String get signUp => 'Registreren';

  @override
  String get singlesignon => 'Eenmalig Inloggen';

  @override
  String get skip => 'Overslaan';

  @override
  String get soundVibrationLedColor => 'Geluid, vibratie LED-kleur';

  @override
  String get sourceCode => 'Broncode';

  @override
  String get spaceIsPublic => 'Class is openbaar';

  @override
  String get spaceName => 'Spacenaam';

  @override
  String startedACall(Object senderName) {
    return '$senderName heeft een gesprek gestart';
  }

  @override
  String get startYourFirstChat => 'Start nu je eerste chat! 🙂\n- Tik op Nieuwe chat\n- Scan de QR-code van een vriend\n- Veel plezier met chatten';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'Hoe gaat het met je vandaag?';

  @override
  String get submit => 'Verstuur';

  @override
  String get sunday => 'Zondag';

  @override
  String get synchronizingPleaseWait => 'Synchroniseren... Even geduld.';

  @override
  String get systemTheme => 'Systeem';

  @override
  String get tapOnDeviceToVerify => 'Tik op een apparaat om te verifiëren';

  @override
  String get tapToShowImage => 'Tik om afbeelding weer te geven';

  @override
  String get tapToShowMenu => 'Tik om menu weer te geven';

  @override
  String get theyDontMatch => 'Ze komen niet overeen';

  @override
  String get theyMatch => 'Ze komen overeen';

  @override
  String get thisRoomHasBeenArchived => 'Deze kamer is gearchiveerd.';

  @override
  String get thursday => 'Donderdag';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours12.$minutes $suffix';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Favoriet in- of uitschakelen';

  @override
  String get toggleMuted => 'Meldingen in- of uitschakelen';

  @override
  String get toggleUnread => 'Markeer gelezen/ongelezen';

  @override
  String get tooManyRequestsWarning => 'Te veel verzoeken. Probeer het later nog eens!';

  @override
  String get transferFromAnotherDevice => 'Overzetten vanaf een ander apparaat';

  @override
  String get tryToSendAgain => 'Probeer nogmaals te verzenden';

  @override
  String get tuesday => 'Dinsdag';

  @override
  String get unavailable => 'Niet beschikbaar';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username heeft verbanning $targetName ongedaan gemaakt';
  }

  @override
  String get unblockDevice => 'Deblokkeer apparaat';

  @override
  String get unknownDevice => 'Onbekend apparaat';

  @override
  String get unknownEncryptionAlgorithm => 'Onbekend versleutelingsalgoritme';

  @override
  String unknownEvent(Object type) {
    return 'Onbekend evenement \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Onbekende sessie, verifieer a.j.b.';

  @override
  String get unlockChatBackup => 'Chatback-up ontgrendelen';

  @override
  String get unmuteChat => 'Meldingen inschakelen';

  @override
  String get unpin => 'Losmaken';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 ongelezen chat',
      other: '$unreadCount ongelezen chats',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 ongelezen bericht',
      other: '$unreadEvents ongelezen berichten',
    );
  }

  @override
  String get useAmoledTheme => 'AMOLED-compatibele kleuren gebruiken?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username en $count anderen zijn aan het typen …';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username en $username2 zijn aan het typen …';
  }

  @override
  String userIsTyping(Object username) {
    return '$username is aan het typen …';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username is vertrokken uit de chat';
  }

  @override
  String get username => 'Gebruikersnaam';

  @override
  String get userNotVerified => 'Persoon is niet geverifieerd';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username heeft een $type -gebeurtenis gestuurd';
  }

  @override
  String get userUnknownVerification => 'Persoon heeft een onbekende verificatiestatus';

  @override
  String get userVerified => 'Persoon is geverifieerd';

  @override
  String get unverified => 'Niet geverifieerd';

  @override
  String get verified => 'Geverifieerd';

  @override
  String get verifiedSession => 'Succesvol geverifieerde sessie!';

  @override
  String get verify => 'Verifieer';

  @override
  String get verifyManual => 'Handmatig verifiëren';

  @override
  String get verifyStart => 'Verificatie starten';

  @override
  String get verifySuccess => 'Je bent succesvol geverifieerd!';

  @override
  String get verifyTitle => 'Ander account verifiëren';

  @override
  String get verifyUser => 'Verifieer Persoon';

  @override
  String get videoCall => 'Videogesprek';

  @override
  String get visibilityOfTheChatHistory => 'Chatgeschiedenis zichtbaarheid';

  @override
  String get visibleForAllParticipants => 'Zichtbaar voor alle personen';

  @override
  String get visibleForEveryone => 'Zichtbaar voor iedereen';

  @override
  String get voiceMessage => 'Spraakbericht versturen';

  @override
  String get waitingPartnerAcceptRequest => 'Wachten tot partner het verzoek accepteert …';

  @override
  String get waitingPartnerEmoji => 'Wachten tot partner de emoji accepteert …';

  @override
  String get waitingPartnerNumbers => 'Wachten tot partner de nummers accepteert …';

  @override
  String get wallpaper => 'Achtergrond';

  @override
  String get warning => 'Waarschuwing!';

  @override
  String get warningEncryptionInBeta => 'Eind-tot-eindversleuteling bevindt zich momenteel in beta! Gebruik op eigen risico!';

  @override
  String get wednesday => 'Woensdag';

  @override
  String get welcomeText => 'Welkom bij de schattigste instant messenger in het Matrix-netwerk.';

  @override
  String get weSentYouAnEmail => 'We hebben je een email gestuurd';

  @override
  String get whoCanPerformWhichAction => 'Wie kan welke actie uitvoeren';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Wie mag deelnemen aan deze groep';

  @override
  String get whyDoYouWantToReportThis => 'Waarom wil je dit rapporteren?';

  @override
  String get wipeChatBackup => 'Wil je de chatback-up wissen en een nieuwe veiligheidssleutel te maken?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Met deze adressen kan je je wachtwoord herstellen.';

  @override
  String get writeAMessage => 'Schrijf een bericht…';

  @override
  String get yes => 'Ja';

  @override
  String get you => 'Jij';

  @override
  String get youAreInvitedToThisChat => 'Je bent uitgenodigd voor deze chat';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Je neemt niet langer deel aan deze chat';

  @override
  String get youCannotInviteYourself => 'Je kunt jezelf niet uitnodigen';

  @override
  String get youHaveBeenBannedFromThisChat => 'Je bent verbannen uit deze chat';

  @override
  String get yourChatsAreBeingSynced => 'Je chats worden gesynchroniseerd…';

  @override
  String get yourOwnUsername => 'Je eigen gebruikersnaam';

  @override
  String get yourPublicKey => 'Je publieke sleutel';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Je wordt verbonden met $homeserver';
  }

  @override
  String get zoomIn => 'Inzoomen';

  @override
  String get zoomOut => 'Uitzoomen';

  @override
  String get messageInfo => 'Berichtinfo';

  @override
  String get time => 'Tijd';

  @override
  String get messageType => 'Berichttype';

  @override
  String get sender => 'Afzender';

  @override
  String get openGallery => 'Galerij openen';

  @override
  String get removeFromSpace => 'Uit de class verwijderen';

  @override
  String get removeFromSpaceDescription => 'Dit verwijdert deze chat uit de huidige class. Het zal dan nog steeds zichtbaar zijn onder \"Alle chats\".';

  @override
  String get addToSpaceDescription => 'Selecteer een class om deze chat aan toe te voegen.';

  @override
  String get start => 'Start';

  @override
  String get setupChatBackupNow => 'Stel je chat back-up nu in';

  @override
  String get pleaseEnterSecurityKeyDescription => 'Om je chat back-up te ontgrendelen, voer je veiligheidssleutel in die je gemaakt hebt in de vorige sessie. Je veiligheidssleutel is NIET je wachtwoord.';

  @override
  String get saveTheSecurityKeyNow => 'Sla je veiligheidssleutel nu op';

  @override
  String get addToStory => 'Toevoegen aan verhaal';

  @override
  String get publish => 'Publiceren';

  @override
  String get whoCanSeeMyStories => 'Wie kan mijn verhalen zien?';

  @override
  String get unsubscribeStories => 'Verhalen afmelden';

  @override
  String get thisUserHasNotPostedAnythingYet => 'Deze persoon heeft nog niets in zijn verhaal geplaatst';

  @override
  String get yourStory => 'Jouw verhaal';

  @override
  String get replyHasBeenSent => 'Antwoord is verzonden';

  @override
  String videoWithSize(Object size) {
    return 'Video ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'Verhaal van $date:\n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Houd er rekening mee dat personen elkaar in je verhaal kunnen zien en contact met elkaar kunnen opnemen.';

  @override
  String get whatIsGoingOn => 'Hoe gaat het nu?';

  @override
  String get addDescription => 'Omschrijving toevoegen';

  @override
  String get storyPrivacyWarning => 'Houd er rekening mee dat personen elkaar kunnen zien en contacteren in je verhaal. Je verhalen zijn 24 uur zichtbaar, maar er is geen garantie dat ze van alle apparaten en servers worden verwijderd.';

  @override
  String get iUnderstand => 'Ik begrijp het';

  @override
  String get openChat => 'Chat openen';

  @override
  String get markAsRead => 'Markeer als gelezen';

  @override
  String get reportUser => 'Persoon rapporteren';

  @override
  String get dismiss => 'Sluiten';

  @override
  String get matrixWidgets => 'Matrix Widgets';

  @override
  String get integrationsNotImplemented => 'Widgets en integraties wijzigen is nog niet mogelijk.';

  @override
  String get editIntegrations => 'Widgets en integraties wijzigen';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender reageerde met $reaction';
  }

  @override
  String get pinMessage => 'Maak vast aan kamer';

  @override
  String get pinnedEventsError => 'Fout bij laden van vastgemaakte berichten';

  @override
  String get confirmEventUnpin => 'Weet je zeker dat je de gebeurtenis definitief wilt losmaken?';

  @override
  String get emojis => 'Emoji\'s';

  @override
  String get placeCall => 'Bellen';

  @override
  String get voiceCall => 'Spraakoproep';

  @override
  String get unsupportedAndroidVersion => 'Niet-ondersteunde Android-versie';

  @override
  String get unsupportedAndroidVersionLong => 'Voor deze functie is een nieuwere Android-versie vereist. Controleer op updates of Lineage OS-ondersteuning.';

  @override
  String get videoCallsBetaWarning => 'Houd er rekening mee dat videogesprekken momenteel in bèta zijn. Ze werken misschien niet zoals je verwacht of werken niet op alle platformen.';

  @override
  String get experimentalVideoCalls => 'Videogesprekken (experimenteel)';

  @override
  String get emailOrUsername => 'Email of inlognaam';

  @override
  String switchToAccount(Object number) {
    return 'Naar account $number overschakelen';
  }

  @override
  String get nextAccount => 'Volgende account';

  @override
  String get previousAccount => 'Vorige account';

  @override
  String get editWidgets => 'Widgets wijzigen';

  @override
  String get addWidget => 'Widget toevoegen';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Tekstnotitie';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Aangepast';

  @override
  String get widgetName => 'Naam';

  @override
  String get widgetUrlError => 'Dit is geen geldige URL.';

  @override
  String get widgetNameError => 'Geef een naam op.';

  @override
  String get errorAddingWidget => 'Fout bij het toevoegen van de widget.';

  @override
  String get youRejectedTheInvitation => 'Je hebt de uitnodiging afgewezen';

  @override
  String get youJoinedTheChat => 'Je bent toegetreden tot de chat';

  @override
  String get youAcceptedTheInvitation => 'Je hebt de uitnodiging geaccepteerd';

  @override
  String youBannedUser(Object user) {
    return 'Je hebt $user verbannen';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(Object user) {
    return 'Je hebt de uitnodiging voor $user ingetrokken';
  }

  @override
  String youInvitedBy(Object user) {
    return 'Je bent uitgenodigd door $user';
  }

  @override
  String youInvitedUser(Object user) {
    return 'Je hebt $user uitgenodigd';
  }

  @override
  String youKicked(Object user) {
    return 'Je hebt $user weggestuurd';
  }

  @override
  String youKickedAndBanned(Object user) {
    return 'Je hebt weggestuurd en verbannen $user';
  }

  @override
  String youUnbannedUser(Object user) {
    return 'Je hebt de ban op $user opgeheven';
  }

  @override
  String get noEmailWarning => 'Voer een geldig e-mailadres in. Anders kan je je wachtwoord niet opnieuw instellen. Als je dat niet wilt, tik je nogmaals op de knop om door te gaan.';
}
