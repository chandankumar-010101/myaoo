

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Norwegian Bokmål (`nb`).
class L10nNb extends L10n {
  L10nNb([String locale = 'nb']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Passordet samsvarer ikke!';

  @override
  String get pleaseEnterValidEmail => 'Skriv inn en gyldig e-postadresse.';

  @override
  String get repeatPassword => 'Gjenta passord';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Vennligst velg minst $min tegn.';
  }

  @override
  String get about => 'Om';

  @override
  String get accept => 'Godta';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username godtok invitasjonen';
  }

  @override
  String get account => 'Konto';

  @override
  String get accountInformation => 'Kontoinfo';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username skrudde på ende-til-ende -kryptering';
  }

  @override
  String get addEmail => 'Legg til e-post';

  @override
  String get addGroupDescription => 'Legg til gruppebeskrivelse';

  @override
  String get addNewFriend => 'Legg til en ny venn';

  @override
  String get addToSpace => 'Legg til class';

  @override
  String get admin => 'Administrator';

  @override
  String get alias => 'alias';

  @override
  String get all => 'Alle';

  @override
  String get allChats => 'Alle samtaler';

  @override
  String get alreadyHaveAnAccount => 'Har du allerede en konto?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName besvarte anropet';
  }

  @override
  String get anyoneCanJoin => 'Hvem som helst kan delta';

  @override
  String get appLock => 'Programlås';

  @override
  String get archive => 'Arkiv';

  @override
  String get archivedRoom => 'Arkivert rom';

  @override
  String get areGuestsAllowedToJoin => 'Skal gjester tillates å ta del';

  @override
  String get areYouSure => 'Er du sikker?';

  @override
  String get areYouSureYouWantToLogout => 'Er du sikker på at du vil logge ut?';

  @override
  String get askSSSSSign => 'For å kunne signere den andre personen, skriv inn ditt sikre lagerpassord eller gjenopprettingsnøkkel.';

  @override
  String get askSSSSVerify => 'Skriv inn ditt sikre lagerpassord eller gjenopprettingsnøkkel for å bekrefte økten din.';

  @override
  String askVerificationRequest(Object username) {
    return 'Godta denne bekreftelsesforespørselen fra $username?';
  }

  @override
  String get audioPlayerPause => 'Pause';

  @override
  String get audioPlayerPlay => 'Spill av';

  @override
  String get authentication => 'Identitetsbekreftelse';

  @override
  String get autoplayImages => 'Automatisk spill av animerte stickers og emojis';

  @override
  String get avatarHasBeenChanged => 'Avatar endret';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Denne hjemme serveren støtter følgende innloggings-typer:\n${serverVersions}\nMen denne applikasjonen støtter kun:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Trykk på enter for å sende';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Denne hjemme serveren støtter følgene Spec-versjoner:\n${serverVersions}\nMen denne applikasjonen støtter kun $supportedVersions';
  }

  @override
  String get banFromChat => 'Bannlys fra sludring';

  @override
  String get banned => 'Bannlyst';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username bannlyste $targetName';
  }

  @override
  String get blockDevice => 'Blokker enhet';

  @override
  String get blocked => 'Blokkert';

  @override
  String get botMessages => 'Bot-meldinger';

  @override
  String get bubbleSize => 'Bubble size';

  @override
  String get cachedKeys => 'Nøkler hurtiglagret';

  @override
  String get cancel => 'Avbryt';

  @override
  String cantOpenUri(Object uri) {
    return 'Kan ikke åpne URI $uri';
  }

  @override
  String get changeDeviceName => 'Endre enhetsnavn';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username endret sludreavatar';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username endret sludrebeskrivelse til: «$description»';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username endret sludringsnavn til: «$chatname»';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username endret sludretilgangene';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username endret visningsnavn til: $displayname';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username endret gjestetilgangsreglene';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username endret gjestetilgangsregler til: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username endret historikksynlighet';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username endret historikksynlighet til: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username endret tilgangsreglene';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username endret tilgangsreglene til: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username endret avataren sin';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username endret rom-aliasene';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username endret invitasjonslenken';
  }

  @override
  String get changelog => 'Endringslogg';

  @override
  String get changePassword => 'Endre passord';

  @override
  String get changesHaveBeenSaved => 'Endringer lagret';

  @override
  String get changeTheHomeserver => 'Endre hjemmetjener';

  @override
  String get changeTheme => 'Endre din stil';

  @override
  String get changeTheNameOfTheGroup => 'Endre gruppens navn';

  @override
  String get changeTheServer => 'Endre tjeneren';

  @override
  String get changeWallpaper => 'Endre bakgrunnsbilde';

  @override
  String get changeYourAvatar => 'Bytt profilbilde';

  @override
  String get channelCorruptedDecryptError => 'Krypteringen er skadet';

  @override
  String get chat => 'Sludring';

  @override
  String get yourUserId => 'Din bruker ID:';

  @override
  String get setupChatBackup => 'Set up chat backup';

  @override
  String get iWroteDownTheKey => 'I wrote down the key';

  @override
  String get yourChatBackupHasBeenSetUp => 'Your chat backup has been set up.';

  @override
  String get chatBackup => 'Sludringssikkerhetskopi';

  @override
  String get setupChatBackupDescription => 'To protect your messages, we have generated a security key for you.\nPlease keep this in a safe place, such as a password manager.';

  @override
  String get chatBackupDescription => 'Din sludringssikkerhetskopi er sikret med en sikkerhetsnøkkel. Ikke mist den.';

  @override
  String get chatDetails => 'Sludringsdetaljer';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat has been added to this class';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat has been removed from this class';

  @override
  String get chats => 'Chats';

  @override
  String get chooseAStrongPassword => 'Velg et sterkt passord';

  @override
  String get chooseAUsername => 'Velg et brukernavn';

  @override
  String get clearArchive => 'Clear archive';

  @override
  String get clearText => 'Tøm tekst';

  @override
  String get close => 'Lukk';

  @override
  String get commandHint_ban => 'Ban the given user from this room';

  @override
  String get commandHint_clearcache => 'Clear cache';

  @override
  String get commandHint_create => 'Create an empty group chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_discardsession => 'Discard session';

  @override
  String get commandHint_dm => 'Start a direct chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_html => 'Send HTML-formatted text';

  @override
  String get commandHint_invite => 'Invite the given user to this room';

  @override
  String get commandHint_join => 'Join the given room';

  @override
  String get commandHint_kick => 'Remove the given user from this room';

  @override
  String get commandHint_leave => 'Leave this room';

  @override
  String get commandHint_me => 'Describe yourself';

  @override
  String get commandHint_myroomavatar => 'Set your picture for this room (by mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Set your display name for this room';

  @override
  String get commandHint_op => 'Set the given user\'s power level (default: 50)';

  @override
  String get commandHint_plain => 'Send unformatted text';

  @override
  String get commandHint_react => 'Send reply as a reaction';

  @override
  String get commandHint_send => 'Send text';

  @override
  String get commandHint_unban => 'Unban the given user from this room';

  @override
  String get commandInvalid => 'Command invalid';

  @override
  String commandMissing(Object command) {
    return '$command is not a command.';
  }

  @override
  String get compareEmojiMatch => 'Sammenlign og forsikre at følgende smilefjes samsvarer med de på den andre enheten:';

  @override
  String get compareNumbersMatch => 'Sammenlign og forsikre at følgende tall samsvarer med de på den andre enheten:';

  @override
  String get configureChat => 'Sett opp sludring';

  @override
  String get confirm => 'Bekreft';

  @override
  String get connect => 'Koble til';

  @override
  String get connectionAttemptFailed => 'Kunne ikke koble til';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontakt invitert til gruppen';

  @override
  String get containsDisplayName => 'Inneholder visningsnavn';

  @override
  String get containsUserName => 'Inneholder brukernavn';

  @override
  String get contentHasBeenReported => 'Innholdet har blitt rapportert til tjeneradministratorene';

  @override
  String get contentViewer => 'Innholdsviser';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavle';

  @override
  String get copy => 'Kopier';

  @override
  String get copyToClipboard => 'Kopier til utklippstavle';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Kunne ikke dekryptere melding: $error';
  }

  @override
  String get couldNotSetAvatar => 'Kunne ikke sette avatar';

  @override
  String get couldNotSetDisplayname => 'Kunne ikke sette visningsnavn';

  @override
  String countParticipants(Object count) {
    return '$count deltagere';
  }

  @override
  String get create => 'Opprett';

  @override
  String get createAccountNow => 'Opprett konto nå';

  @override
  String createdTheChat(Object username) {
    return '$username opprettet sludringen';
  }

  @override
  String get createNewGroup => 'Opprett ny gruppe';

  @override
  String get createNewSpace => 'New class';

  @override
  String get crossSigningDisabled => 'Videreformidling av tillit på';

  @override
  String get crossSigningEnabled => 'Videreformidling av tillit på';

  @override
  String get currentlyActive => 'Aktiv nå';

  @override
  String get darkTheme => 'Mørk';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$timeOfDay, $date';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '$day $month';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '$day $month $year';
  }

  @override
  String get deactivateAccountWarning => 'Dette vil skru av din brukerkonto for godt, og kan ikke angres! Er du sikker?';

  @override
  String get defaultPermissionLevel => 'Forvalgt tilgangsnivå';

  @override
  String get delete => 'Slett';

  @override
  String get deleteAccount => 'Slett konto';

  @override
  String get deleteMessage => 'Slett melding';

  @override
  String get deny => 'Nekt';

  @override
  String get device => 'Enhet';

  @override
  String get deviceId => 'Enhets-ID';

  @override
  String get devices => 'Enheter';

  @override
  String get deviceVerifyDescription => 'The encryption is only secure when all devices have been verified.';

  @override
  String get directChats => 'Direktesludringer';

  @override
  String get discardPicture => 'Forkast bilde';

  @override
  String get discover => 'Oppdag';

  @override
  String get discoverGroups => 'Oppdag grupper';

  @override
  String get displaynameHasBeenChanged => 'Visningsnavn endret';

  @override
  String get donate => 'Doner';

  @override
  String get dontAskAgain => 'Cancel and don\'t ask again';

  @override
  String get downloadFile => 'Last ned fil';

  @override
  String get edit => 'Rediger';

  @override
  String get editBlockedServers => 'Rediger blokkerte tjenere';

  @override
  String get editChatPermissions => 'Rediger sludringstilganger';

  @override
  String get editDisplayname => 'Rediger visningsnavn';

  @override
  String get editJitsiInstance => 'Skriv inn Jitsi-instans';

  @override
  String get editRoomAliases => 'Edit room aliases';

  @override
  String get editRoomAvatar => 'Rediger romavatar';

  @override
  String get emoteExists => 'Smilefjeset finnes allerede!';

  @override
  String get emoteInvalid => 'Ugyldig smilefjes-kode!';

  @override
  String get emotePacks => 'Smilefjespakker for rommet';

  @override
  String get emoteSettings => 'Smilefjes-innstillinger';

  @override
  String get emoteShortcode => 'Smilefjes-kode';

  @override
  String get emoteWarnNeedToPick => 'Du må velge en smilefjes-kode og et bilde!';

  @override
  String get emptyChat => 'Tom sludring';

  @override
  String get enableChatBackup => 'Enable the chat backup to never lose access to your chats.';

  @override
  String get enableEmotesGlobally => 'Skru på smilefjespakke for hele programmet';

  @override
  String get enableEncryption => 'Skru på kryptering';

  @override
  String get enableEncryptionWarning => 'Du vil ikke kunne skru av kryptering lenger. Er du sikker?';

  @override
  String get encrypted => 'Kryptert';

  @override
  String get encryption => 'Kryptering';

  @override
  String get encryptionAlgorithm => 'Krypteringsalgoritme';

  @override
  String get encryptionNotEnabled => 'Kryptering er ikke påskrudd';

  @override
  String get end2endEncryptionSettings => 'Ende-til-ende -krypteringsinnstillinger';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName avsluttet samtalen';
  }

  @override
  String get enterAGroupName => 'Skriv inn et gruppenavn';

  @override
  String get enterAnEmailAddress => 'Skriv inn en e-postadresse';

  @override
  String get enterASpacepName => 'Enter a class name';

  @override
  String get enterAUsername => 'Skriv inn et brukernavn';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'Skriv inn din hjemmetjener';

  @override
  String errorObtainingLocation(Object error) {
    return 'Error obtaining location: $error';
  }

  @override
  String get everythingReady => 'Alt er klart!';

  @override
  String get extremeOffensive => 'Veldig';

  @override
  String get fileName => 'Filnavn';

  @override
  String get fileSize => 'Filstørrelse';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Skriftstørrelse';

  @override
  String get forward => 'Videre';

  @override
  String get friday => 'Fredag';

  @override
  String get friends => 'Friends';

  @override
  String get fromJoining => 'Fra å ta del';

  @override
  String get fromTheInvitation => 'Fra invitasjonen';

  @override
  String get goToTheNewRoom => 'Go to the new room';

  @override
  String get group => 'Gruppe';

  @override
  String get groupDescription => 'Gruppebeskrivelse';

  @override
  String get groupDescriptionHasBeenChanged => 'Gruppebeskrivelse endret';

  @override
  String get groupIsPublic => 'Gruppen er offentlig';

  @override
  String get groups => 'Grupper';

  @override
  String groupWith(Object displayname) {
    return 'Gruppe med $displayname';
  }

  @override
  String get guestsAreForbidden => 'Gjester forbudt';

  @override
  String get guestsCanJoin => 'Gjester kan ta del';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username har trukket tilbake invitasjonen til $targetName';
  }

  @override
  String get help => 'Hjelp';

  @override
  String get hideRedactedEvents => 'Skjul tilbaketrukne hendelser';

  @override
  String get hideUnknownEvents => 'Skjul ukjente hendelser';

  @override
  String get homeserverIsNotCompatible => 'Hjemmetjener ukompatibel';

  @override
  String get howOffensiveIsThisContent => 'Hvor støtende er innholdet?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identitet';

  @override
  String get ignore => 'Ignorer';

  @override
  String get ignoredUsers => 'Ignorerte brukere';

  @override
  String get ignoreListDescription => 'Du kan ignorere brukere som forstyrrer deg. Du vil ikke lenger kunne motta meldinger eller rominvitasjoner fra brukere på din personlige ignoreringsliste.';

  @override
  String get ignoreUsername => 'Ignorer brukernavn';

  @override
  String get iHaveClickedOnLink => 'Jeg har klikket på lenken';

  @override
  String get incorrectPassphraseOrKey => 'Feilaktig passord eller gjenopprettingsnøkkel';

  @override
  String get inoffensive => 'Harmløst';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get inviteContact => 'Inviter kontakt';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Inviter kontakt til $groupName';
  }

  @override
  String get invited => 'Invitert';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username inviterte $targetName';
  }

  @override
  String get invitedUsersOnly => 'Kun inviterte brukere';

  @override
  String get inviteForMe => 'Invitasjon for meg';

  @override
  String inviteText(Object username, Object link) {
    return '$username har invitert deg til FluffyChat. \n1. Installer FluffyChat: https://fluffychat.im \n2. Registrer deg eller logg inn \n3. Åpne invitasjonslenken: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Er følgende enhetsnøkkel riktig?';

  @override
  String get isTyping => 'skriver…';

  @override
  String joinedTheChat(Object username) {
    return '${username}ble med i samtalen';
  }

  @override
  String get joinRoom => 'Ta del i rom';

  @override
  String get keysCached => 'Nøkler hurtiglagret';

  @override
  String get keysMissing => 'Nøkler mangler';

  @override
  String kicked(Object username, Object targetName) {
    return '$username kastet ut $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username kastet ut og bannlyste $targetName';
  }

  @override
  String get kickFromChat => 'Kast ut av sludringen';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Sist aktiv: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Sist kjente IP';

  @override
  String get lastSeenLongTimeAgo => 'Sett for lenge siden';

  @override
  String get leave => 'Forlat';

  @override
  String get leftTheChat => 'Forlat sludringen';

  @override
  String get license => 'Lisens';

  @override
  String get lightTheme => 'Lys';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Last inn $count deltagere til';
  }

  @override
  String get loadingPleaseWait => 'Laster inn… Vent.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Last inn mer…';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get login => 'Logg inn';

  @override
  String logInTo(Object homeserver) {
    return 'Logg inn på $homeserver';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => 'Logg ut';

  @override
  String get makeAModerator => 'Gjør til moderator';

  @override
  String get makeAnAdmin => 'Gjør til admin';

  @override
  String get makeSureTheIdentifierIsValid => 'Forsikre deg om at identifikatoren er gyldig';

  @override
  String get memberChanges => 'Medlemsendringer';

  @override
  String get mention => 'Nevn';

  @override
  String get messages => 'Meldinger';

  @override
  String get messageWillBeRemovedWarning => 'Meldingen vil bli fjernet for alle deltagere';

  @override
  String get moderator => 'Moderator';

  @override
  String get monday => 'Mandag';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 more event',
      other: '$count more events',
    );
  }

  @override
  String get muteChat => 'Forstum sludring';

  @override
  String get needPantalaimonWarning => 'Merk at du trenger Pantalaimon for å bruke ende-til-ende -kryptering inntil videre.';

  @override
  String get newChat => 'Ny sludring';

  @override
  String get newMessageInFluffyChat => 'Ny melding i FluffyChat';

  @override
  String get newVerificationRequest => 'Ny bekreftelsesforespørsel!';

  @override
  String get next => 'Neste';

  @override
  String get no => 'Nei';

  @override
  String get noConnectionToTheServer => 'Ingen tilkobling til tjeneren';

  @override
  String get noCrossSignBootstrap => 'Skru på videreformidling av tillit fra Element istedenfor.';

  @override
  String get noDescription => 'Ingen beskrivelse';

  @override
  String get noEmotesFound => 'Fant ingen smilefjes. 😕';

  @override
  String get noEncryptionForPublicRooms => 'You can only activate encryption as soon as the room is no longer publicly accessible.';

  @override
  String get noGoogleServicesWarning => 'Bruk https://microg.org/ for å få Google-tjenester (uten at det går ut over personvernet) for å få push-merknader i FluffyChat:';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 is no matrix server, use $server2 instead?';
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
  String get noMegolmBootstrap => 'Skru på nettbasert sikkerhetskopiering av nøkler fra Element istedenfor.';

  @override
  String get none => 'Ingen';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'Your user ID will then have the format @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'Du har ikke lagt til en måte å gjenopprette passordet ditt på.';

  @override
  String get noPermission => 'Ingen tilgang';

  @override
  String get noPublicRoomsFound => 'No public rooms found…';

  @override
  String get noRoomsFound => 'Fant ingen rom …';

  @override
  String get noStatusesFound => 'Ingen statuser så langt.';

  @override
  String get notifications => 'Merknader';

  @override
  String get notificationsEnabledForThisAccount => 'Merknader påslått for denne kontoen';

  @override
  String get notSupportedInWeb => 'Ikke støttet på vev-versjonen';

  @override
  String numberSelected(Object number) {
    return '$number valgt';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count brukere skriver …';
  }

  @override
  String get obtainingLocation => 'Obtaining location…';

  @override
  String get offensive => 'Støtende';

  @override
  String get offline => 'Frakoblet';

  @override
  String get ok => 'OK';

  @override
  String get online => 'Pålogget';

  @override
  String get onlineKeyBackupDisabled => 'Nettbasert sikkerhetskopiering av nøkler avskrudd';

  @override
  String get onlineKeyBackupEnabled => 'Nettbasert sikkerhetskopiering av nøkler på';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => 'Oida, noe gikk galt …';

  @override
  String get openAppToReadMessages => 'Åpne programmet for å lese meldinger';

  @override
  String get openCamera => 'Åpne kamera';

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
  String get optionalGroupName => 'Gruppenavn (valgfritt)';

  @override
  String get or => 'Or';

  @override
  String get participant => 'Deltager';

  @override
  String get participatingUserDevices => 'Deltagende brukerenheter';

  @override
  String get passphraseOrKey => 'Passord eller gjenopprettingsnøkkel';

  @override
  String get password => 'Passord';

  @override
  String get passwordForgotten => 'Passord glemt';

  @override
  String get passwordHasBeenChanged => 'Passord endret';

  @override
  String get passwordRecovery => 'Passordgjenoppretting';

  @override
  String get people => 'People';

  @override
  String get pickImage => 'Velg bilde';

  @override
  String get pin => 'Fest';

  @override
  String play(Object fileName) {
    return 'Spill av $fileName';
  }

  @override
  String get pleaseChoose => 'Please choose';

  @override
  String get pleaseChooseAPasscode => 'Please choose a pass code';

  @override
  String get pleaseChooseAUsername => 'Velg et brukernavn';

  @override
  String get pleaseClickOnLink => 'Klikk på lenken i e-posten og fortsett.';

  @override
  String get pleaseEnter4Digits => 'Please enter 4 digits or leave empty to disable app lock.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Skriv inn en Matrix-ID.';

  @override
  String get pleaseEnterSecurityKey => 'Skriv inn din sikkerhetsnøkkel:';

  @override
  String get pleaseEnterYourPassword => 'Skriv inn passordet ditt';

  @override
  String get pleaseEnterYourPin => 'Please enter your pin';

  @override
  String get pleaseEnterYourUsername => 'Skriv inn brukernavnet ditt';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Følg instruksen på nettsiden og trykk på «Neste».';

  @override
  String get privacy => 'Personvern';

  @override
  String get publicGroups => 'Public Groups';

  @override
  String get publicKey => 'Offentlig nøkkel';

  @override
  String get publicRooms => 'Offentlige rom';

  @override
  String get publicSpace => 'Public class';

  @override
  String get pushRules => 'Dyttingsregler';

  @override
  String get reason => 'Grunn';

  @override
  String get recording => 'Opptak';

  @override
  String redactedAnEvent(Object username) {
    return '$username har trukket tilbake en hendelse';
  }

  @override
  String get redactMessage => 'Redact message';

  @override
  String get register => 'Register';

  @override
  String get reject => 'Avslå';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username avslo invitasjonen';
  }

  @override
  String get rejoin => 'Ta del igjen';

  @override
  String get remove => 'Fjern';

  @override
  String get removeAllOtherDevices => 'Fjern alle andre enheter';

  @override
  String removedBy(Object username) {
    return 'Fjernet av $username';
  }

  @override
  String get removeDevice => 'Fjern enhet';

  @override
  String get unbanFromChat => 'Opphev bannlysning';

  @override
  String get removeMessage => 'Fjern melding';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get renderRichContent => 'Tegn rikt meldingsinnhold';

  @override
  String get replaceRoomWithNewerVersion => 'Erstatt rom med nyere versjon';

  @override
  String get reply => 'Svar';

  @override
  String get reportMessage => 'Rapporter melding';

  @override
  String get requestPermission => 'Forespør tilgang';

  @override
  String get requestToReadOlderMessages => 'Forespørsel om å lese eldre meldinger';

  @override
  String get revokeAllPermissions => 'Trekk tilbake alle tilganger';

  @override
  String get roomHasBeenUpgraded => 'Rommet har blitt oppgradert';

  @override
  String get roomVersion => 'Room version';

  @override
  String get saturday => 'Lørdag';

  @override
  String savedFileAs(Object filename) {
    return 'Saved file as $filename';
  }

  @override
  String get saveFile => 'Save file';

  @override
  String get saveFileToFolder => 'Save file to this folder';

  @override
  String get search => 'Søk';

  @override
  String get searchForAChat => 'Søk etter en sludring';

  @override
  String get security => 'Sikkerhet';

  @override
  String get securityKey => 'Sikkerhetsnøkkel';

  @override
  String get securityKeyLost => 'Mistet sikkerhetsnøkkelen?';

  @override
  String seenByUser(Object username) {
    return 'Sett av $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sett av $username og $count andre',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Sett av $username og $username2';
  }

  @override
  String get send => 'Send';

  @override
  String get sendAMessage => 'Send en melding';

  @override
  String get sendAsText => 'Send as text';

  @override
  String get sendAudio => 'Send lyd';

  @override
  String get sendBugReports => 'Tillat forsendelse av feilrapporter med sentry.io';

  @override
  String get sendFile => 'Send fil';

  @override
  String get sendImage => 'Send bilde';

  @override
  String get sendMessages => 'Send meldinger';

  @override
  String get sendOriginal => 'Send original';

  @override
  String get sendSticker => 'Send sticker';

  @override
  String get sendVideo => 'Send video';

  @override
  String sentAFile(Object username) {
    return '$username sendte en fil';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username sendte lyd';
  }

  @override
  String sentAPicture(Object username) {
    return '$username sendte et bilde';
  }

  @override
  String sentASticker(Object username) {
    return '$username sendte et klistremerke';
  }

  @override
  String sentAVideo(Object username) {
    return '$username sendte en video';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName sendte anropsinfo';
  }

  @override
  String get sentryInfo => 'Personvernsinfo: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Økt bekreftet';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Sett et profilbilde';

  @override
  String get setAsCanonicalAlias => 'Set as main alias';

  @override
  String get setCustomEmotes => 'Sett tilpassede smilefjes';

  @override
  String get setGroupDescription => 'Sett gruppebeskrivelse';

  @override
  String get setInvitationLink => 'Sett invitasjonslenke';

  @override
  String get setPermissionsLevel => 'Sett tilgangsnivå';

  @override
  String get setStatus => 'Angi status';

  @override
  String get settings => 'Innstilinger';

  @override
  String get share => 'Del';

  @override
  String sharedTheLocation(Object username) {
    return '$username delte posisjonen';
  }

  @override
  String get shareLocation => 'Share location';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Show password';

  @override
  String get signUp => 'Registrer deg';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'Hopp over';

  @override
  String get soundVibrationLedColor => 'Lyd, LED-farge for vibrasjon';

  @override
  String get sourceCode => 'Kildekode';

  @override
  String get spaceIsPublic => 'Class is public';

  @override
  String get spaceName => 'Class name';

  @override
  String startedACall(Object senderName) {
    return '$senderName startet en samtale';
  }

  @override
  String get startYourFirstChat => 'Start din første sludring :-)';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'Hvordan har du det i dag?';

  @override
  String get submit => 'Send inn';

  @override
  String get sunday => 'Søndag';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String get systemTheme => 'System';

  @override
  String get tapOnDeviceToVerify => 'Tap on a device to verifiy';

  @override
  String get tapToShowImage => 'Tap to show image';

  @override
  String get tapToShowMenu => 'Trykk for å vise meny';

  @override
  String get theyDontMatch => 'Samsvarer ikke';

  @override
  String get theyMatch => 'Samsvarer';

  @override
  String get thisRoomHasBeenArchived => 'Dette rommet har blitt arkivert.';

  @override
  String get thursday => 'Torsdag';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Veksle favorittmerking';

  @override
  String get toggleMuted => 'Veksle forstumming';

  @override
  String get toggleUnread => 'Marker som lest/ulest';

  @override
  String get tooManyRequestsWarning => 'For mange forespørsler. Prøv igjen senere!';

  @override
  String get transferFromAnotherDevice => 'Overfør fra en annen enhet';

  @override
  String get tryToSendAgain => 'Prøv å sende igjen';

  @override
  String get tuesday => 'Tirsdag';

  @override
  String get unavailable => 'Utilgjengelig';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username opphevet bannlysning av $targetName';
  }

  @override
  String get unblockDevice => 'Opphev blokkering av enhet';

  @override
  String get unknownDevice => 'Ukjent enhet';

  @override
  String get unknownEncryptionAlgorithm => 'Ukjent krypteringsalgoritme';

  @override
  String unknownEvent(Object type) {
    return 'Ukjent hendelse «$type»';
  }

  @override
  String get unknownSessionVerify => 'Ukjent økt. Bekreft den';

  @override
  String get unlockChatBackup => 'Unlock chat backup';

  @override
  String get unmuteChat => 'Opphev forstumming av sludring';

  @override
  String get unpin => 'Løsne';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount uleste sludringer',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      other: '$unreadEvents uleste meldinger',
    );
  }

  @override
  String get useAmoledTheme => 'Bruk AMOLED-kompatible farger?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username og $count andre skriver…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username og $username2 skriver…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username skriver…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username har forlatt sludringen';
  }

  @override
  String get username => 'Brukernavn';

  @override
  String get userNotVerified => 'Ubekreftet bruker';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username sendte en $type-hendelse';
  }

  @override
  String get userUnknownVerification => 'Bruker har ukjent bekreftelsesstatus';

  @override
  String get userVerified => 'Bekreftet bruker';

  @override
  String get unverified => 'Unverified';

  @override
  String get verified => 'Verified';

  @override
  String get verifiedSession => 'Økt bekreftet!';

  @override
  String get verify => 'Bekreft';

  @override
  String get verifyManual => 'Bekreft manuelt';

  @override
  String get verifyStart => 'Start bekreftelse';

  @override
  String get verifySuccess => 'Du har bekreftet!';

  @override
  String get verifyTitle => 'Bekrefter annen konto';

  @override
  String get verifyUser => 'Bekreft bruker';

  @override
  String get videoCall => 'Videosamtale';

  @override
  String get visibilityOfTheChatHistory => 'Sludrehistorikkens synlighet';

  @override
  String get visibleForAllParticipants => 'Synlig for alle deltagere';

  @override
  String get visibleForEveryone => 'Synlig for alle';

  @override
  String get voiceMessage => 'Lydmelding';

  @override
  String get waitingPartnerAcceptRequest => 'Waiting for partner to accept the request…';

  @override
  String get waitingPartnerEmoji => 'Waiting for partner to accept the emoji…';

  @override
  String get waitingPartnerNumbers => 'Venter på at samtalepartner skal godta tallene …';

  @override
  String get wallpaper => 'Bakgrunnsbilde';

  @override
  String get warning => 'Advarsel!';

  @override
  String get warningEncryptionInBeta => 'Ende-til-ende -kryptering er i beta. Bruk på egen risiko!';

  @override
  String get wednesday => 'Onsdag';

  @override
  String get welcomeText => 'Velkommen til det søteste lynmeldingsprogrammet i Matrix-nettverket.';

  @override
  String get weSentYouAnEmail => 'Du har fått en e-post';

  @override
  String get whoCanPerformWhichAction => 'Hvem kan utføre hvilken handling';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Hvem tillates å ta del i denne gruppen';

  @override
  String get whyDoYouWantToReportThis => 'Hvorfor ønsker du å rapportere dette?';

  @override
  String get wipeChatBackup => 'Wipe your chat backup to create a new security key?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Med disse adressene kan du gjenopprette passordet ditt hvis du trenger det.';

  @override
  String get writeAMessage => 'Skriv en melding …';

  @override
  String get yes => 'Ja';

  @override
  String get you => 'Deg';

  @override
  String get youAreInvitedToThisChat => 'Du er invitert til denne sludringen';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Du deltar ikke lenger i denne sludringen';

  @override
  String get youCannotInviteYourself => 'Du kan ikke invitere deg selv';

  @override
  String get youHaveBeenBannedFromThisChat => 'Du har blitt bannlyst fra denne sludringen';

  @override
  String get yourChatsAreBeingSynced => 'Your chats are being synced…';

  @override
  String get yourOwnUsername => 'Ditt eget brukernavn';

  @override
  String get yourPublicKey => 'Din offentlige nøkkel';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Du vil bli tilknyttet $homeserver';
  }

  @override
  String get zoomIn => 'Zoom in';

  @override
  String get zoomOut => 'Zoom out';

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
