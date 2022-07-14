

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Hungarian (`hu`).
class L10nHu extends L10n {
  L10nHu([String locale = 'hu']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'A jelszavak nem egyeznek.';

  @override
  String get pleaseEnterValidEmail => 'Adjon meg egy érvényes e-mail-címet.';

  @override
  String get repeatPassword => 'Jelszó megismétlése';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Válasszon legalább $min karaktert.';
  }

  @override
  String get about => 'Névjegy';

  @override
  String get accept => 'Elfogadás';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username elfogadta a meghívást';
  }

  @override
  String get account => 'Fiók';

  @override
  String get accountInformation => 'Fiókinformációk';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username aktiválta a végpontok közötti titkosítást';
  }

  @override
  String get addEmail => 'E-mail-cím hozzáadása';

  @override
  String get addGroupDescription => 'Csoportleírás hozzáadása';

  @override
  String get addNewFriend => 'Új barát hozzáadása';

  @override
  String get addToSpace => 'Hozzáadás térhez';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'álnév';

  @override
  String get all => 'Összes';

  @override
  String get allChats => 'Összes csevegés';

  @override
  String get alreadyHaveAnAccount => 'Van már fiókod?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName megválaszolta a hívást';
  }

  @override
  String get anyoneCanJoin => 'Bárki csatlakozhat';

  @override
  String get appLock => 'Alkalmazászár';

  @override
  String get archive => 'Archívum';

  @override
  String get archivedRoom => 'Archivált szoba';

  @override
  String get areGuestsAllowedToJoin => 'Csatlakozhatnak-e vendégek';

  @override
  String get areYouSure => 'Biztos vagy benne?';

  @override
  String get areYouSureYouWantToLogout => 'Biztos, hogy kijelentkezel?';

  @override
  String get askSSSSSign => 'A másik fél igazolásához meg kell adni a biztonságos tároló jelmondatát vagy a visszaállítási kulcsot.';

  @override
  String get askSSSSVerify => 'A munkamenet hitelesítéséhez meg kell adni a biztonságos tároló jelmondatát vagy a visszaállítási kulcsot.';

  @override
  String askVerificationRequest(Object username) {
    return 'Elfogadod $username hitelesítési kérelmét?';
  }

  @override
  String get audioPlayerPause => 'Szüneteltetés';

  @override
  String get audioPlayerPlay => 'Lejátszás';

  @override
  String get authentication => 'Hitelesítés';

  @override
  String get autoplayImages => 'Animált matricák és hangulatjelek automatikus lejátszása';

  @override
  String get avatarHasBeenChanged => 'A profilkép megváltozott';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'A Matrix-kiszolgáló a következő bejelentkezéseket támogatja:\n${serverVersions}\nDe ez az alkalmazást csak ezeket támogatja:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Küldés Enterrel';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'The homeserver supports the Spec versions:\n${serverVersions}\nBut this app supports only $supportedVersions';
  }

  @override
  String get banFromChat => 'Kitiltás a csevegésből';

  @override
  String get banned => 'Kitiltva';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username kitiltotta: $targetName';
  }

  @override
  String get blockDevice => 'Eszköz blokkolása';

  @override
  String get blocked => 'Blokkolva';

  @override
  String get botMessages => 'Bot üzenetek';

  @override
  String get bubbleSize => 'Buborék méret';

  @override
  String get cachedKeys => 'Kulcsok gyorsítótárazva';

  @override
  String get cancel => 'Mégse';

  @override
  String cantOpenUri(Object uri) {
    return 'Nem sikerült az URI megnyitása: $uri';
  }

  @override
  String get changeDeviceName => 'Eszköznév módosítása';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username módosította a csevegési profilképét';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username módosította a csevegés leírását erre: „$description”';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username módosította a csevegés nevét erre: „$chatname”';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username módosította a csevegési engedélyeket';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username módosította a megjenelítési nevét erre: $displayname';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username módosította a vendégek hozzáférési szabályait';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username módosította a vendégek hozzáférési szabályait, így: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username módosította az előzmények láthatóságát';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username módosította az előzmények láthatóságát, így: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username módosított a csatlakozási szabályokat';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username módosította a csatlakozási szabályokat, így: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username módosította a profilképét';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username módosította a szoba címeit';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username módosította a meghívó hivatkozást';
  }

  @override
  String get changelog => 'Változásnapló';

  @override
  String get changePassword => 'Jelszó módosítása';

  @override
  String get changesHaveBeenSaved => 'A változások mentve';

  @override
  String get changeTheHomeserver => 'Matrix-kiszolgáló váltása';

  @override
  String get changeTheme => 'Stílus módosítása';

  @override
  String get changeTheNameOfTheGroup => 'Csoport nevének módosítása';

  @override
  String get changeTheServer => 'Kiszolgáló módosítása';

  @override
  String get changeWallpaper => 'Háttér módosítása';

  @override
  String get changeYourAvatar => 'Profilkép módosítása';

  @override
  String get channelCorruptedDecryptError => 'A titkosítás megsérült';

  @override
  String get chat => 'Csevegés';

  @override
  String get yourUserId => 'Saját Matrix címed:';

  @override
  String get setupChatBackup => 'Beszélgetések mentésének beállítása';

  @override
  String get iWroteDownTheKey => 'Leírtam a kulcsot';

  @override
  String get yourChatBackupHasBeenSetUp => 'A beszélgetések mentése be lett állítva.';

  @override
  String get chatBackup => 'Beszélgetések mentése';

  @override
  String get setupChatBackupDescription => 'Az üzeneteid védelme érdekében generáltunk neked egy biztonsági kulcsot.\nKérlek, tárold egy biztonságos helyen, mint például egy jelszókezelő.';

  @override
  String get chatBackupDescription => 'A beszélgetések mentése egy biztonsági kulccsal van védve. Bizonyosodj meg róla, hogy nem fogod elveszíteni.';

  @override
  String get chatDetails => 'Csevegés részletei';

  @override
  String get chatHasBeenAddedToThisSpace => 'A beszélgetés hozzá lett adva ehhez a térhez';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'A beszélgetés el lett távolítva ebből a térből';

  @override
  String get chats => 'Beszélgetések';

  @override
  String get chooseAStrongPassword => 'Válassz erős jelszót';

  @override
  String get chooseAUsername => 'Válassz felhasználónevet';

  @override
  String get clearArchive => 'Archívum törlése';

  @override
  String get clearText => 'Szöveg törlése';

  @override
  String get close => 'Bezárás';

  @override
  String get commandHint_ban => 'Felhasználó kitiltása ebből a szobából';

  @override
  String get commandHint_clearcache => 'Gyorsítótár törlése';

  @override
  String get commandHint_create => 'Egy üres csoport létrehozása\nA --no-encryption kapcsolóval titkosítatlan szoba hozható létre';

  @override
  String get commandHint_discardsession => 'Munkamenet elvetése';

  @override
  String get commandHint_dm => 'Közvetlen beszélgetés indítása\nA --no-encryption kapcsolóval titkosítatlan beszélgetés lesz létrehozva';

  @override
  String get commandHint_html => 'HTML formázott üzenet küldése';

  @override
  String get commandHint_invite => 'Felhasználó meghívása ebbe a szobába';

  @override
  String get commandHint_join => 'Csatlakozás a megadott szobához';

  @override
  String get commandHint_kick => 'A megadott felhasználó kirúgása a szobából';

  @override
  String get commandHint_leave => 'Ennek a szobának az elhagyása';

  @override
  String get commandHint_me => 'Describe yourself';

  @override
  String get commandHint_myroomavatar => 'Az ebben a szobában megjelenített profilképed megváltoztatása (mxc URI-t kell megadni)';

  @override
  String get commandHint_myroomnick => 'Az ebben a szobában megjelenített beceneved megváltoztatása';

  @override
  String get commandHint_op => 'Set the given user\'s power level (default: 50)';

  @override
  String get commandHint_plain => 'Formázatlan szöveg küldése';

  @override
  String get commandHint_react => 'Send reply as a reaction';

  @override
  String get commandHint_send => 'Szöveg küldése';

  @override
  String get commandHint_unban => 'Unban the given user from this room';

  @override
  String get commandInvalid => 'Érvénytelen parancs';

  @override
  String commandMissing(Object command) {
    return '$command nem egy parancs.';
  }

  @override
  String get compareEmojiMatch => 'Hasonlítsd össze az emodzsikat a másik eszközön lévőkkel, és bizonyosodj meg róla, hogy egyeznek:';

  @override
  String get compareNumbersMatch => 'Hasonlítsd össze a számokat a másik eszközön lévőkkel, és bizonyosodj meg arról, hogy egyeznek:';

  @override
  String get configureChat => 'Beszélgetés beállítása';

  @override
  String get confirm => 'Megerősítés';

  @override
  String get connect => 'Csatlakozás';

  @override
  String get connectionAttemptFailed => 'Csatlakozási kísérlet sikertelen';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Meghívtad az ismerősödet a csoportba';

  @override
  String get containsDisplayName => 'Tartalmazza a megjelenített becenevet';

  @override
  String get containsUserName => 'Tartalmazza a felhasználónevet';

  @override
  String get contentHasBeenReported => 'A tartalom jelentve lett a szerver üzemeltetőinek';

  @override
  String get contentViewer => 'Tartalommegjelenítő';

  @override
  String get copiedToClipboard => 'Vágólapra másolva';

  @override
  String get copy => 'Másolás';

  @override
  String get copyToClipboard => 'Vágólapra másolás';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Nem sikerült visszafejteni a titkosított üzenetet: $error';
  }

  @override
  String get couldNotSetAvatar => 'Nem sikerült beállítani a profilképet';

  @override
  String get couldNotSetDisplayname => 'Nem sikerült beállítani a megjelenítési nevet';

  @override
  String countParticipants(Object count) {
    return '$count résztvevő';
  }

  @override
  String get create => 'Létrehozás';

  @override
  String get createAccountNow => 'Új fiók létrehozása';

  @override
  String createdTheChat(Object username) {
    return '$username létrehozta a csevegést';
  }

  @override
  String get createNewGroup => 'Új csoport létrehozása';

  @override
  String get createNewSpace => 'Új tér';

  @override
  String get crossSigningDisabled => 'Eszközök közti aláírás kikapcsolva';

  @override
  String get crossSigningEnabled => 'Eszközök közti aláírás bekapcsolva';

  @override
  String get currentlyActive => 'Jelenleg aktív';

  @override
  String get darkTheme => 'Sötét';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '$month. $day.';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '$year. $month. $day.';
  }

  @override
  String get deactivateAccountWarning => 'Ez deaktiválja a felhasználói fiókodat. Ez nem vonható vissza! Biztos vagy benne?';

  @override
  String get defaultPermissionLevel => 'Alapértelmezett hozzáférési szint';

  @override
  String get delete => 'Törlés';

  @override
  String get deleteAccount => 'Fiók törlése';

  @override
  String get deleteMessage => 'Üzenet törlése';

  @override
  String get deny => 'Elutasítás';

  @override
  String get device => 'Eszköz';

  @override
  String get deviceId => 'Eszköz ID';

  @override
  String get devices => 'Eszközök';

  @override
  String get deviceVerifyDescription => 'A titkosítás csak akkor biztonságos, ha az összes eszköz ellenőrizve lett.';

  @override
  String get directChats => 'Közvetlen beszélgetés';

  @override
  String get discardPicture => 'Kép elvetése';

  @override
  String get discover => 'Felfedezés';

  @override
  String get discoverGroups => 'Csoportok felfedezése';

  @override
  String get displaynameHasBeenChanged => 'Megjelenítési név megváltozott';

  @override
  String get donate => 'Adományozás';

  @override
  String get dontAskAgain => 'Cancel and don\'t ask again';

  @override
  String get downloadFile => 'Fájl letöltése';

  @override
  String get edit => 'Szerkeszt';

  @override
  String get editBlockedServers => 'Edit blocked servers';

  @override
  String get editChatPermissions => 'Beszélgetés engedélyek szerkesztése';

  @override
  String get editDisplayname => 'Megjelenítési név módosítása';

  @override
  String get editJitsiInstance => 'Jitsi példány módosítása';

  @override
  String get editRoomAliases => 'Szoba címeinek szerkesztése';

  @override
  String get editRoomAvatar => 'Szoba profilképének szerkesztése';

  @override
  String get emoteExists => 'A hangulatjel már létezik!';

  @override
  String get emoteInvalid => 'Érvénytelen hangulatjel rövid kód!';

  @override
  String get emotePacks => 'Hangulatjel-csomagok a szobához';

  @override
  String get emoteSettings => 'Hangulatjel-beállítások';

  @override
  String get emoteShortcode => 'Rövid kód a hangulatjelhez';

  @override
  String get emoteWarnNeedToPick => 'A hangulatjelhez egy képet és egy rövid kódot kell választani!';

  @override
  String get emptyChat => 'Üres csevegés';

  @override
  String get enableChatBackup => 'Engedélyezd a beszélgetések mentését, hogy soha ne veszítsd el a beszélgetéseidhez való hozzáférést.';

  @override
  String get enableEmotesGlobally => 'Hangulatjel-csomag engedélyezése globálisan';

  @override
  String get enableEncryption => 'Titkosítás bekapcsolása';

  @override
  String get enableEncryptionWarning => 'Többé nem fogod tudni kikapcsolni a titkosítást. Biztos vagy benne?';

  @override
  String get encrypted => 'Titkosított';

  @override
  String get encryption => 'Titkosítás';

  @override
  String get encryptionAlgorithm => 'Titkosítási algoritmus';

  @override
  String get encryptionNotEnabled => 'Titkosítás nincs engedélyezve';

  @override
  String get end2endEncryptionSettings => 'Végpontok közötti titkosítás beállításai';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName befejezte a hívást';
  }

  @override
  String get enterAGroupName => 'Adj meg egy csoportnevet';

  @override
  String get enterAnEmailAddress => 'Adj meg egy email címet';

  @override
  String get enterASpacepName => 'Add meg a tér nevét';

  @override
  String get enterAUsername => 'Adj meg egy felhasználónevet';

  @override
  String get homeserver => 'Matrix szerver';

  @override
  String get enterYourHomeserver => 'Add meg a Matrix-kiszolgálód';

  @override
  String errorObtainingLocation(Object error) {
    return 'Hiba a tartózkodási hely lekérése közben: $error';
  }

  @override
  String get everythingReady => 'Minden kész!';

  @override
  String get extremeOffensive => 'Extrém sértő';

  @override
  String get fileName => 'Fájlnév';

  @override
  String get fileSize => 'Fájlméret';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Betűméret';

  @override
  String get forward => 'Továbbítás';

  @override
  String get friday => 'Péntek';

  @override
  String get friends => 'Ismerősök';

  @override
  String get fromJoining => 'Csatlakozás óta';

  @override
  String get fromTheInvitation => 'Meghívás óta';

  @override
  String get goToTheNewRoom => 'Új szoba megnyitása';

  @override
  String get group => 'Csoport';

  @override
  String get groupDescription => 'Csoport leírása';

  @override
  String get groupDescriptionHasBeenChanged => 'A csoport leírása megváltozott';

  @override
  String get groupIsPublic => 'A csoport nyilvános';

  @override
  String get groups => 'Csoportok';

  @override
  String groupWith(Object displayname) {
    return 'Csoport vele: $displayname';
  }

  @override
  String get guestsAreForbidden => 'Nem lehetnek vendégek';

  @override
  String get guestsCanJoin => 'Csatlakozhatnak vendégek';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username visszavonta $targetName meghívását';
  }

  @override
  String get help => 'Súgó';

  @override
  String get hideRedactedEvents => 'Visszavont események elrejtése';

  @override
  String get hideUnknownEvents => 'Ismeretlen események elrejtése';

  @override
  String get homeserverIsNotCompatible => 'Ez a Matrix-kiszolgáló nem kompatibilis';

  @override
  String get howOffensiveIsThisContent => 'Mennyire sértő ez a tartalom?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Azonosító';

  @override
  String get ignore => 'Figyelmen kívül hagyás';

  @override
  String get ignoredUsers => 'Figyelmen kívül hagyott felhasználók';

  @override
  String get ignoreListDescription => 'Figyelmen kívül hagyhatja azon felhasználókat, akik zavarják. Nem fog üzeneteket vagy szobameghívókat kapni a személyes listáján szereplő felhasználóktól.';

  @override
  String get ignoreUsername => 'Felhasználó figyelmen kívül hagyása';

  @override
  String get iHaveClickedOnLink => 'Rákattintottam a linkre';

  @override
  String get incorrectPassphraseOrKey => 'Hibás jelmondat vagy visszaállítási kulcs';

  @override
  String get inoffensive => 'Nem sértő';

  @override
  String get invalidEmail => 'Érvénytelen email';

  @override
  String get inviteContact => 'Ismerős meghívása';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Ismerős meghívása a(z) $groupName csoportba';
  }

  @override
  String get invited => 'Meghívott';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username meghívta: $targetName';
  }

  @override
  String get invitedUsersOnly => 'Csak meghívottak';

  @override
  String get inviteForMe => 'Meghívás nekem';

  @override
  String inviteText(Object username, Object link) {
    return '$username meghívott a FluffyChat alkalmazásba. \n1. Telepítsd a FluffyChat appot: https://fluffychat.im \n2. Regisztrálj, vagy jelentkezz be. \n3. Nyisd meg a meghívó hivatkozást: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Helyes-e a következő eszközkulcs?';

  @override
  String get isTyping => 'gépel…';

  @override
  String joinedTheChat(Object username) {
    return '$username csatlakozott a csevegéshez';
  }

  @override
  String get joinRoom => 'Csatlakozás a szobához';

  @override
  String get keysCached => 'Kulcsok gyorsítótárazva';

  @override
  String get keysMissing => 'A kulcsok hiányoznak';

  @override
  String kicked(Object username, Object targetName) {
    return '$username kirúgta: $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username kirúgta és kitiltotta: $targetName';
  }

  @override
  String get kickFromChat => 'Kirúgás a csevegésből';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Utoljára aktív: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Utoljára látott IP';

  @override
  String get lastSeenLongTimeAgo => 'Már régen látta';

  @override
  String get leave => 'Csevegés elhagyása';

  @override
  String get leftTheChat => 'Elhagyta a csevegést';

  @override
  String get license => 'Licenc';

  @override
  String get lightTheme => 'Világos';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'További $count résztvevő betöltése';
  }

  @override
  String get loadingPleaseWait => 'Betöltés… Kérlek, várj.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Továbbiak betöltése…';

  @override
  String get locationDisabledNotice => 'A helymeghatározás ki van kapcsolva. Kérlek, kapcsold be, hogy meg tudd osztani a helyzeted.';

  @override
  String get locationPermissionDeniedNotice => 'A helymeghatározás nincs engedélyezve az alkalmazásnak. Kérlek engedélyezd, hogy meg tudd osztani a helyzeted.';

  @override
  String get login => 'Bejelentkezés';

  @override
  String logInTo(Object homeserver) {
    return 'Bejelentkezés a(z) $homeserver Matrix-kiszolgálóra';
  }

  @override
  String get loginWithOneClick => 'Bejelentkezés egy kattintással';

  @override
  String get logout => 'Kijelentkezés';

  @override
  String get makeAModerator => 'Kinevezés moderátorrá';

  @override
  String get makeAnAdmin => 'Kinevezés adminná';

  @override
  String get makeSureTheIdentifierIsValid => 'Bizonyosodj meg az azonosító helyességéről';

  @override
  String get memberChanges => 'Tagság változások';

  @override
  String get mention => 'Megemlítés';

  @override
  String get messages => 'Üzenetek';

  @override
  String get messageWillBeRemovedWarning => 'Az üzenet minden résztvevő számára törlődni fog';

  @override
  String get moderator => 'Moderátor';

  @override
  String get monday => 'Hétfő';

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
  String get muteChat => 'Csevegés némítása';

  @override
  String get needPantalaimonWarning => 'Jelenleg a Pantalaimon szükséges a végpontok közötti titkosítás használatához.';

  @override
  String get newChat => 'Új beszélgetés';

  @override
  String get newMessageInFluffyChat => 'Új üzenet a FluffyChat alkalmazásban';

  @override
  String get newVerificationRequest => 'Új hitelesítési kérelem!';

  @override
  String get next => 'Következő';

  @override
  String get no => 'Nem';

  @override
  String get noConnectionToTheServer => 'Nem elérhető a szerver';

  @override
  String get noCrossSignBootstrap => 'A FluffyChat jelenleg nem támogatja az eszközök közti aláírás bekapcsolását. Engedélyezd az Elementben.';

  @override
  String get noDescription => 'Nincs leírás';

  @override
  String get noEmotesFound => 'Nincsenek hangulatjelek. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Csak akkor kapcsolható be a titkosítás, ha a szoba nem nyilvánosan hozzáférhető.';

  @override
  String get noGoogleServicesWarning => 'Úgy tűnik, hogy nincsenek Google szolgáltatások a telefonodon. Ez adatvédelmi szempontból jó döntés! Ahhoz, hogy push értesítéseket fogadhass a FluffyChat alkalmazásban, a microG használatát javasoljuk: https://microg.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 nem egy Matrix szerver, használjam a $server2 szervert inkább?';
  }

  @override
  String get createNewChatExplaination => 'Egyszerűen szkenneld be a QR kódot, vagy oszdd meg a meghívási linket, ha a szkennelés nem lehetséges.';

  @override
  String get shareYourInviteLink => 'Meghívási link küldése';

  @override
  String get typeInInviteLinkManually => 'Meghívási link beírása...';

  @override
  String get scanQrCode => 'QR kód beolvasása';

  @override
  String get noMegolmBootstrap => 'A FluffyChat jelenleg nem támogatja az online kulcsmentést. Engedélyezd az Elementben.';

  @override
  String get none => 'Nincs';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'A Matrix címed valahogy így fog kinézni: @felhasználó:szerver';

  @override
  String get noPasswordRecoveryDescription => 'Még nem adtál meg semmilyen módot a jelszavad visszaállítására';

  @override
  String get noPermission => 'Nincsenek engedélyek';

  @override
  String get noPublicRoomsFound => 'Nem találhatók nyilvános szobák…';

  @override
  String get noRoomsFound => 'Nem találhatók szobák…';

  @override
  String get noStatusesFound => 'No statuses found so far.';

  @override
  String get notifications => 'Értesítések';

  @override
  String get notificationsEnabledForThisAccount => 'Értesítések bekapcsolása ebben a fiókban';

  @override
  String get notSupportedInWeb => 'Nem támogatott a webes verzióban';

  @override
  String numberSelected(Object number) {
    return '$number kiválasztva';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count felhasználó gépel…';
  }

  @override
  String get obtainingLocation => 'Tartózkodási hely lekérése…';

  @override
  String get offensive => 'Sértő';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'OK';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => 'Online kulcsmentés letiltva';

  @override
  String get onlineKeyBackupEnabled => 'Online kulcsmentés engedélyezve';

  @override
  String get oopsPushError => 'Oops! Sajnos hiba történt a push értesítések beállításakor.';

  @override
  String get oopsSomethingWentWrong => 'Hoppá, valami baj történt…';

  @override
  String get openAppToReadMessages => 'Alkalmazás megnyitása az üzenetek elolvasásához';

  @override
  String get openCamera => 'Kamera megnyitása';

  @override
  String get openVideoCamera => 'Kamera megnyitása videóhoz';

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
  String get optionalGroupName => 'Csoportnév (nem kötelező)';

  @override
  String get or => 'Or';

  @override
  String get participant => 'Participant';

  @override
  String get participatingUserDevices => 'Résztvevő felhasználók eszközei';

  @override
  String get passphraseOrKey => 'Jelmondat vagy visszaállítási kulcs';

  @override
  String get password => 'Jelszó';

  @override
  String get passwordForgotten => 'Password forgotten';

  @override
  String get passwordHasBeenChanged => 'A jelszó módosítva';

  @override
  String get passwordRecovery => 'Jelszó visszaállítás';

  @override
  String get people => 'People';

  @override
  String get pickImage => 'Kép választása';

  @override
  String get pin => 'Rögzítés';

  @override
  String play(Object fileName) {
    return '$fileName lejátszása';
  }

  @override
  String get pleaseChoose => 'Please choose';

  @override
  String get pleaseChooseAPasscode => 'Please choose a pass code';

  @override
  String get pleaseChooseAUsername => 'Válassz egy felhasználónevet';

  @override
  String get pleaseClickOnLink => 'Please click on the link in the email and then proceed.';

  @override
  String get pleaseEnter4Digits => 'Please enter 4 digits or leave empty to disable app lock.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Írj be egy Matrix-azonosítót.';

  @override
  String get pleaseEnterSecurityKey => 'Please enter your security key:';

  @override
  String get pleaseEnterYourPassword => 'Add meg a jelszavad';

  @override
  String get pleaseEnterYourPin => 'Please enter your pin';

  @override
  String get pleaseEnterYourUsername => 'Add meg a felhasználónevedet';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Please follow the instructions on the website and tap on next.';

  @override
  String get privacy => 'Adatvédelem';

  @override
  String get publicGroups => 'Public Groups';

  @override
  String get publicKey => 'Public Key';

  @override
  String get publicRooms => 'Nyilvános szobák';

  @override
  String get publicSpace => 'Public class';

  @override
  String get pushRules => 'Push rules';

  @override
  String get reason => 'Reason';

  @override
  String get recording => 'Felvétel';

  @override
  String redactedAnEvent(Object username) {
    return '$username visszavont egy eseményt';
  }

  @override
  String get redactMessage => 'Redact message';

  @override
  String get register => 'Register';

  @override
  String get reject => 'Elutasítás';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username elutasította a meghívást';
  }

  @override
  String get rejoin => 'Újracsatlakozás';

  @override
  String get remove => 'Eltávolítás';

  @override
  String get removeAllOtherDevices => 'Minden más eszköz eltávolítása';

  @override
  String removedBy(Object username) {
    return '$username törölte';
  }

  @override
  String get removeDevice => 'Eszköz eltávolítása';

  @override
  String get unbanFromChat => 'Kitiltás feloldása';

  @override
  String get removeMessage => 'Üzenet eltávolítása';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get renderRichContent => 'Formázott üzenetek megjelenítése';

  @override
  String get replaceRoomWithNewerVersion => 'Replace room with newer version';

  @override
  String get reply => 'Válasz';

  @override
  String get reportMessage => 'Report message';

  @override
  String get requestPermission => 'Jogosultság igénylése';

  @override
  String get requestToReadOlderMessages => 'Hozzáférés kérése a korábbi üzenetekhez';

  @override
  String get revokeAllPermissions => 'Minden jogosultság megvonása';

  @override
  String get roomHasBeenUpgraded => 'A szoba frissítve lett';

  @override
  String get roomVersion => 'Room version';

  @override
  String get saturday => 'Szombat';

  @override
  String savedFileAs(Object filename) {
    return 'Saved file as $filename';
  }

  @override
  String get saveFile => 'Save file';

  @override
  String get saveFileToFolder => 'Save file to this folder';

  @override
  String get search => 'Search';

  @override
  String get searchForAChat => 'Csevegés keresése';

  @override
  String get security => 'Security';

  @override
  String get securityKey => 'Security key';

  @override
  String get securityKeyLost => 'Security key lost?';

  @override
  String seenByUser(Object username) {
    return '$username látta';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$username és $count másik résztvevő látta',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return '$username és $username2 látta';
  }

  @override
  String get send => 'Küldés';

  @override
  String get sendAMessage => 'Üzenet küldése';

  @override
  String get sendAsText => 'Send as text';

  @override
  String get sendAudio => 'Hangüzenet küldése';

  @override
  String get sendBugReports => 'Hibajelentések engedélyezése a sentry.io használatával';

  @override
  String get sendFile => 'Fájl küldése';

  @override
  String get sendImage => 'Kép küldése';

  @override
  String get sendMessages => 'Send messages';

  @override
  String get sendOriginal => 'Eredeti küldése';

  @override
  String get sendSticker => 'Send sticker';

  @override
  String get sendVideo => 'Videó küldése';

  @override
  String sentAFile(Object username) {
    return '$username fájlt küldött';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username hangüzenetet küldött';
  }

  @override
  String sentAPicture(Object username) {
    return '$username képet küldött';
  }

  @override
  String sentASticker(Object username) {
    return '$username matricát küldött';
  }

  @override
  String sentAVideo(Object username) {
    return '$username videót küldött';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName hívásinformációt küldött';
  }

  @override
  String get sentryInfo => 'Adatvédelmi információk: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Munkamenet hitelesítve';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Profilkép beállítása';

  @override
  String get setAsCanonicalAlias => 'Set as main alias';

  @override
  String get setCustomEmotes => 'Set custom emotes';

  @override
  String get setGroupDescription => 'Csoportleírás beállítása';

  @override
  String get setInvitationLink => 'Meghívó hivatkozás beállítása';

  @override
  String get setPermissionsLevel => 'Set permissions level';

  @override
  String get setStatus => 'Állapot beállítása';

  @override
  String get settings => 'Beállítások';

  @override
  String get share => 'Megosztás';

  @override
  String sharedTheLocation(Object username) {
    return '$username megosztotta a pozícióját';
  }

  @override
  String get shareLocation => 'Share location';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Show password';

  @override
  String get signUp => 'Regisztráció';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'Kihagyás';

  @override
  String get soundVibrationLedColor => 'Sound, vibration LED-color';

  @override
  String get sourceCode => 'Forráskód';

  @override
  String get spaceIsPublic => 'Class is public';

  @override
  String get spaceName => 'Class name';

  @override
  String startedACall(Object senderName) {
    return '$senderName hívást indított';
  }

  @override
  String get startYourFirstChat => 'Kezdj el csevegni :-)';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'Hogy vagy?';

  @override
  String get submit => 'Beküldés';

  @override
  String get sunday => 'Vasárnap';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String get systemTheme => 'Rendszer';

  @override
  String get tapOnDeviceToVerify => 'Tap on a device to verifiy';

  @override
  String get tapToShowImage => 'Tap to show image';

  @override
  String get tapToShowMenu => 'Koppintás a menü megjelenítéséhez';

  @override
  String get theyDontMatch => 'Nem egyeznek';

  @override
  String get theyMatch => 'Egyeznek';

  @override
  String get thisRoomHasBeenArchived => 'Ez a szoba archiválva lett.';

  @override
  String get thursday => 'Csütörtök';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Toggle Favorite';

  @override
  String get toggleMuted => 'Toggle Muted';

  @override
  String get toggleUnread => 'Mark Read/Unread';

  @override
  String get tooManyRequestsWarning => 'Too many requests. Please try again later!';

  @override
  String get transferFromAnotherDevice => 'Transfer from another device';

  @override
  String get tryToSendAgain => 'Újraküldés megpróbálása';

  @override
  String get tuesday => 'Kedd';

  @override
  String get unavailable => 'Nem érhető el';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username feloldotta $targetName kitiltását';
  }

  @override
  String get unblockDevice => 'Eszköz blokkolásának megszüntetése';

  @override
  String get unknownDevice => 'Ismeretlen eszköz';

  @override
  String get unknownEncryptionAlgorithm => 'Ismeretlen titkosítási algoritmus';

  @override
  String unknownEvent(Object type) {
    return 'Ismeretlen esemény: „$type”';
  }

  @override
  String get unknownSessionVerify => 'Ismeretlen munkamenet, kérlek hitelesítsd';

  @override
  String get unlockChatBackup => 'Unlock chat backup';

  @override
  String get unmuteChat => 'Csevegés némításának megszüntetése';

  @override
  String get unpin => 'Rögzítés megszüntetése';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount olvasatlan csevegés',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      other: '$unreadEvents olvasatlan üzenet',
    );
  }

  @override
  String get useAmoledTheme => 'AMOLED kompatibilis színek használata?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username és $count másik résztvevő gépel…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username és $username2 gépel…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username gépel…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username elhagyta a csevegést';
  }

  @override
  String get username => 'Felhasználónév';

  @override
  String get userNotVerified => 'User is not verified';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username $type eseményt küldött';
  }

  @override
  String get userUnknownVerification => 'User has an unknown verification status';

  @override
  String get userVerified => 'User is verified';

  @override
  String get unverified => 'Unverified';

  @override
  String get verified => 'Verified';

  @override
  String get verifiedSession => 'Sikeresen hitelesítetted a munkamenetet!';

  @override
  String get verify => 'Hitelesítés';

  @override
  String get verifyManual => 'Kézi hitelesítés';

  @override
  String get verifyStart => 'Hitelesítés megkezdése';

  @override
  String get verifySuccess => 'Sikeres hitelesítés!';

  @override
  String get verifyTitle => 'Másik fiók hitelesítése';

  @override
  String get verifyUser => 'Felhasználó hitelesítése';

  @override
  String get videoCall => 'Videóhívás';

  @override
  String get visibilityOfTheChatHistory => 'Csevegési előzmény láthatósága';

  @override
  String get visibleForAllParticipants => 'Minden résztvevő számára látható';

  @override
  String get visibleForEveryone => 'Bárki számára látható';

  @override
  String get voiceMessage => 'Hangüzenet';

  @override
  String get waitingPartnerAcceptRequest => 'Várakozás partnerre, amíg elfogadja a kérést…';

  @override
  String get waitingPartnerEmoji => 'Várakozás partnerre, hogy elfogadja a hangulatjeleket…';

  @override
  String get waitingPartnerNumbers => 'Várakozás a partnerre, hogy elfogadja a számokat…';

  @override
  String get wallpaper => 'Háttér';

  @override
  String get warning => 'Figyelmeztetés!';

  @override
  String get warningEncryptionInBeta => 'A végpontok közötti titkosítás egyelőre béta! Csak saját felelősségre!';

  @override
  String get wednesday => 'Szerda';

  @override
  String get welcomeText => 'Üdvözöl a legcukibb Matrix üzenetküldő alkalmazás.';

  @override
  String get weSentYouAnEmail => 'Küldtünk neked egy emailt';

  @override
  String get whoCanPerformWhichAction => 'Who can perform which action';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Ki csatlakozhat a csoporthoz';

  @override
  String get whyDoYouWantToReportThis => 'Why do you want to report this?';

  @override
  String get wipeChatBackup => 'Wipe your chat backup to create a new security key?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Ezzekkel a címekkel vissza tudod állítani a jelszavad, ha szükséges';

  @override
  String get writeAMessage => 'Írj egy üzenetet…';

  @override
  String get yes => 'Igen';

  @override
  String get you => 'Te';

  @override
  String get youAreInvitedToThisChat => 'Meghívtak ebbe a csevegésbe';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Nem veszel részt ebben a csevegésben';

  @override
  String get youCannotInviteYourself => 'Nem tudod meghívni magadat';

  @override
  String get youHaveBeenBannedFromThisChat => 'Kitiltottak ebből a csevegésből';

  @override
  String get yourChatsAreBeingSynced => 'Your chats are being synced…';

  @override
  String get yourOwnUsername => 'A saját felhasználóneved';

  @override
  String get yourPublicKey => 'Your public key';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'You will be connected to $homeserver';
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
