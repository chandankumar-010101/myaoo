

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Croatian (`hr`).
class L10nHr extends L10n {
  L10nHr([String locale = 'hr']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Lozinke se ne poklapaju!';

  @override
  String get pleaseEnterValidEmail => 'Upiši valjanu e-mail adresu.';

  @override
  String get repeatPassword => 'Ponovi lozinku';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Odaberi barem $min znakova.';
  }

  @override
  String get about => 'Informacije';

  @override
  String get accept => 'Prihvati';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username je prihvatio/la poziv';
  }

  @override
  String get account => 'Račun';

  @override
  String get accountInformation => 'Podaci računa';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username je aktivirao/la obostrano šifriranje';
  }

  @override
  String get addEmail => 'Dodaj e-mail';

  @override
  String get addGroupDescription => 'Dodaj opis grupe';

  @override
  String get addNewFriend => 'Dodaj novog prijatelja';

  @override
  String get addToSpace => 'Dodaj u prostor';

  @override
  String get admin => 'Administrator';

  @override
  String get alias => 'pseudonim';

  @override
  String get all => 'Svi';

  @override
  String get allChats => 'Svi chatovi';

  @override
  String get alreadyHaveAnAccount => 'Već imaš račun?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName je odgovorio/la na poziv';
  }

  @override
  String get anyoneCanJoin => 'Svatko se može pridružiti';

  @override
  String get appLock => 'Zaključavanje programa';

  @override
  String get archive => 'Arhiv';

  @override
  String get archivedRoom => 'Arhivirana soba';

  @override
  String get areGuestsAllowedToJoin => 'Smiju li se gosti pridružiti';

  @override
  String get areYouSure => 'Stvarno to želiš?';

  @override
  String get areYouSureYouWantToLogout => 'Stvarno se želiš odjaviti?';

  @override
  String get askSSSSSign => 'Za potpisivanje druge osobe, upiši svoju sigurnosnu lozinku ili ključ za oporavak.';

  @override
  String get askSSSSVerify => 'Za potvrđivanje tvoje sesije, upiši svoju sigurnosnu lozinku ili ključ za obnavljanje.';

  @override
  String askVerificationRequest(Object username) {
    return 'Prihvatiti ovaj zahtjev za potvrđivanje od $username?';
  }

  @override
  String get audioPlayerPause => 'Zaustavi';

  @override
  String get audioPlayerPlay => 'Pokreni';

  @override
  String get authentication => 'Autentifikacija';

  @override
  String get autoplayImages => 'Automatski pokreni animirane naljepnice i emotikone';

  @override
  String get avatarHasBeenChanged => 'Avatar promijenjen';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Domaći poslužitelj podržava vrste prijave:\n${serverVersions}\nMeđutim ovaj program podržava samo:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Pošalji pritiskom tipke enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Domaći poslužitelj podržava verzije specifikacije:\n${serverVersions}\nMeđutim ovaj program podržava samo $supportedVersions';
  }

  @override
  String get banFromChat => 'Isključi iz chata';

  @override
  String get banned => 'Isključen';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username je isključio/la $targetName';
  }

  @override
  String get blockDevice => 'Blokiraj uređaj';

  @override
  String get blocked => 'Blokirano';

  @override
  String get botMessages => 'Poruke bota';

  @override
  String get bubbleSize => 'Veličina mjehurića';

  @override
  String get cachedKeys => 'Međuspremljeni ključevi';

  @override
  String get cancel => 'Odustani';

  @override
  String cantOpenUri(Object uri) {
    return 'URI adresa $uri se ne može otvoriti';
  }

  @override
  String get changeDeviceName => 'Promijeni ime uređaja';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username je promijenio/la avatar chata';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username je promijenio/la opis razgovora u: „$description”';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username je promijenio/la ime razgovora u: „$chatname”';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username je promijenio/la dozvole chata';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username je promijenio/la ime u: „$displayname”';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username je promijenio/la pravila pristupa za goste';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username je promijenio/la pravila pristupa za goste u: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username je promijenio/la vidljivost kronologije';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username je promijenio/la vidljivost kronologije u: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username je promijenio/la pravila pridruživanja';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username je promijenio/la pravila pridruživanja u: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username je promijenio/la svoj avatar';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username je promijenio/la pseudonime soba';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username je promijenio/la poveznicu poziva';
  }

  @override
  String get changelog => 'Zapis promjena';

  @override
  String get changePassword => 'Promijeni lozinku';

  @override
  String get changesHaveBeenSaved => 'Promjene nisu spremljene';

  @override
  String get changeTheHomeserver => 'Promijeni domaćeg poslužitelja';

  @override
  String get changeTheme => 'Promijeni tvoj stil';

  @override
  String get changeTheNameOfTheGroup => 'Promijeni ime grupe';

  @override
  String get changeTheServer => 'Promijeni poslužitelja';

  @override
  String get changeWallpaper => 'Promijeni sliku pozadine';

  @override
  String get changeYourAvatar => 'Promijeni svoj avatar';

  @override
  String get channelCorruptedDecryptError => 'Šifriranje je oštećeno';

  @override
  String get chat => 'Chat';

  @override
  String get yourUserId => 'Tvoj korisnički ID:';

  @override
  String get setupChatBackup => 'Postavi sigurnosnu kopiju chata';

  @override
  String get iWroteDownTheKey => 'Zapisao sam ključ';

  @override
  String get yourChatBackupHasBeenSetUp => 'Sigurnosna kopija tvog chata je postavljena.';

  @override
  String get chatBackup => 'Sigurnosna kopija chata';

  @override
  String get setupChatBackupDescription => 'Kako bismo zaštitili tvoje poruke, generirali smo sigurnosni ključ.\nČuvaj ga na sigurnom mjestu, poput upravljača lozinki.';

  @override
  String get chatBackupDescription => 'Sigurnosna kopija chata osigurana je sigurnosnim ključem. Pazi da ga ne izgubiš.';

  @override
  String get chatDetails => 'Detalji chata';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat je dodan u ovaj prostor';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat je uklonjen iz ovog prostora';

  @override
  String get chats => 'Chatovi';

  @override
  String get chooseAStrongPassword => 'Odaberi snažnu lozinku';

  @override
  String get chooseAUsername => 'Odaberi korisničko ime';

  @override
  String get clearArchive => 'Isprazni arhiv';

  @override
  String get clearText => 'Ukloni tekst';

  @override
  String get close => 'Zatvori';

  @override
  String get commandHint_ban => 'Isključi korisnika iz ove sobe';

  @override
  String get commandHint_clearcache => 'Isprazni predmemoriju';

  @override
  String get commandHint_create => 'Stvori prazan grupni chat\nKoristi --no-encryption za deaktiviranje šifriranja';

  @override
  String get commandHint_discardsession => 'Odbaci sesiju';

  @override
  String get commandHint_dm => 'Započni izravni chat\nKoristi --no-encryption za deaktiviranje šifriranja';

  @override
  String get commandHint_html => 'Pošalji HTML formatirani tekst';

  @override
  String get commandHint_invite => 'Pozovi korisnika u ovu sobu';

  @override
  String get commandHint_join => 'Pridruži se zadanoj sobi';

  @override
  String get commandHint_kick => 'Ukloni korisnika iz ove sobe';

  @override
  String get commandHint_leave => 'Napusti ovu sobu';

  @override
  String get commandHint_me => 'Opiši se';

  @override
  String get commandHint_myroomavatar => 'Postavi svoju sliku za ovu sobu';

  @override
  String get commandHint_myroomnick => 'Postavi svoje ime za ovu sobu';

  @override
  String get commandHint_op => 'Postavi razinu prava zadanog korisnika (standardno: 50)';

  @override
  String get commandHint_plain => 'Pošalji neformatirani tekst';

  @override
  String get commandHint_react => 'Pošalji odgovor kao reakciju';

  @override
  String get commandHint_send => 'Pošalji tekst';

  @override
  String get commandHint_unban => 'Ponovo uključi korisnika u ovu sobu';

  @override
  String get commandInvalid => 'Naredba nevaljana';

  @override
  String commandMissing(Object command) {
    return '$command nije naredba.';
  }

  @override
  String get compareEmojiMatch => 'Usporedi i provjeri, poklapaju li se sljedeći emojiji s onima drugog uređaja:';

  @override
  String get compareNumbersMatch => 'Usporedi i provjeri, poklapaju li se sljedeći brojevi s onima drugog uređaja:';

  @override
  String get configureChat => 'Konfiguriraj chat';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get connect => 'Spoji';

  @override
  String get connectionAttemptFailed => 'Neuspio pokušaj povezivanja';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontakt je pozvan u grupu';

  @override
  String get containsDisplayName => 'Sadržava prikazano ime';

  @override
  String get containsUserName => 'Sadrži korisničko ime';

  @override
  String get contentHasBeenReported => 'Sadržaj je prijavljen administratorima poslužitelja';

  @override
  String get contentViewer => 'Prikazivač sadržaja';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik';

  @override
  String get copy => 'Kopiraj';

  @override
  String get copyToClipboard => 'Kopiraj u međuspremnik';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Neuspjelo dešifriranje poruke: $error';
  }

  @override
  String get couldNotSetAvatar => 'Neuspjelo postavljanje avatara';

  @override
  String get couldNotSetDisplayname => 'Neuspjelo postavljanje prikaznog imena';

  @override
  String countParticipants(Object count) {
    return '$count sudionika';
  }

  @override
  String get create => 'Stvori';

  @override
  String get createAccountNow => 'Stvori račun sada';

  @override
  String createdTheChat(Object username) {
    return '$username je stvorio/la chat';
  }

  @override
  String get createNewGroup => 'Stvori novu grupu';

  @override
  String get createNewSpace => 'Novi prostor';

  @override
  String get crossSigningDisabled => 'Unakrsno potpisivanje isključeno';

  @override
  String get crossSigningEnabled => 'Unakrsno potpisivanje uključeno';

  @override
  String get currentlyActive => 'Trenutačno aktivni';

  @override
  String get darkTheme => 'Tamna';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '$day. $month.';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '$day. $month. $year.';
  }

  @override
  String get deactivateAccountWarning => 'Ovo će nepovratno deaktivirati tvoj korisnički račun. Stvarno to želiš?';

  @override
  String get defaultPermissionLevel => 'Standardna razina dozvole';

  @override
  String get delete => 'Izbriši';

  @override
  String get deleteAccount => 'Izbriši račun';

  @override
  String get deleteMessage => 'Izbriši poruku';

  @override
  String get deny => 'Odbij';

  @override
  String get device => 'Uređaj';

  @override
  String get deviceId => 'ID oznaka uređaja';

  @override
  String get devices => 'Uređaji';

  @override
  String get deviceVerifyDescription => 'Šifriranje je sigurno samo ako su svi uređaji potvrđeni.';

  @override
  String get directChats => 'Izravni chatovi';

  @override
  String get discardPicture => 'Odbaci sliku';

  @override
  String get discover => 'Otkrij';

  @override
  String get discoverGroups => 'Otkrij grupe';

  @override
  String get displaynameHasBeenChanged => 'Prikazno ime je promijenjeno';

  @override
  String get donate => 'Doniraj';

  @override
  String get dontAskAgain => 'Prekini i nemoj ponovo pitati';

  @override
  String get downloadFile => 'Preuzmi datoteku';

  @override
  String get edit => 'Uredi';

  @override
  String get editBlockedServers => 'Uredi blokirane poslužitelje';

  @override
  String get editChatPermissions => 'Uredi dozvole za chat';

  @override
  String get editDisplayname => 'Uredi prikazano ime';

  @override
  String get editJitsiInstance => 'Uredi Jitsi primjerak';

  @override
  String get editRoomAliases => 'Uredi pseudonime sobe';

  @override
  String get editRoomAvatar => 'Uredi avatar sobe';

  @override
  String get emoteExists => 'Emotikon već postoji!';

  @override
  String get emoteInvalid => 'Neispravna kratica emotikona!';

  @override
  String get emotePacks => 'Paketi emotikona za sobu';

  @override
  String get emoteSettings => 'Postavke emotikona';

  @override
  String get emoteShortcode => 'Kratica emotikona';

  @override
  String get emoteWarnNeedToPick => 'Moraš odabrati jednu kraticu emotikona i sliku!';

  @override
  String get emptyChat => 'Prazan chat';

  @override
  String get enableChatBackup => 'Aktiviraj sigurnosnu kopiju chata kako nikada ne bi izgubio/la pristup tvojim chatovima.';

  @override
  String get enableEmotesGlobally => 'Aktiviraj paket emotikona globalno';

  @override
  String get enableEncryption => 'Aktiviraj šifriranje';

  @override
  String get enableEncryptionWarning => 'Više nećeš moći deaktivirati šifriranje. Stvarno to želiš?';

  @override
  String get encrypted => 'Šifrirano';

  @override
  String get encryption => 'Šifriranje';

  @override
  String get encryptionAlgorithm => 'Algoritam šifriranja';

  @override
  String get encryptionNotEnabled => 'Šifriranje nije aktivirano';

  @override
  String get end2endEncryptionSettings => 'Postavke obostranog šifriranja';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName je završio/la poziv';
  }

  @override
  String get enterAGroupName => 'Upiši ime grupe';

  @override
  String get enterAnEmailAddress => 'Upiši e-adressu';

  @override
  String get enterASpacepName => 'Upiši ime prostora';

  @override
  String get enterAUsername => 'Upiši korisničko ime';

  @override
  String get homeserver => 'Domaći poslužitelj';

  @override
  String get enterYourHomeserver => 'Upiši svoj domaći poslužitelj';

  @override
  String errorObtainingLocation(Object error) {
    return 'Greška u dohvaćanju lokacije: $error';
  }

  @override
  String get everythingReady => 'Sve je spremno!';

  @override
  String get extremeOffensive => 'Izrazito uvredljiv';

  @override
  String get fileName => 'Ime datoteke';

  @override
  String get fileSize => 'Veličina datoteke';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Veličina fonta';

  @override
  String get forward => 'Proslijedi';

  @override
  String get friday => 'Petak';

  @override
  String get friends => 'Prijatelji';

  @override
  String get fromJoining => 'Od pridruživanja';

  @override
  String get fromTheInvitation => 'Od poziva';

  @override
  String get goToTheNewRoom => 'Idi u novu sobu';

  @override
  String get group => 'Grupiraj';

  @override
  String get groupDescription => 'Opis grupe';

  @override
  String get groupDescriptionHasBeenChanged => 'Opis grupe promijenjen';

  @override
  String get groupIsPublic => 'Grupa je javna';

  @override
  String get groups => 'Grupe';

  @override
  String groupWith(Object displayname) {
    return 'Grupa s $displayname';
  }

  @override
  String get guestsAreForbidden => 'Gosti su zabranjeni';

  @override
  String get guestsCanJoin => 'Gosti se mogu pridružiti';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username je povukao/la poziv za $targetName';
  }

  @override
  String get help => 'Pomoć';

  @override
  String get hideRedactedEvents => 'Sakrij promijenjene događaje';

  @override
  String get hideUnknownEvents => 'Sakrij nepoznate događaje';

  @override
  String get homeserverIsNotCompatible => 'Domaći poslužitelj nije kompatibilan';

  @override
  String get howOffensiveIsThisContent => 'Koliko je ovaj sadržaj uvredljiv?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identitet';

  @override
  String get ignore => 'Zanemari';

  @override
  String get ignoredUsers => 'Zanemareni korisnici';

  @override
  String get ignoreListDescription => 'Možeš zanemariti korisnike koji te smetaju. Nećeš moći primati poruke niti pozive u sobe od korisnika koji se nalaze u tvom osobnom popisu zanemarivanja.';

  @override
  String get ignoreUsername => 'Zanemari korisničko ime';

  @override
  String get iHaveClickedOnLink => 'Pritisnuo/la sam poveznicu';

  @override
  String get incorrectPassphraseOrKey => 'Neispravna lozinka ili ključ za obnavljanje';

  @override
  String get inoffensive => 'Neuvredljiv';

  @override
  String get invalidEmail => 'Neipsravna e-mail adresa';

  @override
  String get inviteContact => 'Pozovi kontakt';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Pozovi kontakt u $groupName';
  }

  @override
  String get invited => 'Pozvan/a';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username je pozvao/la $targetName';
  }

  @override
  String get invitedUsersOnly => 'Samo pozvani korisnici';

  @override
  String get inviteForMe => 'Poziv za mene';

  @override
  String inviteText(Object username, Object link) {
    return '$username te je pozvao/la u FluffyChat. \n1. Instaliraj FluffyChat: https://fluffychat.im \n2. Registriraj ili prijavi se \n3. Otvori poveznicu poziva: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Je li sljedeći ključ uređaja ispravan?';

  @override
  String get isTyping => 'piše …';

  @override
  String joinedTheChat(Object username) {
    return '$username se pridružio/la chatu';
  }

  @override
  String get joinRoom => 'Pridruži se sobi';

  @override
  String get keysCached => 'Ključevi su spremljeni u predmemoriji';

  @override
  String get keysMissing => 'Nedostaju ključevi';

  @override
  String kicked(Object username, Object targetName) {
    return '$username je izbacio/la $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username je izbacio/la i isključio/la $targetName';
  }

  @override
  String get kickFromChat => 'Izbaci iz chata';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Zadnja aktivnost: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Zadnji viđeni IP';

  @override
  String get lastSeenLongTimeAgo => 'Viđeno prije dugo vremena';

  @override
  String get leave => 'Napusti';

  @override
  String get leftTheChat => 'Napustio/la je chat';

  @override
  String get license => 'Licenca';

  @override
  String get lightTheme => 'Svjetla';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Učitaj još $count sudionika';
  }

  @override
  String get loadingPleaseWait => 'Učitava se … Pričekaj.';

  @override
  String get showSpaces => 'Prikaži popis prostora';

  @override
  String get loadMore => 'Učitaj još …';

  @override
  String get locationDisabledNotice => 'Lokacijske usluge su deaktivirane. Za dijeljenje tvoje lokacije aktiviraj ih.';

  @override
  String get locationPermissionDeniedNotice => 'Lokacijske dozvole su odbijene. Za dijeljenje tvoje lokacije dozvoli ih.';

  @override
  String get login => 'Prijava';

  @override
  String logInTo(Object homeserver) {
    return 'Prijavi se na $homeserver';
  }

  @override
  String get loginWithOneClick => 'Prijavi se samo s jednim pritiskom';

  @override
  String get logout => 'Odjava';

  @override
  String get makeAModerator => 'Postavi kao voditelja';

  @override
  String get makeAnAdmin => 'Postavi kao administratora';

  @override
  String get makeSureTheIdentifierIsValid => 'Provjeri ispravnost identifikator';

  @override
  String get memberChanges => 'Promjene člana';

  @override
  String get mention => 'Spominjanje';

  @override
  String get messages => 'Poruke';

  @override
  String get messageWillBeRemovedWarning => 'Poruke će se ukloniti za sve sudionike';

  @override
  String get moderator => 'Voditelj';

  @override
  String get monday => 'Ponedjeljak';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'Još jedan događaj',
      other: 'Još $count događaja',
    );
  }

  @override
  String get muteChat => 'Isključi zvuk chata';

  @override
  String get needPantalaimonWarning => 'Za trenutačno korištenje obostranog šifriranja trebaš Pantalaimon.';

  @override
  String get newChat => 'Novi chat';

  @override
  String get newMessageInFluffyChat => 'Nova poruka u FluffyChatu';

  @override
  String get newVerificationRequest => 'Novi zahtjev za potvrđivanje!';

  @override
  String get next => 'Dalje';

  @override
  String get no => 'Ne';

  @override
  String get noConnectionToTheServer => 'Ne postoji veza s poslužiteljem';

  @override
  String get noCrossSignBootstrap => 'Fluffychat trenutačno ne podržava unakrsno potpisivanje. Aktiviraj potpisivanje u programu Element.';

  @override
  String get noDescription => 'Bez opisa';

  @override
  String get noEmotesFound => 'Nema emotikona. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Šifriranje možeš aktivirati samo nakon što soba više nije javno dostupna.';

  @override
  String get noGoogleServicesWarning => 'Čini se da na mobitelu nemaš google usluge. To je dobra odluka za tvoju privatnost! Za automatsko primanje obavijesti u FluffyChatu preporučujemo koristiti https://microg.org/ or https://unifiedpush.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 nije matrix poslužitelj. Da li umjesto njega koristiti $server2?';
  }

  @override
  String get createNewChatExplaination => 'Jednostavno snimi QR kod ili dijeli poveznicu za pozivnicu ako niste jedan blizu drugog.';

  @override
  String get shareYourInviteLink => 'Dijeli svoju poveznicu za pozivnicu';

  @override
  String get typeInInviteLinkManually => 'Upiši poveznicu za pozivnicu …';

  @override
  String get scanQrCode => 'Snimi QR kod';

  @override
  String get noMegolmBootstrap => 'Umjesto toga uključi internetsko spremanje sigurnosnih kopija ključa u programu Element.';

  @override
  String get none => 'Ništa';

  @override
  String get newPasswordDescription => 'Za omogućavanje obnavljanja lozinke, svom računu kasnije dodaj e-mail adresu.';

  @override
  String get newUsernameDescription => 'Tvoj će korisnički ID tada biti u obliku @korisničkoime:imeposlužitelja';

  @override
  String get noPasswordRecoveryDescription => 'Još nisi dodao/la način za obnavljanje lozinke.';

  @override
  String get noPermission => 'Bez dozvole';

  @override
  String get noPublicRoomsFound => 'Nema javnih soba …';

  @override
  String get noRoomsFound => 'Nema soba …';

  @override
  String get noStatusesFound => 'Do sada nema stanja.';

  @override
  String get notifications => 'Obavijesti';

  @override
  String get notificationsEnabledForThisAccount => 'Obavijesti su aktivirane za ovaj račun';

  @override
  String get notSupportedInWeb => 'Nije podržano u internetu';

  @override
  String numberSelected(Object number) {
    return '$number odabrano';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count korisnika pišu …';
  }

  @override
  String get obtainingLocation => 'Dohvaćanje lokacije …';

  @override
  String get offensive => 'Uvredljiv';

  @override
  String get offline => 'Nepovezano s internetom';

  @override
  String get ok => 'U redu';

  @override
  String get online => 'Povezano s internetom';

  @override
  String get onlineKeyBackupDisabled => 'Internetski ključ sigurnosnih kopija je deaktiviran';

  @override
  String get onlineKeyBackupEnabled => 'Internetski ključ sigurnosnih kopija je aktiviran';

  @override
  String get oopsPushError => 'Ups! Nažalost se dogodila greška prilikom postavljanja automatskog primanja obavijesti.';

  @override
  String get oopsSomethingWentWrong => 'Ups, dogodila se greška …';

  @override
  String get openAppToReadMessages => 'Za čitanje poruka, otvori program';

  @override
  String get openCamera => 'Otvori kameru';

  @override
  String get openVideoCamera => 'Otvori kameru za video';

  @override
  String get oneClientLoggedOut => 'Jedan od tvojih klijenata je odjavljen';

  @override
  String get addAccount => 'Dodaj račun';

  @override
  String get editBundlesForAccount => 'Uredi pakete za ovaj račun';

  @override
  String get addToBundle => 'Dodaj u paket';

  @override
  String get removeFromBundle => 'Ukloni iz ovog paketa';

  @override
  String get bundleName => 'Ime paketa';

  @override
  String get enableMultiAccounts => '(BETA) Omogući korištenje više računa na ovom uređaju';

  @override
  String get openInMaps => 'Otvori u kartama';

  @override
  String get link => 'Poveznica';

  @override
  String get serverRequiresEmail => 'Za registraciju ovaj poslužitelj mora potvrditi tvoju e-mail adresu.';

  @override
  String get optionalGroupName => '(Opcionalno) Ime grupe';

  @override
  String get or => 'Ili';

  @override
  String get participant => 'Sudionik';

  @override
  String get participatingUserDevices => 'Sudjelujući korisnički uređaji';

  @override
  String get passphraseOrKey => 'tajni izraz ili ključ za obnavljanje';

  @override
  String get password => 'Lozinka';

  @override
  String get passwordForgotten => 'Zaboravljena lozinka';

  @override
  String get passwordHasBeenChanged => 'Lozinka je promijenjena';

  @override
  String get passwordRecovery => 'Obnavljanje lozinke';

  @override
  String get people => 'Ljudi';

  @override
  String get pickImage => 'Odaberi sliku';

  @override
  String get pin => 'Prikvači';

  @override
  String play(Object fileName) {
    return 'Sviraj $fileName';
  }

  @override
  String get pleaseChoose => 'Odaberi';

  @override
  String get pleaseChooseAPasscode => 'Odaberi lozinku';

  @override
  String get pleaseChooseAUsername => 'Odaberi korisničko ime';

  @override
  String get pleaseClickOnLink => 'Pritisni poveznicu u e-poruci, zatim nastavi.';

  @override
  String get pleaseEnter4Digits => 'Upiši 4 znamenke ili ostavi prazno, za deaktiviranje zaključavanja programa.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Upiši Matrix-ID.';

  @override
  String get pleaseEnterSecurityKey => 'Upiši sigurnosni ključ:';

  @override
  String get pleaseEnterYourPassword => 'Upiši svoju lozinku';

  @override
  String get pleaseEnterYourPin => 'Upiši svoj pin';

  @override
  String get pleaseEnterYourUsername => 'Upiši svoje korisničko ime';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Slijedi upute na web-stranici i dodirni „Dalje”.';

  @override
  String get privacy => 'Privatnost';

  @override
  String get publicGroups => 'Javne grupe';

  @override
  String get publicKey => 'Javni ključ';

  @override
  String get publicRooms => 'Javne sobe';

  @override
  String get publicSpace => 'Javni prostor';

  @override
  String get pushRules => 'Pravila slanja';

  @override
  String get reason => 'Razlog';

  @override
  String get recording => 'Snimanje';

  @override
  String redactedAnEvent(Object username) {
    return '$username je preuredio/la događaj';
  }

  @override
  String get redactMessage => 'Ispravi poruku';

  @override
  String get register => 'Registracija';

  @override
  String get reject => 'Odbij';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username je odbio/la poziv';
  }

  @override
  String get rejoin => 'Ponovo se pridruži';

  @override
  String get remove => 'Ukloni';

  @override
  String get removeAllOtherDevices => 'Ukloni sve druge uređaje';

  @override
  String removedBy(Object username) {
    return 'Uklonjeno od $username';
  }

  @override
  String get removeDevice => 'Ukloni uređaj';

  @override
  String get unbanFromChat => 'Ponovo uključi u chat';

  @override
  String get removeMessage => 'Ukloni poruku';

  @override
  String get removeYourAvatar => 'Ukloni svoj avatar';

  @override
  String get renderRichContent => 'Prikaži formatirani sadržaj poruke';

  @override
  String get replaceRoomWithNewerVersion => 'Zamijeni sobu s novom verzijom';

  @override
  String get reply => 'Odgovori';

  @override
  String get reportMessage => 'Prijavi poruku';

  @override
  String get requestPermission => 'Zatraži dozvolu';

  @override
  String get requestToReadOlderMessages => 'Zahtjev za čitanje starijih poruka';

  @override
  String get revokeAllPermissions => 'Opozovi sve dozvole';

  @override
  String get roomHasBeenUpgraded => 'Soba je nadograđena';

  @override
  String get roomVersion => 'Verzija sobe';

  @override
  String get saturday => 'Subota';

  @override
  String savedFileAs(Object filename) {
    return 'Datoteka je spremljena kao $filename';
  }

  @override
  String get saveFile => 'Spremi datoteku';

  @override
  String get saveFileToFolder => 'Spremi datoteku u ovu mapu';

  @override
  String get search => 'Traži';

  @override
  String get searchForAChat => 'Traži chat';

  @override
  String get security => 'Sigurnost';

  @override
  String get securityKey => 'Sigurnosni ključ';

  @override
  String get securityKeyLost => 'Izgubio/la si sigurnosni ključ?';

  @override
  String seenByUser(Object username) {
    return 'Viđeno od $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Viđeno od $username i još $count korisnika',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Viđeno od $username i $username2';
  }

  @override
  String get send => 'Pošalji';

  @override
  String get sendAMessage => 'Pošalji poruku';

  @override
  String get sendAsText => 'Pošalji kao tekst';

  @override
  String get sendAudio => 'Pošalji audio datoteku';

  @override
  String get sendBugReports => 'Dozvoli slanje izvještaja o greškama pomoću sentry.io';

  @override
  String get sendFile => 'Pošalji datoteku';

  @override
  String get sendImage => 'Pošalji sliku';

  @override
  String get sendMessages => 'Šalji poruke';

  @override
  String get sendOriginal => 'Pošalji original';

  @override
  String get sendSticker => 'Pošalji naljepnicu';

  @override
  String get sendVideo => 'Pošalji video datoteku';

  @override
  String sentAFile(Object username) {
    return '$username ja poslao/la datoteku';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username ja poslao/la audio datoteku';
  }

  @override
  String sentAPicture(Object username) {
    return '$username ja poslao/la sliku';
  }

  @override
  String sentASticker(Object username) {
    return '$username je poslao/la naljepnicu';
  }

  @override
  String sentAVideo(Object username) {
    return '$username ja poslao/la video';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName je poslao/la podatke poziva';
  }

  @override
  String get sentryInfo => 'Podaci o tvojoj privatnosti: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Sesija je potvrđena';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Postavi sliku profila';

  @override
  String get setAsCanonicalAlias => 'Postavi kao glavni pseudonim';

  @override
  String get setCustomEmotes => 'Postavi prilagođene emotikone';

  @override
  String get setGroupDescription => 'Postavi opis grupe';

  @override
  String get setInvitationLink => 'Pošalji poveznicu za pozivnicu';

  @override
  String get setPermissionsLevel => 'Postavi razinu dozvola';

  @override
  String get setStatus => 'Postavi stanje';

  @override
  String get settings => 'Postavke';

  @override
  String get share => 'Dijeli';

  @override
  String sharedTheLocation(Object username) {
    return '$username je dijelio/la svoje mjesto';
  }

  @override
  String get shareLocation => 'Dijeli lokaciju';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Pokaži lozinku';

  @override
  String get signUp => 'Prijavi se';

  @override
  String get singlesignon => 'Jednokratna prijava';

  @override
  String get skip => 'Preskoči';

  @override
  String get soundVibrationLedColor => 'Zvuk, vibracija LED-boja';

  @override
  String get sourceCode => 'Izvorni kȏd';

  @override
  String get spaceIsPublic => 'Prostor je javan';

  @override
  String get spaceName => 'Ime prostora';

  @override
  String startedACall(Object senderName) {
    return '$senderName ja započeo/la poziv';
  }

  @override
  String get startYourFirstChat => 'Započni svoj prvi razgovor! 🙂\n- Dodirni gumb „Novi razgovor”\n- Skeniraj QR-kod prijatelja\n- Zabavi se u razgovoru';

  @override
  String get status => 'Stanje';

  @override
  String get statusExampleMessage => 'Kako si danas?';

  @override
  String get submit => 'Pošalji';

  @override
  String get sunday => 'Nedjelja';

  @override
  String get synchronizingPleaseWait => 'Sinkronizira se … Pričekaj.';

  @override
  String get systemTheme => 'Sustav';

  @override
  String get tapOnDeviceToVerify => 'Za potvrđivanje dodirni uređaj';

  @override
  String get tapToShowImage => 'Dodirni za prikaz slike';

  @override
  String get tapToShowMenu => 'Dodirni za prikaz izbornika';

  @override
  String get theyDontMatch => 'Ne poklapaju se';

  @override
  String get theyMatch => 'Poklapaju se';

  @override
  String get thisRoomHasBeenArchived => 'Ova soba je arhivirana.';

  @override
  String get thursday => 'Četvrtak';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Uklj/Isklj favorite';

  @override
  String get toggleMuted => 'Uklj/Isklj isključene';

  @override
  String get toggleUnread => 'Označi kao pročitano/nepročitano';

  @override
  String get tooManyRequestsWarning => 'Previše zahtjeva. Pokušaj ponovo kasnije!';

  @override
  String get transferFromAnotherDevice => 'Prenesi s jednog drugog uređaja';

  @override
  String get tryToSendAgain => 'Pokušaj ponovo poslati';

  @override
  String get tuesday => 'Utorak';

  @override
  String get unavailable => 'Nedostupno';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username je ponovo uključio/la $targetName';
  }

  @override
  String get unblockDevice => 'Deblokiraj uređaj';

  @override
  String get unknownDevice => 'Nepoznat uređaj';

  @override
  String get unknownEncryptionAlgorithm => 'Nepoznat algoritam šifriranja';

  @override
  String unknownEvent(Object type) {
    return 'Nepoznat događaj „$type”';
  }

  @override
  String get unknownSessionVerify => 'Nepoznata sesija. Potvrdi je';

  @override
  String get unlockChatBackup => 'Otključaj sigurnosnu kopiju chata';

  @override
  String get unmuteChat => 'Uključi zvuk chata';

  @override
  String get unpin => 'Otkvači';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 nepročitan chat',
      other: '$unreadCount nepročitana chata',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 nepročitana poruka',
      other: '$unreadEvents nepročitane poruke',
    );
  }

  @override
  String get useAmoledTheme => 'Koristiti kompatibilne boje AMOLED-a?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username i još $count korisnika pišu …';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username i $username2 pišu …';
  }

  @override
  String userIsTyping(Object username) {
    return '$username piše …';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username je napustio/la chat';
  }

  @override
  String get username => 'Korisničko ime';

  @override
  String get userNotVerified => 'Korisnik nije potvrđen';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username ja poslao/la $type događaj';
  }

  @override
  String get userUnknownVerification => 'Korisnik ima nepoznato stanje potvrđivanja';

  @override
  String get userVerified => 'Korisnik je potvrđen';

  @override
  String get unverified => 'Nepotvrđeno';

  @override
  String get verified => 'Potvrđeno';

  @override
  String get verifiedSession => 'Uspješno potvrđena sesija!';

  @override
  String get verify => 'Potvrdi';

  @override
  String get verifyManual => 'Potvrdi ručno';

  @override
  String get verifyStart => 'Pokreni potvrđivanje';

  @override
  String get verifySuccess => 'Uspješno si potvrdio/la!';

  @override
  String get verifyTitle => 'Potvrđivanje drugog računa';

  @override
  String get verifyUser => 'Potvrdi korisnika';

  @override
  String get videoCall => 'Video poziv';

  @override
  String get visibilityOfTheChatHistory => 'Vidljivost kronologije chata';

  @override
  String get visibleForAllParticipants => 'Vidljivo za sve sudionike';

  @override
  String get visibleForEveryone => 'Vidljivo za sve';

  @override
  String get voiceMessage => 'Glasovna poruka';

  @override
  String get waitingPartnerAcceptRequest => 'Čeka se na sugovornika da prihvati zahtjev …';

  @override
  String get waitingPartnerEmoji => 'Čeka se na sugovornika da prihvati emoji …';

  @override
  String get waitingPartnerNumbers => 'Čeka se na sugovornika da prihvati brojeve …';

  @override
  String get wallpaper => 'Slika pozadine';

  @override
  String get warning => 'Upozorenje!';

  @override
  String get warningEncryptionInBeta => 'Obostrano šifriranje se trenutačno nalazi u beta stanju! Koriti na vlastitu odgovornost!';

  @override
  String get wednesday => 'Srijeda';

  @override
  String get welcomeText => 'Lijep pozdrav u najslađem programu za čavrljanje u mreži Matrix.';

  @override
  String get weSentYouAnEmail => 'Poslali smo ti e-poruku';

  @override
  String get whoCanPerformWhichAction => 'Tko može izvršiti koju radnju';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Tko se smije pridružiti grupi';

  @override
  String get whyDoYouWantToReportThis => 'Zašto želiš ovo prijaviti?';

  @override
  String get wipeChatBackup => 'Izbrisati sigurnosnu kopiju chata za stvaranje novog sigurnosnog ključa?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Lozinku možeš obnoviti pomoću ovih adresa.';

  @override
  String get writeAMessage => 'Napiši poruku …';

  @override
  String get yes => 'Da';

  @override
  String get you => 'Ti';

  @override
  String get youAreInvitedToThisChat => 'Pozvan/a si u ovaj chat';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Više ne sudjeluješ u ovom chatu';

  @override
  String get youCannotInviteYourself => 'Sebe ne možeš pozvati';

  @override
  String get youHaveBeenBannedFromThisChat => 'Isključen/a si iz ovog chata';

  @override
  String get yourChatsAreBeingSynced => 'Tvoji se chatovi sinkroniziraju …';

  @override
  String get yourOwnUsername => 'Tvoje korisničko ime';

  @override
  String get yourPublicKey => 'Tvoj javni ključ';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Bit ćeš povezan/a s $homeserver';
  }

  @override
  String get zoomIn => 'Uvećaj';

  @override
  String get zoomOut => 'Umanji';

  @override
  String get messageInfo => 'Informacija poruke';

  @override
  String get time => 'Vrijeme';

  @override
  String get messageType => 'Vrsta poruke';

  @override
  String get sender => 'Pošiljatelj';

  @override
  String get openGallery => 'Otvori galeriju';

  @override
  String get removeFromSpace => 'Ukloni iz prostora';

  @override
  String get removeFromSpaceDescription => 'Ovime se ovaj chat uklanja iz trenutačnog prostora. I dalje će biti vidljiv pod \"Svi chatovi\".';

  @override
  String get addToSpaceDescription => 'Odaberi prostor za dodavanje ovog chata.';

  @override
  String get start => 'Početak';

  @override
  String get setupChatBackupNow => 'Sada postavit sigurnosnu kopiju chata';

  @override
  String get pleaseEnterSecurityKeyDescription => 'Za otključavanje sigurnosne kopije chata, upši svoj sigurnosni ključ koji je generiran u prethodnoj sesiji. Tvoj sigurnosni ključ NIJE tvoja lozinka.';

  @override
  String get saveTheSecurityKeyNow => 'Sada spremi sigurnosni ključ';

  @override
  String get addToStory => 'Dodaj priči';

  @override
  String get publish => 'Objavi';

  @override
  String get whoCanSeeMyStories => 'Tko može vidjeti moje priče?';

  @override
  String get unsubscribeStories => 'Otkaži pretplatu na priče';

  @override
  String get thisUserHasNotPostedAnythingYet => 'Ovaj korisnik još nije objavio ništa u svojoj priči';

  @override
  String get yourStory => 'Tvoja priča';

  @override
  String get replyHasBeenSent => 'Odgovor je poslan';

  @override
  String videoWithSize(Object size) {
    return 'Video ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'Priča od $date: \n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Imaj na umu da ljudi mogu vidjeti i međusobno se kontaktirati u tvojoj priči.';

  @override
  String get whatIsGoingOn => 'Što se događa?';

  @override
  String get addDescription => 'Dodaj opis';

  @override
  String get storyPrivacyWarning => 'Imaj na umu da ljudi mogu vidjeti i međusobno se kontaktirati u tvojoj priči. Tvoje priče će biti vidljive 24 sata, ali nema jamstva da će se izbrisati sa svih uređaja i poslužitelja.';

  @override
  String get iUnderstand => 'Razumijem';

  @override
  String get openChat => 'Otvori chat';

  @override
  String get markAsRead => 'Označi kao pročitano';

  @override
  String get reportUser => 'Prijavi korisnika';

  @override
  String get dismiss => 'Odbaci';

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
  String get unsupportedAndroidVersion => 'Nepodržana Android verzija';

  @override
  String get unsupportedAndroidVersionLong => 'Ova funkcija zahtijeva noviju verziju Androida. Provjeri, postoje li nove verzije ili podrška za Lineage OS.';

  @override
  String get videoCallsBetaWarning => 'Please note that video calls are currently in beta. They might not work as expected or work at all on all platforms.';

  @override
  String get experimentalVideoCalls => 'Experimental video calls';

  @override
  String get emailOrUsername => 'E-mail ili korisničko ime';

  @override
  String switchToAccount(Object number) {
    return 'Prijeđi na račun $number';
  }

  @override
  String get nextAccount => 'Sljedeći račun';

  @override
  String get previousAccount => 'Prethodni račun';

  @override
  String get editWidgets => 'Edit widgets';

  @override
  String get addWidget => 'Add widget';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Tekstna bilješka';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Prilagođeno';

  @override
  String get widgetName => 'Ime';

  @override
  String get widgetUrlError => 'Ovo nije valjan URL.';

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
