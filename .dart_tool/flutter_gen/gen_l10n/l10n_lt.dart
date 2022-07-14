

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Lithuanian (`lt`).
class L10nLt extends L10n {
  L10nLt([String locale = 'lt']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Slaptažodžiai nesutampa!';

  @override
  String get pleaseEnterValidEmail => 'Prašome įrašyti galiojantį e-paštą.';

  @override
  String get repeatPassword => 'Pakartrokite slaptažodį';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Pasirinkite bent $min simbolius.';
  }

  @override
  String get about => 'Apie';

  @override
  String get accept => 'Sutinku';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username priėmė kvietimą';
  }

  @override
  String get account => 'Paskyra';

  @override
  String get accountInformation => 'Paskyros informacija';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username suaktyvino end to end šifravimą';
  }

  @override
  String get addEmail => 'Pridėkite e-paštą';

  @override
  String get addGroupDescription => 'Pridėkite grupės aprašymą';

  @override
  String get addNewFriend => 'Pridėti naują draugą';

  @override
  String get addToSpace => 'Pridėti į erdvę';

  @override
  String get admin => 'Administratorius';

  @override
  String get alias => 'slapyvardis';

  @override
  String get all => 'Visi';

  @override
  String get allChats => 'Visi pokalbiai';

  @override
  String get alreadyHaveAnAccount => 'Ar jau turite vartotojo paskyrą?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName atsiliepė į skambutį';
  }

  @override
  String get anyoneCanJoin => 'Bet kas gali prisijungti';

  @override
  String get appLock => 'Programos užraktas';

  @override
  String get archive => 'Archyvas';

  @override
  String get archivedRoom => 'Archyvuotas kambarys';

  @override
  String get areGuestsAllowedToJoin => 'Ar svečiams leidžiama prisijungti';

  @override
  String get areYouSure => 'Ar esate tikras?';

  @override
  String get areYouSureYouWantToLogout => 'Ar esate tikras kad norite išsiregistruoti?';

  @override
  String get askSSSSSign => 'Kad galėtumėte priregistruoti kitą asmenį, įveskite slaptą frazę arba atkūrimo raktą.';

  @override
  String get askSSSSVerify => 'Įveskite slaptą frazę arba atkūrimo raktą, kad patvirtintumėte sesiją.';

  @override
  String askVerificationRequest(Object username) {
    return 'Priimti šią patvirtinimo užklausą iš $username?';
  }

  @override
  String get audioPlayerPause => 'Pauzė';

  @override
  String get audioPlayerPlay => 'Groti';

  @override
  String get authentication => 'Autentifikavimas';

  @override
  String get autoplayImages => 'Automatiškai leiskite animuotus lipdukus ir emotes';

  @override
  String get avatarHasBeenChanged => 'Avataras pakeistas';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Namų serveris palaiko prisijungimo tipus: $serverVersions Tačiau ši programa palaiko tik: $supportedVersions';
  }

  @override
  String get sendOnEnter => 'Išsiųsti paspaudus Enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Namų serveris palaiko spec. versijas: $serverVersions Tačiau ši programa palaiko tik $supportedVersions';
  }

  @override
  String get banFromChat => 'Uždrausti pokalbyje';

  @override
  String get banned => 'Uždraustas';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username užblokavo $targetName';
  }

  @override
  String get blockDevice => 'Blokuoti įrenginį';

  @override
  String get blocked => 'Blokuotas';

  @override
  String get botMessages => 'Bot žinutės';

  @override
  String get bubbleSize => 'Burbulo dydis';

  @override
  String get cachedKeys => 'Raktai pakeisti';

  @override
  String get cancel => 'Atšaukti';

  @override
  String cantOpenUri(Object uri) {
    return 'Nepavyksta atidaryti URI $uri';
  }

  @override
  String get changeDeviceName => 'Pakeisti įrenginio vardą';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username pakeitė pokalbio avatarą';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username pakeitė pokalbio aprašymą į: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username pakeitė pokalbio pavadinimą į: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username pakeitė pokalbių leidimus';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username pakeitė rodomą vardą į: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username pakeitė svečio prieigos taisykles';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username pakeitė svečio prieigos taisykles į: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username pakeitė istorijos prieinamumą';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username pakeitė istorijos prieinamumą į: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username pakeitė prisijungimo taisykles';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username pakeitė prisijungimo taisykles į: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username pakeitė savo avatarą';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username changed the room aliases';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username pakeitė pakvietimo nuorodą';
  }

  @override
  String get changelog => 'Pakeitimų žurnalas';

  @override
  String get changePassword => 'Pasikeisti slaptažodį';

  @override
  String get changesHaveBeenSaved => 'Pakeitimai išsaugoti';

  @override
  String get changeTheHomeserver => 'Pakeisti namų serverį';

  @override
  String get changeTheme => 'Pakeisti savo stilių';

  @override
  String get changeTheNameOfTheGroup => 'Pakeisti grupės vardą';

  @override
  String get changeTheServer => 'Pakeisti serverį';

  @override
  String get changeWallpaper => 'Pakeisti ekrano užsklandą';

  @override
  String get changeYourAvatar => 'Pakeisti savo avatarą';

  @override
  String get channelCorruptedDecryptError => 'Šifravimas buvo sugadintas';

  @override
  String get chat => 'Pokalbis';

  @override
  String get yourUserId => 'Tavo vartotojo ID:';

  @override
  String get setupChatBackup => 'Nustatyti pokalbio atsarginę kopiją';

  @override
  String get iWroteDownTheKey => 'Užrašiau raktą';

  @override
  String get yourChatBackupHasBeenSetUp => 'Jūsų pokalbio atsarginė kopija buvo nustatyta.';

  @override
  String get chatBackup => 'Pokalbio atsargine kopija';

  @override
  String get setupChatBackupDescription => 'Siekdami apsaugoti jūsų pranešimus, sukūrėme jums saugos raktą. Laikykite tai saugioje vietoje, pvz. slaptažodžių tvarkyklėje.';

  @override
  String get chatBackupDescription => 'Jūsų pokalbio atsarginė kopija apsaugota saugos raktu. Prašome įsitikinti, kad jo neprarasite.';

  @override
  String get chatDetails => 'Pokalbio detalės';

  @override
  String get chatHasBeenAddedToThisSpace => 'Pokalbis buvo pridėtas prie šios erdvės';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Pokalbis pašalintas iš šios erdvės';

  @override
  String get chats => 'Pokalbiai';

  @override
  String get chooseAStrongPassword => 'Pasirink saugų slaptažodį';

  @override
  String get chooseAUsername => 'Pasirinkite vartotojo vardą';

  @override
  String get clearArchive => 'Išvalyti archyvą';

  @override
  String get clearText => 'Išvalyti tekstą';

  @override
  String get close => 'Uždaryti';

  @override
  String get commandHint_ban => 'Užblokuoti vartotoją šitame kambatyje';

  @override
  String get commandHint_clearcache => 'Išvalyti laikiną talpyklą';

  @override
  String get commandHint_create => 'Sukurkite tuščią grupės pokalbį. Norėdami išjungti šifravimą, naudokite no encryption';

  @override
  String get commandHint_discardsession => 'Atmesti sesiją';

  @override
  String get commandHint_dm => 'Pradėkite tiesioginį pokalbį. Norėdami išjungti šifravimą, naudokite no encryption';

  @override
  String get commandHint_html => 'Siųsti tekstą HTML formtu';

  @override
  String get commandHint_invite => 'Pakviesti vartotoją į šitą kambarį';

  @override
  String get commandHint_join => 'Prisijungti prie nurodyto kambario';

  @override
  String get commandHint_kick => 'Pašalinti vartotoja iš šito kambario';

  @override
  String get commandHint_leave => 'Palikti pokalbių kambarį';

  @override
  String get commandHint_me => 'Apibūdinkite save';

  @override
  String get commandHint_myroomavatar => 'Nustatyti savo nuotrauką šiam kambariui (mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Nustatykite savo vardą šitam kambariui';

  @override
  String get commandHint_op => 'Nustatykite naudotojo galios lygį (numatytasis: 50)';

  @override
  String get commandHint_plain => 'Siųsti neformatuotą tekstą';

  @override
  String get commandHint_react => 'Siųsti atsakymą kaip reakciją';

  @override
  String get commandHint_send => 'Siųsti tekstą';

  @override
  String get commandHint_unban => 'Atblokuoti vartotoją iš šito kambario';

  @override
  String get commandInvalid => 'Neteisinga komanda';

  @override
  String commandMissing(Object command) {
    return '$command nėra komanda.';
  }

  @override
  String get compareEmojiMatch => 'Palyginkite ir įsitikinkite, kad šie emoji  atitinka kito įrenginio emoji:';

  @override
  String get compareNumbersMatch => 'Palyginkite ir įsitikinkite, kad šie skaičiai sutampa su kito įrenginio skaičiais:';

  @override
  String get configureChat => 'Nustatyti pokalbį';

  @override
  String get confirm => 'Patvirtinti';

  @override
  String get connect => 'Prisijungti';

  @override
  String get connectionAttemptFailed => 'Prisijungimas nepavyko';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontaktas buvo pakviestas į grupę';

  @override
  String get containsDisplayName => 'Yra  vardas';

  @override
  String get containsUserName => 'Yra vartotojo vardas';

  @override
  String get contentHasBeenReported => 'Apie turinį pranešta serverio administratoriams';

  @override
  String get contentViewer => 'Turinio peržiūra';

  @override
  String get copiedToClipboard => 'Nukopijuota į iškarpinę';

  @override
  String get copy => 'Kopijuoti';

  @override
  String get copyToClipboard => 'Koipjuoti į iškarpinę';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Nepavyko iššifruoti pranešimo: $error';
  }

  @override
  String get couldNotSetAvatar => 'Nepavyko nustatyti avataro';

  @override
  String get couldNotSetDisplayname => 'Nepavyko nustatti vardo';

  @override
  String countParticipants(Object count) {
    return '$count dalyviai';
  }

  @override
  String get create => 'Sukurti';

  @override
  String get createAccountNow => 'Sukurti vartotoją dabar';

  @override
  String createdTheChat(Object username) {
    return '$username sukūrė pokalbį';
  }

  @override
  String get createNewGroup => 'Sukurti naują grupę';

  @override
  String get createNewSpace => 'Nauja erdvė';

  @override
  String get crossSigningDisabled => 'Cross-signing išjungtas';

  @override
  String get crossSigningEnabled => 'Cross-signing įjungtas';

  @override
  String get currentlyActive => 'Šiuo metu aktyvus';

  @override
  String get darkTheme => 'Tamsi';

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
    return '$year-$month-$day';
  }

  @override
  String get deactivateAccountWarning => 'Tai išjungs jūsų vartotojo paskyrą. Atšaukti negalima! Ar jūs tuo tikri?';

  @override
  String get defaultPermissionLevel => 'Numatytasis teisių lygis';

  @override
  String get delete => 'Panaikinti';

  @override
  String get deleteAccount => 'Panaikinti paskyra';

  @override
  String get deleteMessage => 'Ištrinti žinutę';

  @override
  String get deny => 'Atmesti';

  @override
  String get device => 'Įrenginys';

  @override
  String get deviceId => 'Įrenginio ID';

  @override
  String get devices => 'Įrenginiai';

  @override
  String get deviceVerifyDescription => 'Šifravimas saugus kai visi įrenginiai buvo patikrinti.';

  @override
  String get directChats => 'Tiesioginiai pokalbiai';

  @override
  String get discardPicture => 'Atmesti paveiksliuką';

  @override
  String get discover => 'Rasti';

  @override
  String get discoverGroups => 'Rasti grupes';

  @override
  String get displaynameHasBeenChanged => 'Vardas buvo pakeistas';

  @override
  String get donate => 'Paaukoti';

  @override
  String get dontAskAgain => 'Atmesti ir daugiau neklausti';

  @override
  String get downloadFile => 'Atsisiųsti failą';

  @override
  String get edit => 'Redaguoti';

  @override
  String get editBlockedServers => 'Redaguoti blokuotus serverius';

  @override
  String get editChatPermissions => 'Redaguoti pokalbio leidimus';

  @override
  String get editDisplayname => 'Redaguoti vardą';

  @override
  String get editJitsiInstance => 'Redaguoti Jitsi pavyzdį';

  @override
  String get editRoomAliases => 'Redaguoti kambario slapyvardžius';

  @override
  String get editRoomAvatar => 'Redaguoti kambario avatarą';

  @override
  String get emoteExists => 'Emote jau egzistuoja!';

  @override
  String get emoteInvalid => 'Neteisingas emote trumpasis kodas!';

  @override
  String get emotePacks => 'Emote paketai kambariui';

  @override
  String get emoteSettings => 'Emote nustatymai';

  @override
  String get emoteShortcode => 'Emote trumpasis kodas';

  @override
  String get emoteWarnNeedToPick => 'Turite pasirinkti emote trumpąjį kodą ir paveiksliuką!';

  @override
  String get emptyChat => 'Tuščias pokalbis';

  @override
  String get enableChatBackup => 'Įgalinkite atsarginę pokalbių kopiją, kad niekada neprarastumėte prieigos prie pokalbių.';

  @override
  String get enableEmotesGlobally => 'Įgalinti emote paketą visur';

  @override
  String get enableEncryption => 'Aktyvuoti šifravimą';

  @override
  String get enableEncryptionWarning => 'Šifravimo nebegalėsite išjungti. Ar jūs tuo tikri?';

  @override
  String get encrypted => 'Užšifruotas';

  @override
  String get encryption => 'Šifravimas';

  @override
  String get encryptionAlgorithm => 'Šifravimo algoritmas';

  @override
  String get encryptionNotEnabled => 'Šifravimas aktyvuotas';

  @override
  String get end2endEncryptionSettings => 'End-to-end šifravimo nustatymai';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName baigė skambutį';
  }

  @override
  String get enterAGroupName => 'Įveskite grupės vardą';

  @override
  String get enterAnEmailAddress => 'Įveskite e-paštą';

  @override
  String get enterASpacepName => 'Įveskite erdvės vardą';

  @override
  String get enterAUsername => 'Įveskite vartotojo vardą';

  @override
  String get homeserver => 'Namų serveris';

  @override
  String get enterYourHomeserver => 'Įveskite namų serverį';

  @override
  String errorObtainingLocation(Object error) {
    return 'Klaida nustatant vietą: $error';
  }

  @override
  String get everythingReady => 'Viskas paruošta!';

  @override
  String get extremeOffensive => 'Itin įžeidžiantis';

  @override
  String get fileName => 'Failo vardas';

  @override
  String get fileSize => 'Failo dydis';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Šrifto dydis';

  @override
  String get forward => 'Toliau';

  @override
  String get friday => 'Penktadienis';

  @override
  String get friends => 'Draugai';

  @override
  String get fromJoining => 'Nuo prisijungimo';

  @override
  String get fromTheInvitation => 'Nuo pakvietimo';

  @override
  String get goToTheNewRoom => 'Eiti į naują kambarį';

  @override
  String get group => 'Grupė';

  @override
  String get groupDescription => 'Grupės aprašymas';

  @override
  String get groupDescriptionHasBeenChanged => 'Grupės aprašymas pakeistas';

  @override
  String get groupIsPublic => 'Grupė yra vieša';

  @override
  String get groups => 'Grupės';

  @override
  String groupWith(Object displayname) {
    return 'Grupė su $displayname';
  }

  @override
  String get guestsAreForbidden => 'Svečiams draudžiama';

  @override
  String get guestsCanJoin => 'Svečiai gali prisijungti';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username atšaukė $targetName kvietimą';
  }

  @override
  String get help => 'Pagalba';

  @override
  String get hideRedactedEvents => 'Slėpti redaguotus įvykius';

  @override
  String get hideUnknownEvents => 'Slėpti nežinomus įvykius';

  @override
  String get homeserverIsNotCompatible => 'Namų serveris nesuderinamas';

  @override
  String get howOffensiveIsThisContent => 'Kiek įžeižiantis šis turinys?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Tapatybė';

  @override
  String get ignore => 'Ignoruoti';

  @override
  String get ignoredUsers => 'Ignoruoti vartotojai';

  @override
  String get ignoreListDescription => 'Galite ignoruoti vartotojus, kurie jums trukdo. Negalėsite gauti jokių pranešimų ar kvietimų į kambarį iš vartotojų, įtrauktų į asmeninį ignoruojamųjų sąrašą.';

  @override
  String get ignoreUsername => 'Ignoruoti vartotoją';

  @override
  String get iHaveClickedOnLink => 'Aš paspaudžiau nuorodą';

  @override
  String get incorrectPassphraseOrKey => 'Neteisinga slapta frazė arba atkūrimo raktas';

  @override
  String get inoffensive => 'Neįžeidžiantis';

  @override
  String get invalidEmail => 'Neteisingas e-paštas';

  @override
  String get inviteContact => 'Pakviesti kontaktą';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Pakviesti kontaktą į $groupName';
  }

  @override
  String get invited => 'Pakviestas';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username pakvietė $targetName';
  }

  @override
  String get invitedUsersOnly => 'Tik pakviesti vartotojai';

  @override
  String get inviteForMe => 'Pakvietimas man';

  @override
  String inviteText(Object username, Object link) {
    return '$username pakvietė jus į FluffyChat. 1. Instaliuokite FluffyChat: https://fluffychat.im 2. Prisiregistruokite arba prisijunkite 3. Paspauskite pakvietimo nuorodą: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Ar teisingas šis įrenginio raktas?';

  @override
  String get isTyping => 'rašoma…';

  @override
  String joinedTheChat(Object username) {
    return '$username prisijungė prie pokalbio';
  }

  @override
  String get joinRoom => 'Prisijungti prie kambario';

  @override
  String get keysCached => 'Raktai išsaugoti';

  @override
  String get keysMissing => 'Raktai nerasti';

  @override
  String kicked(Object username, Object targetName) {
    return '$username išmetė $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username išmetė ir uždraudė $targetName';
  }

  @override
  String get kickFromChat => 'Išmesti iš pokalbio';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Paskutinis aktyvumas: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Paskutinis žinomas IP';

  @override
  String get lastSeenLongTimeAgo => 'Seniai matytas';

  @override
  String get leave => 'Palikti';

  @override
  String get leftTheChat => 'Paliko poaklbį';

  @override
  String get license => 'Licencija';

  @override
  String get lightTheme => 'Šviesi';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Įkelti dar $count dalyvius';
  }

  @override
  String get loadingPleaseWait => 'Kraunasi... Paršome palaukti';

  @override
  String get showSpaces => 'Rodyti erdvių sąrašą';

  @override
  String get loadMore => 'Rodyti daugiau…';

  @override
  String get locationDisabledNotice => 'Vietos nustatymo paslaugos išjungtos. Aktyvuokite jas, kad galėtų rodyti jūsų vietą.';

  @override
  String get locationPermissionDeniedNotice => 'Vietos nustatymas atmestas. Suteikite galimybę rodyti jūsų vietą.';

  @override
  String get login => 'Prisijungti';

  @override
  String logInTo(Object homeserver) {
    return 'Prisijunkite prie $homeserver';
  }

  @override
  String get loginWithOneClick => 'Prisijungti vienu paspaudimu';

  @override
  String get logout => 'Atsijungti';

  @override
  String get makeAModerator => 'Padaryti moderatoriumi';

  @override
  String get makeAnAdmin => 'Padaryti admin\'u';

  @override
  String get makeSureTheIdentifierIsValid => 'Įsitikinkite, kad indentifikatorius galiojantis';

  @override
  String get memberChanges => 'Nario pasikeitimai';

  @override
  String get mention => 'Paminėti';

  @override
  String get messages => 'Žinutės';

  @override
  String get messageWillBeRemovedWarning => 'Žinutė bus pašalinta visiem dalyviams';

  @override
  String get moderator => 'Moderatorius';

  @override
  String get monday => 'Pirmadienis';

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
  String get muteChat => 'Nutildyti pokalbį';

  @override
  String get needPantalaimonWarning => 'Atminkite, kad norint naudoti end-to-end šifravimą, reikalingas Pantalaimon.';

  @override
  String get newChat => 'Naujas pokalbis';

  @override
  String get newMessageInFluffyChat => 'Nauja žinutė FluffyChat\'e';

  @override
  String get newVerificationRequest => 'Nauja patvirtinimo užklausa';

  @override
  String get next => 'Toliau';

  @override
  String get no => 'Ne';

  @override
  String get noConnectionToTheServer => 'Nėra ryšio su serveriu';

  @override
  String get noCrossSignBootstrap => 'Šiuo metu Fluffychat nepalaiko Cross-signing pasirašymo. Aktyvuokite jį Element\'e.';

  @override
  String get noDescription => 'Nėra aprašymo';

  @override
  String get noEmotesFound => 'Nerasta emotes. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Šifravimą galite suaktyvinti tik tada, kai kambarys nebebus viešai pasiekiamas.';

  @override
  String get noGoogleServicesWarning => 'Atrodo, kad jūsų telefone nėra Google Services. Tai geras sprendimas jūsų privatumui! Norėdami gauti tiesioginius pranešimus FluffyChat, rekomenduojame naudoti https://microg.org/ arba https://unifiedpush.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 nėra Matrix serveris, ar naudoti $server2?';
  }

  @override
  String get createNewChatExplaination => 'Nuskanuokite QR kodą arba pasdalinkite pakvietimo nuoroda.';

  @override
  String get shareYourInviteLink => 'Pasidalinkite pakvietimo nuoroda';

  @override
  String get typeInInviteLinkManually => 'Rankiniu būdu įveskite pakvietimo nuorodą';

  @override
  String get scanQrCode => 'Nuskanuokite QR kodą';

  @override
  String get noMegolmBootstrap => 'Vietoje to įjunkite internetinio rakto atsarginę kopiją Element\'e';

  @override
  String get none => 'Nė vienas';

  @override
  String get newPasswordDescription => 'Kad galėtumėte atkurti slaptažodį, vėliau prie paskyros turėtumėte pridėti el. pašto adresą.';

  @override
  String get newUsernameDescription => 'Jūsų vartotojo ID bus formatu @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'Dar nepridėjote slaptažodžio atkūrimo būdo.';

  @override
  String get noPermission => 'Nėra leidimo';

  @override
  String get noPublicRoomsFound => 'Nerasta viešų kambarių';

  @override
  String get noRoomsFound => 'Nerasta kambarių';

  @override
  String get noStatusesFound => 'Kol kas nerasta jokių būsenų.';

  @override
  String get notifications => 'Pranešimai';

  @override
  String get notificationsEnabledForThisAccount => 'Pranešimai aktyvuoti šitai paskyrai';

  @override
  String get notSupportedInWeb => 'Nepalaikoma internete';

  @override
  String numberSelected(Object number) {
    return 'Pasirinktas $number';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count vartotojai rašo…';
  }

  @override
  String get obtainingLocation => 'Gaunama vieta…';

  @override
  String get offensive => 'Agresyvus';

  @override
  String get offline => 'Neprisijungta';

  @override
  String get ok => 'OK';

  @override
  String get online => 'Prisijungta';

  @override
  String get onlineKeyBackupDisabled => 'Rakto atsarginis kopijavimas išjungtas';

  @override
  String get onlineKeyBackupEnabled => 'Rakto atsarginis kopijavimas įjungtas';

  @override
  String get oopsPushError => 'Oi, deja nustatant tiesioginius pranešimus įvyko klaida';

  @override
  String get oopsSomethingWentWrong => 'Oi, kažkas negerai…';

  @override
  String get openAppToReadMessages => 'Atidarykite programėlę, kad perskaityti žinutes';

  @override
  String get openCamera => 'Atidarykite kamerą';

  @override
  String get openVideoCamera => 'Atidarykite kamerą vaizdo įrašui';

  @override
  String get oneClientLoggedOut => 'Vienas iš jūsų klientų atsijungė';

  @override
  String get addAccount => 'pridėti vartotoją';

  @override
  String get editBundlesForAccount => 'Redaguoti šios paskyros paketus';

  @override
  String get addToBundle => 'Pridėti prie paketų';

  @override
  String get removeFromBundle => 'Pašalinkite iš šio paketo';

  @override
  String get bundleName => 'Paketo vardas';

  @override
  String get enableMultiAccounts => '(BETA) Įgalinkite kelias paskyras šiame įrenginyje';

  @override
  String get openInMaps => 'Atidaryti žemėlapiuose';

  @override
  String get link => 'Nuoroda';

  @override
  String get serverRequiresEmail => 'Šis serveris turi patvirtinti jūsų el. pašto adresą registracijai.';

  @override
  String get optionalGroupName => '(Pasirenkama) Grupės pavadinimas';

  @override
  String get or => 'Arba';

  @override
  String get participant => 'Dalyvis';

  @override
  String get participatingUserDevices => 'Dalyvaujančio vartotojo įrenginiai';

  @override
  String get passphraseOrKey => 'Slapta frazė arba atkūrimo raktas';

  @override
  String get password => 'Slaptažodis';

  @override
  String get passwordForgotten => 'Slaptažodis užmirštas';

  @override
  String get passwordHasBeenChanged => 'Slaptažodis pakeistas';

  @override
  String get passwordRecovery => 'Slaptažodžio atstatymas';

  @override
  String get people => 'Žmonės';

  @override
  String get pickImage => 'Pasirinkite paveiksliuką';

  @override
  String get pin => 'Prisegti';

  @override
  String play(Object fileName) {
    return 'Groti $fileName';
  }

  @override
  String get pleaseChoose => 'Prašome pasirinkti';

  @override
  String get pleaseChooseAPasscode => 'Pasirinkite slaptą frazę';

  @override
  String get pleaseChooseAUsername => 'Pasirinkite vartotojo vardą';

  @override
  String get pleaseClickOnLink => 'Paspauskite nuorodą e-pašte ir tęskite toliau.';

  @override
  String get pleaseEnter4Digits => 'Įveskite 4 simbolius arba palikite tuščia, kad išjungtumėte programėlės užraktą';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Įveskite Matrrix ID';

  @override
  String get pleaseEnterSecurityKey => 'Įveskite savo apsaugos raktą';

  @override
  String get pleaseEnterYourPassword => 'Įveskite savo slaptažodį';

  @override
  String get pleaseEnterYourPin => 'Įveskite savo PIN kodą';

  @override
  String get pleaseEnterYourUsername => 'Įveskite savo vartotojo vardą';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Sekite instrukcijas naršyklėje ir spauskite Sekantis';

  @override
  String get privacy => 'Privatumas';

  @override
  String get publicGroups => 'Viešos grupės';

  @override
  String get publicKey => 'Viešas raktas';

  @override
  String get publicRooms => 'Vieši kambariai';

  @override
  String get publicSpace => 'Vieša erdvė';

  @override
  String get pushRules => 'Taisyklės';

  @override
  String get reason => 'Priežastis';

  @override
  String get recording => 'Įrašymas';

  @override
  String redactedAnEvent(Object username) {
    return '$username redagavo įvykį';
  }

  @override
  String get redactMessage => 'Redaguoti žinutę';

  @override
  String get register => 'Registruotis';

  @override
  String get reject => 'Atmesti';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username atmetė kvietimą';
  }

  @override
  String get rejoin => 'Vėl prisijungti';

  @override
  String get remove => 'Pašalinti';

  @override
  String get removeAllOtherDevices => 'Pašalinti visus kitus įrenginius';

  @override
  String removedBy(Object username) {
    return 'Pašalino vartotojas $username';
  }

  @override
  String get removeDevice => 'Pašalinti įrenginį';

  @override
  String get unbanFromChat => 'Pašalinti draudimą pokalbyje';

  @override
  String get removeMessage => 'Pašalinti žinutę';

  @override
  String get removeYourAvatar => 'Pašalinti savo avatarą';

  @override
  String get renderRichContent => 'Pateikite pranešimų turinį';

  @override
  String get replaceRoomWithNewerVersion => 'Pakeisti kambarį naujesne versija';

  @override
  String get reply => 'Atsakyti';

  @override
  String get reportMessage => 'Pranešti apie žinutę';

  @override
  String get requestPermission => 'Prašyti leidimo';

  @override
  String get requestToReadOlderMessages => 'Prašyti skaityti senesnes žinutes';

  @override
  String get revokeAllPermissions => 'Atšaukti visus leidimus';

  @override
  String get roomHasBeenUpgraded => 'Kambarys buvo atnaujintas';

  @override
  String get roomVersion => 'Kambario versija';

  @override
  String get saturday => 'Šeštdienis';

  @override
  String savedFileAs(Object filename) {
    return 'Failas išsaugotas kaip $filename';
  }

  @override
  String get saveFile => 'Išsaugoti failą';

  @override
  String get saveFileToFolder => 'Išsaugokite failą į šitą aplanką';

  @override
  String get search => 'Ieškoti';

  @override
  String get searchForAChat => 'Ieškoti pokalbių';

  @override
  String get security => 'Apsauga';

  @override
  String get securityKey => 'Apsaugos raktas';

  @override
  String get securityKeyLost => 'Pamiršote apsugos raktą?';

  @override
  String seenByUser(Object username) {
    return 'Jau matė $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jau matė $username ir $count others',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Jau matė $username ir $username2';
  }

  @override
  String get send => 'Siųsti';

  @override
  String get sendAMessage => 'Siųsti žinutę';

  @override
  String get sendAsText => 'Siųsti kaip tekstą';

  @override
  String get sendAudio => 'Siųsti garso įrašą';

  @override
  String get sendBugReports => 'Leisti siųsti pranešimus apie klaidas naudojant sentry.io';

  @override
  String get sendFile => 'Sųsti bylą';

  @override
  String get sendImage => 'Siųsti paveiksliuką';

  @override
  String get sendMessages => 'Siųsti žinutes';

  @override
  String get sendOriginal => 'Siųsti originalą';

  @override
  String get sendSticker => 'Siųsti lipduką';

  @override
  String get sendVideo => 'Siųsti video';

  @override
  String sentAFile(Object username) {
    return '$username atsiuntė failą';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username atsiuntė garso įrašą';
  }

  @override
  String sentAPicture(Object username) {
    return '$username atsiuntė nuotrauką';
  }

  @override
  String sentASticker(Object username) {
    return '$username atsiuntė lipduką';
  }

  @override
  String sentAVideo(Object username) {
    return '$username atsiuntė video';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName išsiuntė skambučio informaciją';
  }

  @override
  String get sentryInfo => 'Informacija apie jūsų privatumą: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Sesija patvirtinta';

  @override
  String get separateChatTypes => 'Atskirti tiesioginius pokalbius, grupes ir erdves';

  @override
  String get setAProfilePicture => 'Nustatyti vartotojo profilio paveiksliuką';

  @override
  String get setAsCanonicalAlias => 'Nustatyti kaip pagrindinį slapyvardį';

  @override
  String get setCustomEmotes => 'Nustatykite pasirinktinius emotes';

  @override
  String get setGroupDescription => 'Nustatyti grupės aprašymą';

  @override
  String get setInvitationLink => 'Nustatyti pakvietimo nuorodą';

  @override
  String get setPermissionsLevel => 'Nustatyti leidimų lygį';

  @override
  String get setStatus => 'Nustatyti būseną';

  @override
  String get settings => 'Nustatytmai';

  @override
  String get share => 'Dalintis';

  @override
  String sharedTheLocation(Object username) {
    return '$username pasidalino savo vietą';
  }

  @override
  String get shareLocation => 'Dalintis vieta';

  @override
  String get showDirectChatsInSpaces => 'Rodyti susijusius tiesioginius pokalbius erdvėse';

  @override
  String get showPassword => 'Rodyti slaptažodį';

  @override
  String get signUp => 'Registruotis';

  @override
  String get singlesignon => 'Vienkartinis prisijungimas';

  @override
  String get skip => 'Praleisti';

  @override
  String get soundVibrationLedColor => 'Garsas, vibracijos LED spalvos';

  @override
  String get sourceCode => 'Programinis kodas';

  @override
  String get spaceIsPublic => 'Erdvė yra vieša';

  @override
  String get spaceName => 'Erdvės pavadinimas';

  @override
  String startedACall(Object senderName) {
    return '$senderName pradėjo skambutį';
  }

  @override
  String get startYourFirstChat => 'Pradėkite savo pirmąjį pokalbį dabar! 🙂 - Paspauskite „Naujas pokalbis“ - Nuskaitykite draugo QR kodą - Smagaus pokalbio';

  @override
  String get status => 'Būsena';

  @override
  String get statusExampleMessage => 'Kaip sekasi šiandiena?';

  @override
  String get submit => 'Pateikti';

  @override
  String get sunday => 'Sekmadienis';

  @override
  String get synchronizingPleaseWait => 'Sinchronizuojama... Palaukite.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get tapOnDeviceToVerify => 'Bakstelėkite įrenginį, kad patvirtintumėte';

  @override
  String get tapToShowImage => 'Bakstelėkite, kad būtų rodomas paveiksliukas';

  @override
  String get tapToShowMenu => 'Bakstelėkite, kad būtų rodomas meniu';

  @override
  String get theyDontMatch => 'Jie nesutampa';

  @override
  String get theyMatch => 'Jie sutampa';

  @override
  String get thisRoomHasBeenArchived => 'Šis kambarys buvo suarchyvuotas.';

  @override
  String get thursday => 'Ketvirtadienis';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours12:$minutes $suffix';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Perjungti mėgstamiausią';

  @override
  String get toggleMuted => 'Perjungti nutildytą';

  @override
  String get toggleUnread => 'Pažymėti kaip skaitytą/neskaitytą';

  @override
  String get tooManyRequestsWarning => 'Per daug užklausų. Pabandykite dar kartą vėliau!';

  @override
  String get transferFromAnotherDevice => 'Perkėlimas iš kito įrenginio';

  @override
  String get tryToSendAgain => 'Pabandykite išsiųsti dar kartą';

  @override
  String get tuesday => 'Antradienis';

  @override
  String get unavailable => 'Nepasiekiamas';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username panaikino draudimą $targetName';
  }

  @override
  String get unblockDevice => 'Atblokuoti įrenginį';

  @override
  String get unknownDevice => 'Nežinomas įrenginys';

  @override
  String get unknownEncryptionAlgorithm => 'Nežinomas šifravimo algoritmas';

  @override
  String unknownEvent(Object type) {
    return 'Nežinomas įvykis \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Nežinoma sesija, prašome patvirtinti';

  @override
  String get unlockChatBackup => 'Atrakinkite pokalbio atsarginę kopiją';

  @override
  String get unmuteChat => 'Įjungti pokalbio garsą';

  @override
  String get unpin => 'Atsegti';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 unread chat',
      other: '$unreadCount neperskaityti pokalbiai',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 unread message',
      other: '$unreadEvents neperskaitytos žinutės',
    );
  }

  @override
  String get useAmoledTheme => 'Naudoti su AMOLED suderinamas spalvas?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username ir dar $count kiti rašo…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username ir $username2 rašo…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username rašo…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username paliko pokalbį';
  }

  @override
  String get username => 'Vartotojo vardas';

  @override
  String get userNotVerified => 'Vartotojas nepatvirtintas';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username išsiuntė $type įvykį';
  }

  @override
  String get userUnknownVerification => 'Vartotojo būsena nežinoma';

  @override
  String get userVerified => 'Vartotojas patvirtintas';

  @override
  String get unverified => 'Nepatvirtinta';

  @override
  String get verified => 'Patvirtinta';

  @override
  String get verifiedSession => 'Sesija sėkmingai patvirtinta!';

  @override
  String get verify => 'Patvirtinti';

  @override
  String get verifyManual => 'Patvirtinti rankiniu būdu';

  @override
  String get verifyStart => 'Pradėti patvirtinimą';

  @override
  String get verifySuccess => 'Jūs sėkmingai patvirtintas!';

  @override
  String get verifyTitle => 'Tikrinama kita paskyra';

  @override
  String get verifyUser => 'Patvirtinti vartotoją';

  @override
  String get videoCall => 'Vaizdo skambutis';

  @override
  String get visibilityOfTheChatHistory => 'Pokalbių istorijos matomumas';

  @override
  String get visibleForAllParticipants => 'Matoma visiems dalyviams';

  @override
  String get visibleForEveryone => 'Matoma visiems';

  @override
  String get voiceMessage => 'Balso žinutė';

  @override
  String get waitingPartnerAcceptRequest => 'Laukiama, kol dalyvis priims užklausą…';

  @override
  String get waitingPartnerEmoji => 'Laukiama, kol dalyvis priims emoji…';

  @override
  String get waitingPartnerNumbers => 'Laukiama, kol dalyvis priims skaičius…';

  @override
  String get wallpaper => 'Užsklanda';

  @override
  String get warning => 'Įspėjimas!';

  @override
  String get warningEncryptionInBeta => 'End-to-end šifravimas šiuo metu yra Beta versijos! Naudokite savo rizika!';

  @override
  String get wednesday => 'Trečiadienis';

  @override
  String get welcomeText => 'Sveiki atvykę į šauniausią momentinių pranešimų programą Matrix tinkle.';

  @override
  String get weSentYouAnEmail => 'Išsiuntėme jums el. laišką';

  @override
  String get whoCanPerformWhichAction => 'Kas gali atlikti kokį veiksmą';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Kam leidžiama prisijungti prie šios grupės';

  @override
  String get whyDoYouWantToReportThis => 'Kodėl norite apie tai pranešti?';

  @override
  String get wipeChatBackup => 'Išvalyti atsarginę pokalbio kopiją, kad sukurtumėte naują saugos raktą?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Naudodami šiuos adresus galite atkurti savo slaptažodį.';

  @override
  String get writeAMessage => 'Rašyti žinutę…';

  @override
  String get yes => 'Taip';

  @override
  String get you => 'Tu';

  @override
  String get youAreInvitedToThisChat => 'Esate pakviesti į šį pokalbį';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Jūs nebedalyvaujate šiame pokalbyje';

  @override
  String get youCannotInviteYourself => 'Jūs negalite pakviesti savęs';

  @override
  String get youHaveBeenBannedFromThisChat => 'Jums buvo uždrausta dalyvauti šiame pokalbyje';

  @override
  String get yourChatsAreBeingSynced => 'Jūsų pokalbiai sinchronizuojami…';

  @override
  String get yourOwnUsername => 'Jūsų vartotojo vardas';

  @override
  String get yourPublicKey => 'Jūsų viešasis raktas';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Būsite prisijungę prie $homeserver';
  }

  @override
  String get zoomIn => 'Priartinti';

  @override
  String get zoomOut => 'Nutolinti';

  @override
  String get messageInfo => 'Žinutės informacija';

  @override
  String get time => 'Laikas';

  @override
  String get messageType => 'Žinutės tipas';

  @override
  String get sender => 'Siuntėjas';

  @override
  String get openGallery => 'Atvira galerija';

  @override
  String get removeFromSpace => 'Pašalinti iš erdvės';

  @override
  String get removeFromSpaceDescription => 'Tai pašalins šį pokalbį iš dabartinės erdvės. Tada jis vis tiek bus matomas skiltyje „Visi pokalbiai“.';

  @override
  String get addToSpaceDescription => 'Pasirinkite erdvę, kad prie jos pridėtumėte šį pokalbį.';

  @override
  String get start => 'Pradžia';

  @override
  String get setupChatBackupNow => 'Nustatykite atsarginę pokalbio kopiją';

  @override
  String get pleaseEnterSecurityKeyDescription => 'Norėdami atrakinti atsarginę pokalbio kopiją, įveskite saugos raktą, kuris buvo sugeneruotas ankstesnės sesijos metu. Jūsų saugos raktas NĖRA jūsų slaptažodis.';

  @override
  String get saveTheSecurityKeyNow => 'Išsaugokite saugos raktą dabar';

  @override
  String get addToStory => 'Pridėti prie istorijos';

  @override
  String get publish => 'Paskelbti';

  @override
  String get whoCanSeeMyStories => 'Kas gali matyti mano istorijas?';

  @override
  String get unsubscribeStories => 'Atsisakyti istorijų prenumeratos';

  @override
  String get thisUserHasNotPostedAnythingYet => 'Šis vartotojas dar nieko nepaskelbė savo istorijoje';

  @override
  String get yourStory => 'Tavo istorija';

  @override
  String get replyHasBeenSent => 'Atsakymas išsiųstas';

  @override
  String videoWithSize(Object size) {
    return 'Video ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'Istorija nuo $date: $body';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Atminkite, kad žmonės gali matyti vienas kitą ir susisiekti tarpusavyje jūsų istorijoje.';

  @override
  String get whatIsGoingOn => 'Kas vyksta?';

  @override
  String get addDescription => 'Pridėti aprašymą';

  @override
  String get storyPrivacyWarning => 'Atminkite, kad žmonės gali matyti vienas kitą ir susisiekti tarpusavyje jūsų istorijoje. Jūsų istorijos bus matomos 24 valandas, tačiau nėra garantijos, kad jos bus ištrintos iš visų įrenginių ir serverių.';

  @override
  String get iUnderstand => 'Aš suprantu';

  @override
  String get openChat => 'Atviras pokalbis';

  @override
  String get markAsRead => 'Žymėti kaip skaitytą';

  @override
  String get reportUser => 'Pranešti apie vartotoją';

  @override
  String get dismiss => 'Atsisakyti';

  @override
  String get matrixWidgets => 'Matrix programėlės';

  @override
  String get integrationsNotImplemented => 'Redaguoti programėles ir integracijas kol kas negalima.';

  @override
  String get editIntegrations => 'Redaguoti programėles ir integracijas';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender suregavo su $reaction';
  }

  @override
  String get pinMessage => 'Prisijungti prie kambario';

  @override
  String get pinnedEventsError => 'Įkeliant prisegtus pranešimus įvyko klaida';

  @override
  String get confirmEventUnpin => 'Ar tikrai visam laikui atjungsite įvykį?';

  @override
  String get emojis => 'Emojis';

  @override
  String get placeCall => 'Skambinkite';

  @override
  String get voiceCall => 'Balso skambutis';

  @override
  String get unsupportedAndroidVersion => 'Nepalaikoma Android versija';

  @override
  String get unsupportedAndroidVersionLong => 'Šiai funkcijai reikalinga naujesnė Android versija. Patikrinkite, ar nėra naujinimų arba Lineage OS palaikymo.';

  @override
  String get videoCallsBetaWarning => 'Atminkite, kad vaizdo skambučiai šiuo metu yra beta versijos. Jie gali neveikti taip kaip tikėtasi, arba iš viso neveikti visose platformose.';

  @override
  String get experimentalVideoCalls => 'Eksperimentiniai vaizdo skambučiai';

  @override
  String get emailOrUsername => 'El. paštas arba vartotojo vardas';

  @override
  String switchToAccount(Object number) {
    return 'Persijungti į paskyrą $number';
  }

  @override
  String get nextAccount => 'Kita paskyra';

  @override
  String get previousAccount => 'Ankstesnė paskyra';

  @override
  String get editWidgets => 'Redaguoti programėles';

  @override
  String get addWidget => 'Pridėti programėlę';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Teksto pastaba';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Custom';

  @override
  String get widgetName => 'Vardas';

  @override
  String get widgetUrlError => 'Netinkamas URL.';

  @override
  String get widgetNameError => 'Pateikite rodomą vardą';

  @override
  String get errorAddingWidget => 'Pridedant programėlę įvyko klaida.';

  @override
  String get youRejectedTheInvitation => 'Jūs atmetėte kvietimą';

  @override
  String get youJoinedTheChat => 'Jūs prisijungėte prie pokalbio';

  @override
  String get youAcceptedTheInvitation => 'Jūs priėmėte kvietimą';

  @override
  String youBannedUser(Object user) {
    return 'Jūs užblokavote $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(Object user) {
    return 'Jūs atšaukėte kvietimą $user';
  }

  @override
  String youInvitedBy(Object user) {
    return 'Jus pakvietė $user';
  }

  @override
  String youInvitedUser(Object user) {
    return 'Pakvietėte $user';
  }

  @override
  String youKicked(Object user) {
    return 'Jūs pašalinote $user';
  }

  @override
  String youKickedAndBanned(Object user) {
    return 'Jūs pašalinote ir užblokavote $user';
  }

  @override
  String youUnbannedUser(Object user) {
    return 'Jūs atšaukėte $user draudimą';
  }

  @override
  String get noEmailWarning => 'Please enter a valid email address. Otherwise you won\'t be able to reset your password. If you don\'t want to, tap again on the button to continue.';
}
