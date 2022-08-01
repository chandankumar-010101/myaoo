

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Polish (`pl`).
class L10nPl extends L10n {
  L10nPl([String locale = 'pl']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Hasła nie pasują!';

  @override
  String get pleaseEnterValidEmail => 'Proszę podaj poprawny adres email.';

  @override
  String get repeatPassword => 'Powtórz hasło';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Proszę podaj przynajmniej $min znaków.';
  }

  @override
  String get about => 'O nas';

  @override
  String get accept => 'Akceptuj';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username zaakceptował/-a zaproszenie';
  }

  @override
  String get account => 'Konto';

  @override
  String get accountInformation => 'Informacje o koncie';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username aktywował/-a szyfrowanie end-to-end';
  }

  @override
  String get addEmail => 'Dodaj adres email';

  @override
  String get addGroupDescription => 'Dodaj opis grupy';

  @override
  String get addNewFriend => 'Dodaj nowego przyjaciela';

  @override
  String get addToSpace => 'Dodaj do przestrzeni';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'alias';

  @override
  String get all => 'Wszystkie';

  @override
  String get allChats => 'Wszystkie';

  @override
  String get alreadyHaveAnAccount => 'Masz już konto?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName odebrał połączenie';
  }

  @override
  String get anyoneCanJoin => 'Każdy może dołączyć';

  @override
  String get appLock => 'Blokada aplikacji';

  @override
  String get archive => 'Archiwum';

  @override
  String get archivedRoom => 'Zarchiwizowane pokoje';

  @override
  String get areGuestsAllowedToJoin => 'Czy użytkownicy-goście mogą dołączyć';

  @override
  String get areYouSure => 'Jesteś pewny/-a?';

  @override
  String get areYouSureYouWantToLogout => 'Czy napewno chcesz się wylogować?';

  @override
  String get askSSSSSign => 'Aby zalogować inną osobę, proszę wpisać hasło przechowywania lub klucz odzyskiwania.';

  @override
  String get askSSSSVerify => 'Wpisz hasło przechowywania lub klucz odzyskiwania aby zweryfikować sesję.';

  @override
  String askVerificationRequest(Object username) {
    return 'Zaakceptować tą prośbę weryfikacji od $username?';
  }

  @override
  String get audioPlayerPause => 'Pauza';

  @override
  String get audioPlayerPlay => 'Play';

  @override
  String get authentication => 'Autoryzacja';

  @override
  String get autoplayImages => 'Automatycznie odtwarzaj animowane naklejki i emotki';

  @override
  String get avatarHasBeenChanged => 'Zdjęcie profilowe zostało zmienione';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Serwer wspiera typy logowania:\n${serverVersions}\nAle ta aplikacja wpiera tylko:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Wyślij enterem';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Serwer wspiera wersje Spec:\n${serverVersions}\nAle aplikacja wspiera tylko $supportedVersions';
  }

  @override
  String get banFromChat => 'Ban na czacie';

  @override
  String get banned => 'Zbanowany/-a';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username zbanował/-a $targetName';
  }

  @override
  String get blockDevice => 'Zablokuj Urządzenie';

  @override
  String get blocked => 'Zablokowane';

  @override
  String get botMessages => 'Wiadomośći Botów';

  @override
  String get bubbleSize => 'Rozmiar bąbelków';

  @override
  String get cachedKeys => 'Klucze załadowane';

  @override
  String get cancel => 'Anuluj';

  @override
  String cantOpenUri(Object uri) {
    return 'Nie można otworzyć linku $uri';
  }

  @override
  String get changeDeviceName => 'Zmień nazwę urządzenia';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username zmienił/-a zdjęcie profilowe';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username zmienił/-a opis czatu na: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username zmienił/-a nick na: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username zmienił/-a uprawnienia czatu';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username zmienił/-a wyświetlany nick na: $displayname';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username zmienił/-a zasady dostępu dla gości';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username zmienił/-a zasady dostępu dla gości na: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username zmienił/-a widoczność historii';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username zmienił/-a widoczność historii na: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username zmienił/-a zasady wejścia';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username zmienił/-a zasady wejścia na: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username zmienił/-a zdjęcie profilowe';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username zmienił/-a skrót pokoju';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username zmienił/-a link do zaproszenia do pokoju';
  }

  @override
  String get changelog => 'Dziennik zmian';

  @override
  String get changePassword => 'Zmień hasło';

  @override
  String get changesHaveBeenSaved => 'Zapisano zmiany';

  @override
  String get changeTheHomeserver => 'Zmień serwer domyślny';

  @override
  String get changeTheme => 'Zmień swój styl';

  @override
  String get changeTheNameOfTheGroup => 'Zmień nazwę grupy';

  @override
  String get changeTheServer => 'Zmień tapetę';

  @override
  String get changeWallpaper => 'Zmień tapetę';

  @override
  String get changeYourAvatar => 'Zmień avatar';

  @override
  String get channelCorruptedDecryptError => 'Szyfrowanie zostało uszkodzone';

  @override
  String get chat => 'Rozmowa';

  @override
  String get yourUserId => 'Twoja nazwa użytkownika:';

  @override
  String get setupChatBackup => 'Ustaw kopię zapasową';

  @override
  String get iWroteDownTheKey => 'Zapisałem klucz w bezpiecznym miejscu';

  @override
  String get yourChatBackupHasBeenSetUp => 'Twoja kopia zapasowa chatu została ustawiona.';

  @override
  String get chatBackup => 'Kopia zapasowa Rozmów';

  @override
  String get setupChatBackupDescription => 'By chronić Twoje wiadomości, wygenerowaliśmy dla Ciebie klucz bezpieczeństwa.\nProszę zapisz go w bezpiecznym miejscu, takim jak menedżer haseł.';

  @override
  String get chatBackupDescription => 'Twoja kopia zapasowa Rozmów jest zabezpieczona kluczem bezpieczeństwa. Uważaj żeby go nie zgubić.';

  @override
  String get chatDetails => 'Szczegóły czatu';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat został dodany do tej przestrzeni';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat został usunięty z tej przestrzeni';

  @override
  String get chats => 'Rozmowy';

  @override
  String get chooseAStrongPassword => 'Wybierz silne hasło';

  @override
  String get chooseAUsername => 'Wybierz nick';

  @override
  String get clearArchive => 'Wyczyść archiwum';

  @override
  String get clearText => 'Wyczyść tekst';

  @override
  String get close => 'Zamknij';

  @override
  String get commandHint_ban => 'Zablokuj użytkownika w tym pokoju';

  @override
  String get commandHint_clearcache => 'Wyczyść pamięć podręczną';

  @override
  String get commandHint_create => 'Stwórz pusty chat\nUżyj --no-encryption by wyłączyć szyfrowanie';

  @override
  String get commandHint_discardsession => 'Discard session';

  @override
  String get commandHint_dm => 'Rozpocznij bezpośredni chat\nUżyj --no-encryption by wyłączyć szyfrowanie';

  @override
  String get commandHint_html => 'Wyślij tekst sformatowany w HTML';

  @override
  String get commandHint_invite => 'Zaproś użytkownika do pokoju';

  @override
  String get commandHint_join => 'Dołącz do podanego pokoju';

  @override
  String get commandHint_kick => 'Usuń tego użytkownika z tego pokoju';

  @override
  String get commandHint_leave => 'Wyjdź z tego pokoju';

  @override
  String get commandHint_me => 'Opisz siebie';

  @override
  String get commandHint_myroomavatar => 'Ustaw awatar dla tego pokoju (przez mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Ustaw nazwę wyświetlaną dla tego pokoju';

  @override
  String get commandHint_op => 'Ustaw moc uprawnień użytkownika (domyślnie: 50)';

  @override
  String get commandHint_plain => 'Wyślij niesformatowany tekst';

  @override
  String get commandHint_react => 'Wyślij odpowiedź jako reakcję';

  @override
  String get commandHint_send => 'Wyślij wiadomość';

  @override
  String get commandHint_unban => 'Odblokuj użytkownika w tym pokoju';

  @override
  String get commandInvalid => 'Nieprawidłowe polecenie';

  @override
  String commandMissing(Object command) {
    return '$command nie jest poleceniem.';
  }

  @override
  String get compareEmojiMatch => 'Porównaj i sprawdź czy na innym urządzeniu wyświetlają się te same emoji:';

  @override
  String get compareNumbersMatch => 'Porównaj i sprawdź czy na innym urządzeniu wyświetlają się te same cyfry:';

  @override
  String get configureChat => 'Konfiguruj chat';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get connect => 'Połącz';

  @override
  String get connectionAttemptFailed => 'Próba połączenia nie powiodła się';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontakt został zaproszony do grupy';

  @override
  String get containsDisplayName => 'Posiada wyświetlaną nazwę';

  @override
  String get containsUserName => 'Posiada nazwę użytkownika';

  @override
  String get contentHasBeenReported => 'Zawartość została zgłoszona administratorom serwera';

  @override
  String get contentViewer => 'Przeglądarka treści';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka';

  @override
  String get copy => 'Kopiuj';

  @override
  String get copyToClipboard => 'Skopiuj do schowka';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Nie można odszyfrować wiadomości: $error';
  }

  @override
  String get couldNotSetAvatar => 'Nie można ustawić zdjęcia profilowego';

  @override
  String get couldNotSetDisplayname => 'Nie można ustawić wyświetlanego nicku';

  @override
  String countParticipants(Object count) {
    return '$count uczestników';
  }

  @override
  String get create => 'Stwórz';

  @override
  String get createAccountNow => 'Stwórz konto teraz';

  @override
  String createdTheChat(Object username) {
    return '$username stworzył/-a czat';
  }

  @override
  String get createNewGroup => 'Stwórz nową grupę';

  @override
  String get createNewSpace => 'Nowa przestrzeń';

  @override
  String get crossSigningDisabled => 'Cross-signing off';

  @override
  String get crossSigningEnabled => 'Cross-signing on';

  @override
  String get currentlyActive => 'Obecnie aktywny/-a';

  @override
  String get darkTheme => 'Ciemny';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '$month-$day';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '$day-$month-$year';
  }

  @override
  String get deactivateAccountWarning => 'To dezaktywuje twoje konto. To jest nieodwracalne ! Czy jesteś pewien?';

  @override
  String get defaultPermissionLevel => 'Domyślny poziom uprawnień';

  @override
  String get delete => 'Usuń';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get deleteMessage => 'Usuń wiadomość';

  @override
  String get deny => 'Odrzuć';

  @override
  String get device => 'Urządzenie';

  @override
  String get deviceId => 'ID Urządzenia';

  @override
  String get devices => 'Urządzenia';

  @override
  String get deviceVerifyDescription => 'Szyfrowanie jest bezpieczne tylko wtedy gdy, wszystkie urządzenia zostaną zweryfikowane.';

  @override
  String get directChats => 'Rozmowy bezpośrednie';

  @override
  String get discardPicture => 'Odrzuć zdjęcie';

  @override
  String get discover => 'Odkrywaj';

  @override
  String get discoverGroups => 'Odkrywaj grupy';

  @override
  String get displaynameHasBeenChanged => 'Wyświetlany nick został zmieniony';

  @override
  String get donate => 'Wsparcie';

  @override
  String get dontAskAgain => 'Anuluj i nie pytaj ponownie';

  @override
  String get downloadFile => 'Pobierz plik';

  @override
  String get edit => 'Edytuj';

  @override
  String get editBlockedServers => 'Edytuj blokowane serwery';

  @override
  String get editChatPermissions => 'Edytuj uprawnienia';

  @override
  String get editDisplayname => 'Edytuj wyświetlany nick';

  @override
  String get editJitsiInstance => 'Edytuj instancje Jitsi';

  @override
  String get editRoomAliases => 'Zmień aliasy pokoju';

  @override
  String get editRoomAvatar => 'Edytuj zdjęcie pokoju';

  @override
  String get emoteExists => 'Emotikon już istnieje!';

  @override
  String get emoteInvalid => 'Nieprawidłowy kod emotikony!';

  @override
  String get emotePacks => 'Paczki emotikon dla pokoju';

  @override
  String get emoteSettings => 'Ustawienia Emotikon';

  @override
  String get emoteShortcode => 'Kod Emotikony';

  @override
  String get emoteWarnNeedToPick => 'Musisz wybrać kod emotikony oraz obraz!';

  @override
  String get emptyChat => 'Pusty czat';

  @override
  String get enableChatBackup => 'Włącz kopię zapasową aby nigdy nie stracić historii twoich wiadomości.';

  @override
  String get enableEmotesGlobally => 'Włącz paczkę emotikon globalnie';

  @override
  String get enableEncryption => 'Aktywuj szyfowanie';

  @override
  String get enableEncryptionWarning => 'Nie będziesz już mógł wyłączyć szyfrowania. Jesteś pewny?';

  @override
  String get encrypted => 'Szyfrowane';

  @override
  String get encryption => 'Szyfrowanie';

  @override
  String get encryptionAlgorithm => 'Algorytm szyfrowania';

  @override
  String get encryptionNotEnabled => 'Szyfrowanie nie jest włączone';

  @override
  String get end2endEncryptionSettings => 'Ustawienia szyfrowania end-to-end';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName zakończył połączenie';
  }

  @override
  String get enterAGroupName => 'Wpisz nazwę grupy';

  @override
  String get enterAnEmailAddress => 'Wpisz adres email';

  @override
  String get enterASpacepName => 'Podaj nazwę przestrzeni';

  @override
  String get enterAUsername => 'Wpisz nick';

  @override
  String get homeserver => 'Adres serwera';

  @override
  String get enterYourHomeserver => 'Wpisz swój serwer domowy';

  @override
  String errorObtainingLocation(Object error) {
    return 'Error obtaining location: $error';
  }

  @override
  String get everythingReady => 'Wszystko gotowe!';

  @override
  String get extremeOffensive => 'Extremely offensive';

  @override
  String get fileName => 'Nazwa pliku';

  @override
  String get fileSize => 'Rozmiar pliku';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Rozmiar czcionki';

  @override
  String get forward => 'Przekaż';

  @override
  String get friday => 'Piątek';

  @override
  String get friends => 'Znajomi';

  @override
  String get fromJoining => 'Od dołączenia';

  @override
  String get fromTheInvitation => 'Od zaproszenia';

  @override
  String get goToTheNewRoom => 'Przejdź do nowego pokoju';

  @override
  String get group => 'Grupa';

  @override
  String get groupDescription => 'Opis grupy';

  @override
  String get groupDescriptionHasBeenChanged => 'Opis grupy został zmieniony';

  @override
  String get groupIsPublic => 'Grupa jest publiczna';

  @override
  String get groups => 'Grupy';

  @override
  String groupWith(Object displayname) {
    return 'Grupa z $displayname';
  }

  @override
  String get guestsAreForbidden => 'Goście są zabronieni';

  @override
  String get guestsCanJoin => 'Goście mogą dołączyć';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username wycofał/-a zaproszenie dla $targetName';
  }

  @override
  String get help => 'Pomoc';

  @override
  String get hideRedactedEvents => 'Ukryj informacje o zredagowaniu';

  @override
  String get hideUnknownEvents => 'Ukryj nieznane wdarzenia';

  @override
  String get homeserverIsNotCompatible => 'Serwer domowy nie jest kompatybilny';

  @override
  String get howOffensiveIsThisContent => 'How offensive is this content?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Tożsamość';

  @override
  String get ignore => 'Ignoruj';

  @override
  String get ignoredUsers => 'Ignorowani użytkownicy';

  @override
  String get ignoreListDescription => 'Możesz ignorować użytkowników którzy cię irytują. Nie będziesz odbierać od nich wiadomości ani żadnych zaproszeń od użytkowników na tej liście.';

  @override
  String get ignoreUsername => 'Ignoruj użytkownika';

  @override
  String get iHaveClickedOnLink => 'Nacisnąłem na link';

  @override
  String get incorrectPassphraseOrKey => 'Złe hasło bezpieczeństwa lub klucz odzyskiwania';

  @override
  String get inoffensive => 'Inoffensive';

  @override
  String get invalidEmail => 'Nieprawidłowy adres email';

  @override
  String get inviteContact => 'Zaproś kontakty';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Zaproś kontakty do $groupName';
  }

  @override
  String get invited => 'Zaproszono';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username zaprosił/-a $targetName';
  }

  @override
  String get invitedUsersOnly => 'Tylko zaproszeni użytkownicy';

  @override
  String get inviteForMe => 'Zaprosszenie dla mnie';

  @override
  String inviteText(Object username, Object link) {
    return '$username zaprosił/-a cię do FluffyChat. \n1. Zainstaluj FluffyChat: https://fluffychat.im \n2. Zarejestuj się lub zaloguj \n3. Otwórz link zaproszenia: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Czy to odpowiedni klucz urządzenia?';

  @override
  String get isTyping => 'pisze…';

  @override
  String joinedTheChat(Object username) {
    return '$username dołączył/-a do czatu';
  }

  @override
  String get joinRoom => 'Dołącz do pokoju';

  @override
  String get keysCached => 'Klucze są załadowane';

  @override
  String get keysMissing => 'Brakuje kluczy';

  @override
  String kicked(Object username, Object targetName) {
    return '$username wyrzucił/-a $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username wyrzucił/-a i zbanował/-a $targetName';
  }

  @override
  String get kickFromChat => 'Wyrzuć z czatu';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Ostatnio widziano: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Ostatnie widziane IP';

  @override
  String get lastSeenLongTimeAgo => 'Widziany/-a dawno temu';

  @override
  String get leave => 'Opuść';

  @override
  String get leftTheChat => 'Opuścił/-a czat';

  @override
  String get license => 'Licencja';

  @override
  String get lightTheme => 'Jasny';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Załaduj jeszcze $count uczestników';
  }

  @override
  String get loadingPleaseWait => 'Ładowanie… Proszę czekać.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Załaduj więcej…';

  @override
  String get locationDisabledNotice => 'Usługi lokalizacji są wyłączone. Proszę włącz je aby móc udostępnić swoją lokalizację.';

  @override
  String get locationPermissionDeniedNotice => 'Brak uprawnień. Proszę zezwól aplikacji na dostęp do lokalizacji aby móc ją udostępnić.';

  @override
  String get login => 'Zaloguj';

  @override
  String logInTo(Object homeserver) {
    return 'Zaloguj się do $homeserver';
  }

  @override
  String get loginWithOneClick => 'Zaloguj się jednym kliknięciem';

  @override
  String get logout => 'Wyloguj';

  @override
  String get makeAModerator => 'Uczyń moderatorem';

  @override
  String get makeAnAdmin => 'Uczyń adminem';

  @override
  String get makeSureTheIdentifierIsValid => 'Upewnij się, że identyfikator jest prawidłowy';

  @override
  String get memberChanges => 'Zmiany członków';

  @override
  String get mention => 'Wzmianka';

  @override
  String get messages => 'Wiadomości';

  @override
  String get messageWillBeRemovedWarning => 'Wiadomość zostanie usunięta dla wszystkich użytkowników';

  @override
  String get moderator => 'Moderator';

  @override
  String get monday => 'Poniedziałek';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 kolejne wydarzenie',
      other: '$count więcej wydarzeń',
    );
  }

  @override
  String get muteChat => 'Wycisz czat';

  @override
  String get needPantalaimonWarning => 'Należy pamiętać, że Pantalaimon wymaga na razie szyfrowania end-to-end.';

  @override
  String get newChat => 'Nowa rozmowa';

  @override
  String get newMessageInFluffyChat => 'Nowa wiadomość w FluffyChat';

  @override
  String get newVerificationRequest => 'Nowa prośba o weryfikację!';

  @override
  String get next => 'Dalej';

  @override
  String get no => 'Nie';

  @override
  String get noConnectionToTheServer => 'Brak połączenia z serwerem';

  @override
  String get noCrossSignBootstrap => 'Fluffychat currently does not support enabling Cross-Signing. Please enable it from within Element.';

  @override
  String get noDescription => 'No description';

  @override
  String get noEmotesFound => 'No emotes found. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Możesz aktywować szyfrowanie dopiero kiedy pokój nie będzie publicznie dostępny.';

  @override
  String get noGoogleServicesWarning => 'Wygląda na to, że nie masz usług Google w swoim telefonie. To dobra decyzja dla twojej prywatności! Aby otrzymywać powiadomienia wysyłane w FluffyChat, zalecamy korzystanie z https://microg.org/ lub https://unifiedpush.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 is no matrix server, use $server2 instead?';
  }

  @override
  String get createNewChatExplaination => 'Po prostu zeskanuj kod QR lub jeśli nie jesteście obok siebie podziel się linkiem z zaproszeniem.';

  @override
  String get shareYourInviteLink => 'Share your invite link';

  @override
  String get typeInInviteLinkManually => 'Wpisz link ręcznie...';

  @override
  String get scanQrCode => 'Skanuj kod QR';

  @override
  String get noMegolmBootstrap => 'Please turn on online key backup from within Element instead.';

  @override
  String get none => 'Brak';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'Your user ID will then have the format @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'Nie dodałeś jeszcze sposobu aby odzyskać swoje hasło.';

  @override
  String get noPermission => 'Brak uprawnień';

  @override
  String get noPublicRoomsFound => 'Nie znaleziono publicznych pokoi…';

  @override
  String get noRoomsFound => 'Nie znaleziono pokoi…';

  @override
  String get noStatusesFound => 'Na razie brak ststusów.';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get notificationsEnabledForThisAccount => 'Powiadomienia są włączone dla tego konta';

  @override
  String get notSupportedInWeb => 'Nie obsługiwane w sieci';

  @override
  String numberSelected(Object number) {
    return '$number wybrany';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count users are typing…';
  }

  @override
  String get obtainingLocation => 'Uzyskiwanie lokalizacji…';

  @override
  String get offensive => 'Agresywne';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'Ok';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => 'Online Key Backup is disabled';

  @override
  String get onlineKeyBackupEnabled => 'Online Key Backup is enabled';

  @override
  String get oopsPushError => 'Ups! Wystąpił błąd podczas ustawiania powiadomień push.';

  @override
  String get oopsSomethingWentWrong => 'Ups! Coś poszło nie tak…';

  @override
  String get openAppToReadMessages => 'Otwórz aplikację by odczytać wiadomości';

  @override
  String get openCamera => 'Otwórz aparat';

  @override
  String get openVideoCamera => 'Nagraj film';

  @override
  String get oneClientLoggedOut => 'Jedno z twoich urządzeń zostało wylogowane';

  @override
  String get addAccount => 'Dodaj konto';

  @override
  String get editBundlesForAccount => 'Edit bundles for this account';

  @override
  String get addToBundle => 'Add to bundle';

  @override
  String get removeFromBundle => 'Remove from this bundle';

  @override
  String get bundleName => 'Bundle name';

  @override
  String get enableMultiAccounts => '(BETA) Włącza obsługę wiele kont na tym urządzeniu';

  @override
  String get openInMaps => 'Otwórz w mapach';

  @override
  String get link => 'Link';

  @override
  String get serverRequiresEmail => 'Ten serwer wymaga potwierdzenia twojego adresu email w celu rejestracji.';

  @override
  String get optionalGroupName => '(Opcjonalnie) Nazwa grupy';

  @override
  String get or => 'Lub';

  @override
  String get participant => 'Uczestnik';

  @override
  String get participatingUserDevices => 'Urządzenia użytkowników';

  @override
  String get passphraseOrKey => 'passphrase or recovery key';

  @override
  String get password => 'Hasło';

  @override
  String get passwordForgotten => 'Zapomniano hasła';

  @override
  String get passwordHasBeenChanged => 'Hasło zostało zmienione';

  @override
  String get passwordRecovery => 'Odzyskiwanie hasła';

  @override
  String get people => 'Osoby';

  @override
  String get pickImage => 'Wybierz obraz';

  @override
  String get pin => 'Przypnij';

  @override
  String play(Object fileName) {
    return 'Otwórz $fileName';
  }

  @override
  String get pleaseChoose => 'Proszę wybierz';

  @override
  String get pleaseChooseAPasscode => 'Please choose a pass code';

  @override
  String get pleaseChooseAUsername => 'Wybierz nick';

  @override
  String get pleaseClickOnLink => 'Proszę kliknij w odnośnik wysłany na email aby kontynuować.';

  @override
  String get pleaseEnter4Digits => 'Proszę podaj 4 cyfry. By wyłączyć blokadę pozostaw puste.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Wprowadź proszę identyfikator matrix.';

  @override
  String get pleaseEnterSecurityKey => 'Wpisz swój klucz bezpieczeństwa:';

  @override
  String get pleaseEnterYourPassword => 'Wpisz swoje hasło';

  @override
  String get pleaseEnterYourPin => 'Proszę podaj pin';

  @override
  String get pleaseEnterYourUsername => 'Wpisz swój nick';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Wykonaj instrukcje na stronie internetowej i naciśnij dalej.';

  @override
  String get privacy => 'Prywatność';

  @override
  String get publicGroups => 'Publiczne Grupy';

  @override
  String get publicKey => 'Klucz publiczny';

  @override
  String get publicRooms => 'Publiczne pokoje';

  @override
  String get publicSpace => 'Publiczna przestrzeń';

  @override
  String get pushRules => 'Zasady push';

  @override
  String get reason => 'Powód';

  @override
  String get recording => 'Nagranie';

  @override
  String redactedAnEvent(Object username) {
    return '$username stworzył/-a wydarzenie';
  }

  @override
  String get redactMessage => 'Przekaż wiadomość';

  @override
  String get register => 'Zarejestruj';

  @override
  String get reject => 'Odrzuć';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username odrzucił/-a zaproszenie';
  }

  @override
  String get rejoin => 'Dołącz ponownie';

  @override
  String get remove => 'Usuń';

  @override
  String get removeAllOtherDevices => 'Usuń wszystkie inne urządzenia';

  @override
  String removedBy(Object username) {
    return 'Usunięta przez $username';
  }

  @override
  String get removeDevice => 'Usuń urządzenie';

  @override
  String get unbanFromChat => 'Usuń blokadę';

  @override
  String get removeMessage => 'Usuń wiadomość';

  @override
  String get removeYourAvatar => 'Usuń swój avatar';

  @override
  String get renderRichContent => 'Pokazuj w wiadomościach pogrubienia i podkreślenia';

  @override
  String get replaceRoomWithNewerVersion => 'Zamień pokój na nową wersję';

  @override
  String get reply => 'Odpisz';

  @override
  String get reportMessage => 'Zgłoś wiadomość';

  @override
  String get requestPermission => 'Prośba o pozwolenie';

  @override
  String get requestToReadOlderMessages => 'Poproś o przeczytanie starszych wiadomości';

  @override
  String get revokeAllPermissions => 'Odwołaj wszystkie uprawnienia';

  @override
  String get roomHasBeenUpgraded => 'Pokój zostać zaktualizowany';

  @override
  String get roomVersion => 'Wersja pokoju';

  @override
  String get saturday => 'Sobota';

  @override
  String savedFileAs(Object filename) {
    return 'Zapisano plik jako $filename';
  }

  @override
  String get saveFile => 'Zapisz plik';

  @override
  String get saveFileToFolder => 'Zapisz plik do tego folderu';

  @override
  String get search => 'Szukaj';

  @override
  String get searchForAChat => 'Przeszukaj czat';

  @override
  String get security => 'Bezpieczeństwo';

  @override
  String get securityKey => 'Klucz bezpieczeństwa';

  @override
  String get securityKeyLost => 'Zagubiony klucz bezpieczeństwa?';

  @override
  String seenByUser(Object username) {
    return 'Zobaczone przez $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zobaczone przez $username oraz $count innych',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Zobaczone przez $username oraz $username2';
  }

  @override
  String get send => 'Wyślij';

  @override
  String get sendAMessage => 'Wyślij wiadomość';

  @override
  String get sendAsText => 'Wyślij jako tekst';

  @override
  String get sendAudio => 'Wyślij dźwięk';

  @override
  String get sendBugReports => 'Pozwól wysyłać raporty o błędach do sentry.io';

  @override
  String get sendFile => 'Wyślij plik';

  @override
  String get sendImage => 'Wyślij obraz';

  @override
  String get sendMessages => 'Wyślij wiadomości';

  @override
  String get sendOriginal => 'Wyślij oryginał';

  @override
  String get sendSticker => 'Wyślij naklejkę';

  @override
  String get sendVideo => 'Wyślij film';

  @override
  String sentAFile(Object username) {
    return '$username wysłał/-a plik';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username wysłał/-a plik audio';
  }

  @override
  String sentAPicture(Object username) {
    return '$username wysłał/-a obraz';
  }

  @override
  String sentASticker(Object username) {
    return '$username wysłał/-a naklejkę';
  }

  @override
  String sentAVideo(Object username) {
    return '$username wysłał/-a wideo';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName sent call information';
  }

  @override
  String get sentryInfo => 'Polityka prywatności: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Sesja została zweryfikowana';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Ustaw zdjęcie profilowe';

  @override
  String get setAsCanonicalAlias => 'Ustaw jako główny alias';

  @override
  String get setCustomEmotes => 'Ustaw niestandardowe emotki';

  @override
  String get setGroupDescription => 'Ustaw opis grupy';

  @override
  String get setInvitationLink => 'Ustaw link zaproszeniowy';

  @override
  String get setPermissionsLevel => 'Ustaw poziom uprawnień';

  @override
  String get setStatus => 'Ustaw status';

  @override
  String get settings => 'Ustawienia';

  @override
  String get share => 'Udostępnij';

  @override
  String sharedTheLocation(Object username) {
    return '$username udostępnił/-a lokalizacje';
  }

  @override
  String get shareLocation => 'Udostępnij lokalizację';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Pokaż hasło';

  @override
  String get signUp => 'Zarejesturuj się';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'Pomiń';

  @override
  String get soundVibrationLedColor => 'Dźwięk, wibracje i kolor LED';

  @override
  String get sourceCode => 'Kod żródłowy';

  @override
  String get spaceIsPublic => 'Ustaw jako publiczną';

  @override
  String get spaceName => 'Nazwa przestrzeni';

  @override
  String startedACall(Object senderName) {
    return '$senderName rozpoczął rozmowę';
  }

  @override
  String get startYourFirstChat => 'Rozpocznij swój pierwszy czat teraz! 🙂\n- Naciśnij przycisk napisz wiadomość\n- Wpisz nazwę użytkownika przyjaciela\n- Baw się dobrze podczas rozmów';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'Jak się masz dziś?';

  @override
  String get submit => 'Submit';

  @override
  String get sunday => 'Niedziela';

  @override
  String get synchronizingPleaseWait => 'Synchronizacja… Proszę czekać.';

  @override
  String get systemTheme => 'System';

  @override
  String get tapOnDeviceToVerify => 'Naciśnij na urządzeniu aby zweryfikować';

  @override
  String get tapToShowImage => 'Dotknij by pokazać obraz';

  @override
  String get tapToShowMenu => 'Kliknij by zobaczyć menu';

  @override
  String get theyDontMatch => 'Nie pasują';

  @override
  String get theyMatch => 'Pasują';

  @override
  String get thisRoomHasBeenArchived => 'Ten pokój został przeniesiony do archiwum.';

  @override
  String get thursday => 'Czwartek';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Przełącz ulubione';

  @override
  String get toggleMuted => 'Przełącz wyciszone';

  @override
  String get toggleUnread => 'Oznacz przeczytane/nieprzeczytane';

  @override
  String get tooManyRequestsWarning => 'Zbyt wiele zapytań. Proszę spróbuj ponownie później.';

  @override
  String get transferFromAnotherDevice => 'Przenieś z innego urządzenia';

  @override
  String get tryToSendAgain => 'Spróbuj wysłać ponownie';

  @override
  String get tuesday => 'Wtorek';

  @override
  String get unavailable => 'Niedostępne';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username odbanował/-a $targetName';
  }

  @override
  String get unblockDevice => 'Unblock Device';

  @override
  String get unknownDevice => 'Nieznane urządzenie';

  @override
  String get unknownEncryptionAlgorithm => 'Nieznany algorytm szyfrowania';

  @override
  String unknownEvent(Object type) {
    return 'Nieznane zdarzenie \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Unknown session, please verify';

  @override
  String get unlockChatBackup => 'Unlock chat backup';

  @override
  String get unmuteChat => 'Wyłącz wyciszenie';

  @override
  String get unpin => 'Odepnij';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount nieprzeczytanych czatów',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      other: '$unreadEvents nieprzeczytanych wiadomości',
    );
  }

  @override
  String get useAmoledTheme => 'Użyć kolorów kompatybilnych z ekranami AMOLED?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username oraz $count innych pisze…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username oraz $username2 piszą…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username pisze…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username opuścił/-a czat';
  }

  @override
  String get username => 'Nick';

  @override
  String get userNotVerified => 'Użytkownik nie został zweryfikowany';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username wysłał/-a wydarzenie $type';
  }

  @override
  String get userUnknownVerification => 'User has an unknown verification status';

  @override
  String get userVerified => 'User is verified';

  @override
  String get unverified => 'Unverified';

  @override
  String get verified => 'Zweryfikowane';

  @override
  String get verifiedSession => 'Successfully verified session!';

  @override
  String get verify => 'zweryfikuj';

  @override
  String get verifyManual => 'Verify Manually';

  @override
  String get verifyStart => 'Start Verification';

  @override
  String get verifySuccess => 'You successfully verified!';

  @override
  String get verifyTitle => 'Verifying other account';

  @override
  String get verifyUser => 'Verify User';

  @override
  String get videoCall => 'Rozmowa wideo';

  @override
  String get visibilityOfTheChatHistory => 'Widoczność historii czatu';

  @override
  String get visibleForAllParticipants => 'Widoczny dla wszystkich użytkowników';

  @override
  String get visibleForEveryone => 'Widoczny dla każdego';

  @override
  String get voiceMessage => 'Wiadomość głosowa';

  @override
  String get waitingPartnerAcceptRequest => 'Waiting for partner to accept the request…';

  @override
  String get waitingPartnerEmoji => 'Waiting for partner to accept the emoji…';

  @override
  String get waitingPartnerNumbers => 'Waiting for partner to accept the numbers…';

  @override
  String get wallpaper => 'Tapeta';

  @override
  String get warning => 'Warning!';

  @override
  String get warningEncryptionInBeta => 'Szyfrowanie end-to-end jest obecnie w fazie beta! Używaj na własne ryzyko!';

  @override
  String get wednesday => 'Środa';

  @override
  String get welcomeText => 'Witamy w najładniejszym komunikatorze w sieci matrix.';

  @override
  String get weSentYouAnEmail => 'We sent you an email';

  @override
  String get whoCanPerformWhichAction => 'Who can perform which action';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Kto może dołączyć do tej grupy';

  @override
  String get whyDoYouWantToReportThis => 'Why do you want to report this?';

  @override
  String get wipeChatBackup => 'Wipe your chat backup to create a new security key?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Dzięki tym adresom możesz odzyskać swoje hasło.';

  @override
  String get writeAMessage => 'Napisz wiadomość…';

  @override
  String get yes => 'Tak';

  @override
  String get you => 'Ty';

  @override
  String get youAreInvitedToThisChat => 'Dostałeś/-aś zaproszenie do tego czatu';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Nie uczestniczysz już w tym czacie';

  @override
  String get youCannotInviteYourself => 'Nie możesz zaprosić siebie';

  @override
  String get youHaveBeenBannedFromThisChat => 'Zostałeś zbanowany na tym czacie';

  @override
  String get yourChatsAreBeingSynced => 'Your chats are being synced…';

  @override
  String get yourOwnUsername => 'Twój nick';

  @override
  String get yourPublicKey => 'Twój klucz publiczny';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Będziesz połączony do serwera $homeserver';
  }

  @override
  String get zoomIn => 'Powiększ';

  @override
  String get zoomOut => 'Pomniejsz';

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
  String get addToStory => 'Dodaj do relacji';

  @override
  String get publish => 'Opublikuj';

  @override
  String get whoCanSeeMyStories => 'Kto może widzieć moje relacje?';

  @override
  String get unsubscribeStories => 'Unsubscribe stories';

  @override
  String get thisUserHasNotPostedAnythingYet => 'This user has not posted anything in their story yet';

  @override
  String get yourStory => 'Twoja relacja';

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
  String get whatIsGoingOn => 'Co u Ciebie słychać?';

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
