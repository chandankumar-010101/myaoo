

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Italian (`it`).
class L10nIt extends L10n {
  L10nIt([String locale = 'it']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Le password non corrispondono!';

  @override
  String get pleaseEnterValidEmail => 'Inserire un indirizzo email valido.';

  @override
  String get repeatPassword => 'Ripeti password';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Per favore scegli almeno $min caratteri.';
  }

  @override
  String get about => 'Informazioni';

  @override
  String get accept => 'Accetta';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username ha accettato l\'invito';
  }

  @override
  String get account => 'Account';

  @override
  String get accountInformation => 'Informazioni account';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username ha abilitato la crittografia end to end';
  }

  @override
  String get addEmail => 'Aggiungi e-mail';

  @override
  String get addGroupDescription => 'Aggiungi una descrizione al gruppo';

  @override
  String get addNewFriend => 'Aggiungi un nuovo amico';

  @override
  String get addToSpace => 'Aggiungi a uno spazio';

  @override
  String get admin => 'Amministratore';

  @override
  String get alias => 'alias';

  @override
  String get all => 'Tutto';

  @override
  String get allChats => 'Tutte le chat';

  @override
  String get alreadyHaveAnAccount => 'Hai già un account?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName ha risposto alla chiamata';
  }

  @override
  String get anyoneCanJoin => 'Tutti possono partecipare';

  @override
  String get appLock => 'Blocco dell\'app';

  @override
  String get archive => 'Archivia';

  @override
  String get archivedRoom => 'Stanza archiviata';

  @override
  String get areGuestsAllowedToJoin => 'Gli utenti ospiti possono partecipare';

  @override
  String get areYouSure => 'Sei sicuro/a?';

  @override
  String get areYouSureYouWantToLogout => 'Sei sicuro/a di voler uscire?';

  @override
  String get askSSSSSign => 'Per far accedere l\'altra persona, per favore inserisci la tua frase segreta o chiave di recupero.';

  @override
  String get askSSSSVerify => 'Per favore inserisci la tua frase segreta o chiave di recupero per verificare la sessione.';

  @override
  String askVerificationRequest(Object username) {
    return 'Accettare questa richiesta di verifica da $username?';
  }

  @override
  String get audioPlayerPause => 'Pausa';

  @override
  String get audioPlayerPlay => 'Riproduci';

  @override
  String get authentication => 'Autenticazione';

  @override
  String get autoplayImages => 'Riproduci automaticamente sticker animati ed emoticon';

  @override
  String get avatarHasBeenChanged => 'Avatar cambiato';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'L\'homeserver supporta i tipi di accesso:\n${serverVersions}\nMa questa applicazione supporta solo:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Send on enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'L\'homeserver supporta le versioni Spec:\n${serverVersions}\nMa questa applicazione supporta solo $supportedVersions';
  }

  @override
  String get banFromChat => 'Bandisci dalla chat';

  @override
  String get banned => 'Bandito';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username ha bandito $targetName';
  }

  @override
  String get blockDevice => 'Blocca dispositivo';

  @override
  String get blocked => 'Bloccato';

  @override
  String get botMessages => 'Messaggi bot';

  @override
  String get bubbleSize => 'Bubble size';

  @override
  String get cachedKeys => 'Chiavi in cache';

  @override
  String get cancel => 'Cancella';

  @override
  String cantOpenUri(Object uri) {
    return 'Impossibile aprire l\'URI';
  }

  @override
  String get changeDeviceName => 'Cambia nome dispositivo';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username ha cambiato l\'avatar della discussione';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username ha cambiato la descrizione della chat in: «$description»';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username ha cambiato il nome della discussione in: «$chatname»';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username ha cambiato i permessi della chat';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username ha cambiato nome in: $displayname';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username ha cambiato le regole di accesso per ospiti';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username ha cambiato le regole di accesso per ospiti con: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username ha cambiato la visibilità della cronologia';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username ha cambiato la visibilità della cronologia in: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username ha cambiato le regole per unirsi';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username ha cambiato le regole per unirsi in: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username ha cambiato il loro avatar';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username ha cambiato il nome delle stanze';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username ha cambiato il link di invito';
  }

  @override
  String get changelog => 'Registro cambiamenti';

  @override
  String get changePassword => 'Cambia la password';

  @override
  String get changesHaveBeenSaved => 'I cambiamenti sono stati salvati';

  @override
  String get changeTheHomeserver => 'Cambia il server principale';

  @override
  String get changeTheme => 'Cambia il tuo stile';

  @override
  String get changeTheNameOfTheGroup => 'Cambia il nome del gruppo';

  @override
  String get changeTheServer => 'Cambia server';

  @override
  String get changeWallpaper => 'Cambia sfondo';

  @override
  String get changeYourAvatar => 'Cambia il tuo avatar';

  @override
  String get channelCorruptedDecryptError => 'La crittografia è corrotta';

  @override
  String get chat => 'Chat';

  @override
  String get yourUserId => 'Il tuo ID utente:';

  @override
  String get setupChatBackup => 'Imposta backup delle chat';

  @override
  String get iWroteDownTheKey => 'Ho trascritto la chiave';

  @override
  String get yourChatBackupHasBeenSetUp => 'Il tuo backup delle chat è stato configurato.';

  @override
  String get chatBackup => 'Backup delle discussioni';

  @override
  String get setupChatBackupDescription => 'Per proteggere i tuoi messaggi, abbiamo generato una chiave di sicurezza. \nConservala in un luogo sicuro, come ad esempio un software di gestione password.';

  @override
  String get chatBackupDescription => 'Il backup della discussione è protetto da una chiave di sicurezza. Assicurati di non perderla.';

  @override
  String get chatDetails => 'Dettagli chat';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat has been added to this class';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat has been removed from this class';

  @override
  String get chats => 'Discussioni';

  @override
  String get chooseAStrongPassword => 'Scegli una password complessa';

  @override
  String get chooseAUsername => 'Scegli un username';

  @override
  String get clearArchive => 'Cancella archivio';

  @override
  String get clearText => 'Cancella il testo';

  @override
  String get close => 'Chiudi';

  @override
  String get commandHint_ban => 'Banna l\'utente specificato da questa stanza.';

  @override
  String get commandHint_clearcache => 'Clear cache';

  @override
  String get commandHint_create => 'Create an empty group chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_discardsession => 'Discard session';

  @override
  String get commandHint_dm => 'Start a direct chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_html => 'Invia testo formattato in HTML';

  @override
  String get commandHint_invite => 'Invite the given user to this room';

  @override
  String get commandHint_join => 'Join the given room';

  @override
  String get commandHint_kick => 'Remove the given user from this room';

  @override
  String get commandHint_leave => 'Lascia questa stanza';

  @override
  String get commandHint_me => 'Describe yourself';

  @override
  String get commandHint_myroomavatar => 'Set your picture for this room (by mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Set your display name for this room';

  @override
  String get commandHint_op => 'Set the given user\'s power level (default: 50)';

  @override
  String get commandHint_plain => 'Invia testo non formattato';

  @override
  String get commandHint_react => 'Send reply as a reaction';

  @override
  String get commandHint_send => 'Invia testo';

  @override
  String get commandHint_unban => 'Unban the given user from this room';

  @override
  String get commandInvalid => 'Comando non valido';

  @override
  String commandMissing(Object command) {
    return '$command is not a command.';
  }

  @override
  String get compareEmojiMatch => 'Confronta e assicurati che le seguenti emoji corrispondano a quelle dell\'altro dispositivo:';

  @override
  String get compareNumbersMatch => 'Confronta e assicurati che le seguenti emoji corrispondano a quelle dell\'altro dispositivo:';

  @override
  String get configureChat => 'Configura la discussione';

  @override
  String get confirm => 'Conferma';

  @override
  String get connect => 'Connetti';

  @override
  String get connectionAttemptFailed => 'Tentativo di connessione fallito';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Il contatto è stato invitato nel gruppo';

  @override
  String get containsDisplayName => 'Contiene nome visibile';

  @override
  String get containsUserName => 'Contiene nome utente';

  @override
  String get contentHasBeenReported => 'Il contenuto è stato segnalato agli amministratori del server';

  @override
  String get contentViewer => 'Visualizzatore contenuti';

  @override
  String get copiedToClipboard => 'Copiato negli Appunti';

  @override
  String get copy => 'Copia';

  @override
  String get copyToClipboard => 'Copia negli appunti';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Impossibile decriptare messaggio: $error';
  }

  @override
  String get couldNotSetAvatar => 'Impossibile impostare avatar';

  @override
  String get couldNotSetDisplayname => 'Impossibile impostare nome';

  @override
  String countParticipants(Object count) {
    return '$count partecipanti';
  }

  @override
  String get create => 'Crea';

  @override
  String get createAccountNow => 'Crea ora un account';

  @override
  String createdTheChat(Object username) {
    return '$username ha creato la chat';
  }

  @override
  String get createNewGroup => 'Crea un nuovo gruppo';

  @override
  String get createNewSpace => 'New class';

  @override
  String get crossSigningDisabled => 'Firma incrociata disabilitata';

  @override
  String get crossSigningEnabled => 'Firma incrociata abilitata';

  @override
  String get currentlyActive => 'Attualmente attivo';

  @override
  String get darkTheme => 'Scuro';

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
  String get deactivateAccountWarning => 'Disabiliterà il tuo account. Non puoi tornare indietro! Sei sicuro/a?';

  @override
  String get defaultPermissionLevel => 'Livello di autorizzazione predefinito';

  @override
  String get delete => 'Cancella';

  @override
  String get deleteAccount => 'Elimina l\'account';

  @override
  String get deleteMessage => 'Elimina il messaggio';

  @override
  String get deny => 'Declina';

  @override
  String get device => 'Dispositivo';

  @override
  String get deviceId => 'ID del dispositivo';

  @override
  String get devices => 'Dispositivi';

  @override
  String get deviceVerifyDescription => 'La crittografia è sicura solo quando tutti i dispositivi sono stati verificati.';

  @override
  String get directChats => 'Discussioni dirette';

  @override
  String get discardPicture => 'Rimuovi l\'immagine';

  @override
  String get discover => 'Scopri';

  @override
  String get discoverGroups => 'Scopri gruppi';

  @override
  String get displaynameHasBeenChanged => 'Il nominativo è stato cambiato';

  @override
  String get donate => 'Dona';

  @override
  String get dontAskAgain => 'Cancel and don\'t ask again';

  @override
  String get downloadFile => 'Scarica il file';

  @override
  String get edit => 'Modifica';

  @override
  String get editBlockedServers => 'Modifica i server bloccati';

  @override
  String get editChatPermissions => 'Modifica le autorizzazioni discussione';

  @override
  String get editDisplayname => 'Modifica il nominativo';

  @override
  String get editJitsiInstance => 'Cambia l\'istanza Jitsi';

  @override
  String get editRoomAliases => 'Modifica gli alias della stanza';

  @override
  String get editRoomAvatar => 'Modifica l\'avatar della stanza';

  @override
  String get emoteExists => 'L\'emote già esiste!';

  @override
  String get emoteInvalid => 'Shortcode emote invalido!';

  @override
  String get emotePacks => 'Pacchetti emotes della stanza';

  @override
  String get emoteSettings => 'Impostazioni emote';

  @override
  String get emoteShortcode => 'Scorciatoia emote';

  @override
  String get emoteWarnNeedToPick => 'Devi scegliere una scorciatoia emote e aggiungere un immagine!';

  @override
  String get emptyChat => 'Discussione vuota';

  @override
  String get enableChatBackup => 'Abilita il backup delle chat per non perdere mai l\'accesso alle tue chat.';

  @override
  String get enableEmotesGlobally => 'Abilita i pacchetti emotes globalmente';

  @override
  String get enableEncryption => 'Abilita la crittografia';

  @override
  String get enableEncryptionWarning => 'Non potrai disabilitare la crittografia in futuro. Sei sicuro?';

  @override
  String get encrypted => 'Crittografato';

  @override
  String get encryption => 'Crittografia';

  @override
  String get encryptionAlgorithm => 'Algoritmo crittografia';

  @override
  String get encryptionNotEnabled => 'Crittografia non abilitata';

  @override
  String get end2endEncryptionSettings => 'Impostazioni crittografia dall\'inizio alla fine';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName è entrato in chiamata';
  }

  @override
  String get enterAGroupName => 'Inserisci un nome del gruppo';

  @override
  String get enterAnEmailAddress => 'Inserisci un indirizzo e-mail';

  @override
  String get enterASpacepName => 'Enter a class name';

  @override
  String get enterAUsername => 'Inserisci un username';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'Inserisci il tuo server principale';

  @override
  String errorObtainingLocation(Object error) {
    return 'Error obtaining location: $error';
  }

  @override
  String get everythingReady => 'Tutto pronto!';

  @override
  String get extremeOffensive => 'Estremamente offensivo';

  @override
  String get fileName => 'Nome del file';

  @override
  String get fileSize => 'Dimensione del file';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Dimensione carattere';

  @override
  String get forward => 'Inoltra';

  @override
  String get friday => 'venerdì';

  @override
  String get friends => 'Amici';

  @override
  String get fromJoining => 'Dall\'adesione';

  @override
  String get fromTheInvitation => 'Dall\'invito';

  @override
  String get goToTheNewRoom => 'Vai nella nuova stanza';

  @override
  String get group => 'Gruppo';

  @override
  String get groupDescription => 'Descrizione del gruppo';

  @override
  String get groupDescriptionHasBeenChanged => 'Descrizione del gruppo modificata';

  @override
  String get groupIsPublic => 'Il gruppo è pubblico';

  @override
  String get groups => 'Gruppi';

  @override
  String groupWith(Object displayname) {
    return 'Gruppo con $displayname';
  }

  @override
  String get guestsAreForbidden => 'Gli ospiti sono vietati';

  @override
  String get guestsCanJoin => 'Gli ospiti possono partecipare';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username ha ritirato l\'invito per $targetName';
  }

  @override
  String get help => 'Aiuto';

  @override
  String get hideRedactedEvents => 'Nascondi gli eventi eliminati';

  @override
  String get hideUnknownEvents => 'Nascondi gli eventi sconosciuti';

  @override
  String get homeserverIsNotCompatible => 'Il server principale non è compatibile';

  @override
  String get howOffensiveIsThisContent => 'Quanto è offensivo questo contenuto?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identità';

  @override
  String get ignore => 'Ignora';

  @override
  String get ignoredUsers => 'Utenti ignorati';

  @override
  String get ignoreListDescription => 'Puoi ignorare gli utenti che ti stanno disturbando. Non sarai in grado di ricevere messaggi o inviti a stanze virtuali dagli utenti nel tuo elenco personale da ignorare.';

  @override
  String get ignoreUsername => 'Ignora il nome utente';

  @override
  String get iHaveClickedOnLink => 'Ho cliccato sul collegamento';

  @override
  String get incorrectPassphraseOrKey => 'Frase segrata o chiave di ripristino errate';

  @override
  String get inoffensive => 'Inoffensivo';

  @override
  String get invalidEmail => 'E-mail non valida';

  @override
  String get inviteContact => 'Invita contatto';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Invita un contatto a $groupName';
  }

  @override
  String get invited => 'Invitato/a';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username ha invitato $targetName';
  }

  @override
  String get invitedUsersOnly => 'Solo per gli utenti invitati';

  @override
  String get inviteForMe => 'Invita per me';

  @override
  String inviteText(Object username, Object link) {
    return '$username ti ha invitato/a a FluffyChat.\n1. Installa FluffyChat: https://fluffychat.im\n2. Iscriviti o accedi\n3. Apri il collegamento di invito: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'La chiave del dispositivo seguente è corretta?';

  @override
  String get isTyping => 'sta scrivendo…';

  @override
  String joinedTheChat(Object username) {
    return '$username si è unito/a alla chat';
  }

  @override
  String get joinRoom => 'Unisciti alla stanza';

  @override
  String get keysCached => 'Le chiave sono memorizzate nella cache';

  @override
  String get keysMissing => 'Mancano le chiavi';

  @override
  String kicked(Object username, Object targetName) {
    return '$username ha espulso $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username ha espulso e bandito $targetName';
  }

  @override
  String get kickFromChat => 'Espulsa dalla discussione';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Ultima attività: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'IP ultimo visto';

  @override
  String get lastSeenLongTimeAgo => 'Visto/a molto tempo fa';

  @override
  String get leave => 'Lascia';

  @override
  String get leftTheChat => 'Ha lasciato la chat';

  @override
  String get license => 'Licenza';

  @override
  String get lightTheme => 'Chiaro';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Carica altri $count partecipanti';
  }

  @override
  String get loadingPleaseWait => 'Caricamento… Attendere prego.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Carica di più…';

  @override
  String get locationDisabledNotice => 'I servizi di localizzazione sono disabilitati. Per favore abilitali per poter condividere la tua posizione.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get login => 'Accedi';

  @override
  String logInTo(Object homeserver) {
    return 'Accedi a $homeserver';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => 'Esci';

  @override
  String get makeAModerator => 'Promuovi come moderatore';

  @override
  String get makeAnAdmin => 'Promuovi come amministratore';

  @override
  String get makeSureTheIdentifierIsValid => 'Assicurati che l\'identificatore sia valido';

  @override
  String get memberChanges => 'Cambiamenti di membri';

  @override
  String get mention => 'Menzione';

  @override
  String get messages => 'Messaggi';

  @override
  String get messageWillBeRemovedWarning => 'Il messaggio verrà rimosso per tutti i partecipanti';

  @override
  String get moderator => 'Moderatore';

  @override
  String get monday => 'lunedì';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 altro evento',
      other: '$count altri eventi',
    );
  }

  @override
  String get muteChat => 'Silenzia discussione';

  @override
  String get needPantalaimonWarning => 'Tieni presente che per ora hai bisogno di Pantalaimon per utilizzare la crittografia dall\'inizio alla fine.';

  @override
  String get newChat => 'Nuova discussione';

  @override
  String get newMessageInFluffyChat => 'Nuovo messaggio in FluffyChat';

  @override
  String get newVerificationRequest => 'Nuova richiesta di verifica!';

  @override
  String get next => 'Avanti';

  @override
  String get no => 'No';

  @override
  String get noConnectionToTheServer => 'Nessuna connessione al server';

  @override
  String get noCrossSignBootstrap => 'Fluffychat attualmente non supporta l\'abilitazione della firma incrociata. Abilitala dall\'interno di Element.';

  @override
  String get noDescription => 'Nessuna descrizione';

  @override
  String get noEmotesFound => 'Nessun emote trovato. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Puoi attivare la crittografia solo quando la stanza non è più accessibile pubblicamente.';

  @override
  String get noGoogleServicesWarning => 'Sembra che tu non abbia servizi Google sul tuo telefono. Questa è una buona decisione per la tua riservatezza! Per ricevere notifiche push in FluffyChat consigliamo di utilizzare https://microg.org/ o https://unifiedpush.org/.';

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
  String get scanQrCode => 'Scansiona codice QR';

  @override
  String get noMegolmBootstrap => 'Fluffychat attualmente non supporta l\'attivazione del backup delle chiavi in linea. Abilitalo da Element.';

  @override
  String get none => 'Nessuno';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'Your user ID will then have the format @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'Non hai ancora aggiunto un modo per recuperare la tua password.';

  @override
  String get noPermission => 'Nessuna autorizzazione';

  @override
  String get noPublicRoomsFound => 'Nessuna stanza pubblica trovata……';

  @override
  String get noRoomsFound => 'Nessuna stanza trovata…';

  @override
  String get noStatusesFound => 'Nessuno stato trovato finora.';

  @override
  String get notifications => 'Notifiche';

  @override
  String get notificationsEnabledForThisAccount => 'Notifiche abilitate per questo account';

  @override
  String get notSupportedInWeb => 'Non supportato nel Web';

  @override
  String numberSelected(Object number) {
    return '$number selezionato/i';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count utenti stanno scrivendo…';
  }

  @override
  String get obtainingLocation => 'Obtaining location…';

  @override
  String get offensive => 'Offensivo';

  @override
  String get offline => 'Fuori linea';

  @override
  String get ok => 'OK';

  @override
  String get online => 'In linea';

  @override
  String get onlineKeyBackupDisabled => 'Il backup delle chiavi in linea è disabilitato';

  @override
  String get onlineKeyBackupEnabled => 'Il backup delle chiavi in linea è abilitato';

  @override
  String get oopsPushError => 'Ops! Purtroppo si è verificato un errore durante l\'impostazione delle notifiche push.';

  @override
  String get oopsSomethingWentWrong => 'Ops, qualcosa è andato storto…';

  @override
  String get openAppToReadMessages => 'Apri l\'app per leggere i messaggi';

  @override
  String get openCamera => 'Apri fotocamera';

  @override
  String get openVideoCamera => 'Open camera for a video';

  @override
  String get oneClientLoggedOut => 'One of your clients has been logged out';

  @override
  String get addAccount => 'Aggiungi account';

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
  String get openInMaps => 'Apri in maps';

  @override
  String get link => 'Link';

  @override
  String get serverRequiresEmail => 'Questo server ha bisogno di validare la tua email per la registrazione.';

  @override
  String get optionalGroupName => '(Opzionale) Nome del gruppo';

  @override
  String get or => 'O';

  @override
  String get participant => 'Partecipante';

  @override
  String get participatingUserDevices => 'Dispositivi partecipanti';

  @override
  String get passphraseOrKey => 'frase segreta o chiave di recupero';

  @override
  String get password => 'Password';

  @override
  String get passwordForgotten => 'Password dimenticata';

  @override
  String get passwordHasBeenChanged => 'La password è stata cambiata';

  @override
  String get passwordRecovery => 'Recupero della password';

  @override
  String get people => 'Persone';

  @override
  String get pickImage => 'Scegli un\'immagine';

  @override
  String get pin => 'Fissa';

  @override
  String play(Object fileName) {
    return 'Riproduci $fileName';
  }

  @override
  String get pleaseChoose => 'Si prega di scegliere';

  @override
  String get pleaseChooseAPasscode => 'Si prega di scegliere un codice di accesso';

  @override
  String get pleaseChooseAUsername => 'Si prega di scegliere un nome utente';

  @override
  String get pleaseClickOnLink => 'Clicca sul collegamenti nell\'e-mail e poi procedi.';

  @override
  String get pleaseEnter4Digits => 'Inserisci 4 cifre o lascia vuoto per disabilitare il blocco dell\'app.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Inserisci un identificatore Matrix.';

  @override
  String get pleaseEnterSecurityKey => 'Inserisci la tua chiave di sicurezza:';

  @override
  String get pleaseEnterYourPassword => 'Inserisci la tua password';

  @override
  String get pleaseEnterYourPin => 'Per favore inserisci il tuo PIN';

  @override
  String get pleaseEnterYourUsername => 'Inserisci il tuo nome utente';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Segui le istruzioni sul sito web e tocca Avanti.';

  @override
  String get privacy => 'Privacy';

  @override
  String get publicGroups => 'Gruppi pubblici';

  @override
  String get publicKey => 'Chiave pubblica';

  @override
  String get publicRooms => 'Stanze pubbliche';

  @override
  String get publicSpace => 'Public class';

  @override
  String get pushRules => 'Regole notifiche';

  @override
  String get reason => 'Motivo';

  @override
  String get recording => 'Registrazione';

  @override
  String redactedAnEvent(Object username) {
    return '$username ha eliminato un evento';
  }

  @override
  String get redactMessage => 'Elimina un messaggio';

  @override
  String get register => 'Registrati';

  @override
  String get reject => 'Rifiuta';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username ha rifiutato l\'invito';
  }

  @override
  String get rejoin => 'Riunisciti';

  @override
  String get remove => 'Rimuovi';

  @override
  String get removeAllOtherDevices => 'Rimuovi tutti gli altri dispositivi';

  @override
  String removedBy(Object username) {
    return 'Rimosso da $username';
  }

  @override
  String get removeDevice => 'Rimuovi il dispositivo';

  @override
  String get unbanFromChat => 'Rimuovi il ban dalla chat';

  @override
  String get removeMessage => 'Rimuovi il messaggio';

  @override
  String get removeYourAvatar => 'Rimuovi il tuo avatar';

  @override
  String get renderRichContent => 'Mostra i contenuti ricchi dei messaggi';

  @override
  String get replaceRoomWithNewerVersion => 'Sostituisci la stanza con la versione più recente';

  @override
  String get reply => 'Rispondi';

  @override
  String get reportMessage => 'Segnala il messaggio';

  @override
  String get requestPermission => 'Richiedi l\'autorizzazione';

  @override
  String get requestToReadOlderMessages => 'Richiedi di leggere i messaggi più vecchi';

  @override
  String get revokeAllPermissions => 'Revoca tutte le autorizzazioni';

  @override
  String get roomHasBeenUpgraded => 'La stanza è stata aggiornata';

  @override
  String get roomVersion => 'Versione della stanza';

  @override
  String get saturday => 'sabato';

  @override
  String savedFileAs(Object filename) {
    return 'Saved file as $filename';
  }

  @override
  String get saveFile => 'Salva file';

  @override
  String get saveFileToFolder => 'Salva file in questa cartella';

  @override
  String get search => 'Cerca';

  @override
  String get searchForAChat => 'Cerca una discussione';

  @override
  String get security => 'Sicurezza';

  @override
  String get securityKey => 'Chiave di sicurezza';

  @override
  String get securityKeyLost => 'Chiave di sicurezza persa?';

  @override
  String seenByUser(Object username) {
    return 'Visto da $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Visto da $username e $count altri',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Visto da $username e $username2';
  }

  @override
  String get send => 'Invia';

  @override
  String get sendAMessage => 'Invia un messaggio';

  @override
  String get sendAsText => 'Invia come testo';

  @override
  String get sendAudio => 'Invia un file audio';

  @override
  String get sendBugReports => 'Consenti l\'invio di segnalazioni di errore con sentry.io';

  @override
  String get sendFile => 'Invia un file';

  @override
  String get sendImage => 'Invia un\'immagine';

  @override
  String get sendMessages => 'Invia messaggi';

  @override
  String get sendOriginal => 'Invia l\'originale';

  @override
  String get sendSticker => 'Invia sticker';

  @override
  String get sendVideo => 'Invia un video';

  @override
  String sentAFile(Object username) {
    return '$username ha inviato un file';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username ha inviato un file audio';
  }

  @override
  String sentAPicture(Object username) {
    return '$username ha inviato un\'immagine';
  }

  @override
  String sentASticker(Object username) {
    return '$username ha inviato un adesivo';
  }

  @override
  String sentAVideo(Object username) {
    return '$username ha inviato un video';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName ha inviato informazioni sulla chiamata';
  }

  @override
  String get sentryInfo => 'Informazioni sulla privacy: https://sentry.io/security/';

  @override
  String get sessionVerified => 'La sessione è verificata';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Imposta un\'immagine di profilo';

  @override
  String get setAsCanonicalAlias => 'Imposta come alias principale';

  @override
  String get setCustomEmotes => 'Imposta emoticon personalizzate';

  @override
  String get setGroupDescription => 'Imposta una descrizione del gruppo';

  @override
  String get setInvitationLink => 'Imposta il collegamento di invito';

  @override
  String get setPermissionsLevel => 'Imposta il livello di autorizzazione';

  @override
  String get setStatus => 'Imposta lo stato';

  @override
  String get settings => 'Impostazioni';

  @override
  String get share => 'Condividi';

  @override
  String sharedTheLocation(Object username) {
    return '$username ha condiviso la sua  posizione';
  }

  @override
  String get shareLocation => 'Condividi posizione';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Mostra la password';

  @override
  String get signUp => 'Iscriviti';

  @override
  String get singlesignon => 'Accesso singolo';

  @override
  String get skip => 'Ignora';

  @override
  String get soundVibrationLedColor => 'Suono, vibrazione, colore diodo';

  @override
  String get sourceCode => 'Codice sorgente';

  @override
  String get spaceIsPublic => 'Class is public';

  @override
  String get spaceName => 'Class name';

  @override
  String startedACall(Object senderName) {
    return '$senderName ha iniziato una chiamata';
  }

  @override
  String get startYourFirstChat => 'Inizia subito la tua prima discussione! 🙂\n- Tocca «+»\n- Inserisci il nome utente di un amico\n- Divertiti a chiacchierare';

  @override
  String get status => 'Stato';

  @override
  String get statusExampleMessage => 'Come stai oggi?';

  @override
  String get submit => 'Invia';

  @override
  String get sunday => 'domenica';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get tapOnDeviceToVerify => 'Tocca un dispositivo per verificarlo';

  @override
  String get tapToShowImage => 'Tap to show image';

  @override
  String get tapToShowMenu => 'Tocca per mostrare il menù';

  @override
  String get theyDontMatch => 'Non corrispondono';

  @override
  String get theyMatch => 'Corrispondono';

  @override
  String get thisRoomHasBeenArchived => 'Questa stanza è stata archiviata.';

  @override
  String get thursday => 'giovedì';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Attiva/disattiva preferito';

  @override
  String get toggleMuted => 'Attiva/disattiva il silenziatore';

  @override
  String get toggleUnread => 'Segna come letto / non letto';

  @override
  String get tooManyRequestsWarning => 'Troppe richieste. Per favore riprova più tardi!';

  @override
  String get transferFromAnotherDevice => 'Trasferimento da un altro dispositivo';

  @override
  String get tryToSendAgain => 'Prova a inviare di nuovo';

  @override
  String get tuesday => 'martedì';

  @override
  String get unavailable => 'Non disponibile';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username ha rimosso il bando di $targetName';
  }

  @override
  String get unblockDevice => 'Sblocca il dispositivo';

  @override
  String get unknownDevice => 'Dispositivo sconosciuto';

  @override
  String get unknownEncryptionAlgorithm => 'Algoritmo di crittografia sconosciuto';

  @override
  String unknownEvent(Object type) {
    return 'Evento sconosciuto «{tipo}»';
  }

  @override
  String get unknownSessionVerify => 'Sessione sconosciuta, verifica';

  @override
  String get unlockChatBackup => 'Sblocca il backup della discussione';

  @override
  String get unmuteChat => 'Riattiva l\'audio della discussione';

  @override
  String get unpin => 'Rimuovi';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount discussioni non lette',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      other: '$unreadEvents messaggi non letti',
    );
  }

  @override
  String get useAmoledTheme => 'Usare i colori compatibili con AMOLED?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username e $count altri stanno scrivendo…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username e $username2 stanno scrivendo…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username sta scrivendo…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username ha lasciato la chat';
  }

  @override
  String get username => 'Nome utente';

  @override
  String get userNotVerified => 'L\'utente non è verificato';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username ha inviato un evento $type';
  }

  @override
  String get userUnknownVerification => 'L\'utente ha uno stato di verifica sconosciuto';

  @override
  String get userVerified => 'L\'utente è verificato';

  @override
  String get unverified => 'Non verificato';

  @override
  String get verified => 'Verificato';

  @override
  String get verifiedSession => 'Sessione verificata con successo!';

  @override
  String get verify => 'Verifica';

  @override
  String get verifyManual => 'Verifica manualmente';

  @override
  String get verifyStart => 'Avvia la verifica';

  @override
  String get verifySuccess => 'Hai verificato con successo!';

  @override
  String get verifyTitle => 'Verifica dell\'altro account';

  @override
  String get verifyUser => 'Verifica l\'utente';

  @override
  String get videoCall => 'Videochiamata';

  @override
  String get visibilityOfTheChatHistory => 'Visibilità della cronologia della discussione';

  @override
  String get visibleForAllParticipants => 'Visibile a tutti i partecipanti';

  @override
  String get visibleForEveryone => 'Visibile a tutti';

  @override
  String get voiceMessage => 'Messaggio vocale';

  @override
  String get waitingPartnerAcceptRequest => 'In attesa che il partner accetti la richiesta…';

  @override
  String get waitingPartnerEmoji => 'In attesa che il partner accetti l\'emoji…';

  @override
  String get waitingPartnerNumbers => 'In attesa che il partner accetti i numeri…';

  @override
  String get wallpaper => 'Immagine di sfondo';

  @override
  String get warning => 'Attenzione!';

  @override
  String get warningEncryptionInBeta => 'La crittografia dall\'inizio alla fine è attualmente in beta! Utilizzala a proprio rischio!';

  @override
  String get wednesday => 'mercoledì';

  @override
  String get welcomeText => 'Benvenuto/a nella messaggistica istantanea più carina della rete Matrix.';

  @override
  String get weSentYouAnEmail => 'Ti abbiamo inviato un\'e-mail';

  @override
  String get whoCanPerformWhichAction => 'Chi può eseguire quale azione';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Chi è autorizzato a unirsi a questo gruppo';

  @override
  String get whyDoYouWantToReportThis => 'Perché vuoi segnalarlo?';

  @override
  String get wipeChatBackup => 'Cancellare il backup della discussione per creare una nuova chiave di sicurezza?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Con questi indirizzi puoi recuperare la tua password se necessario.';

  @override
  String get writeAMessage => 'Scrivi un messaggio…';

  @override
  String get yes => 'Sì';

  @override
  String get you => 'Tu';

  @override
  String get youAreInvitedToThisChat => 'Sei invitato/a a questa chat';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Non stai più partecipando a questa chat';

  @override
  String get youCannotInviteYourself => 'Non puoi invitare te stesso';

  @override
  String get youHaveBeenBannedFromThisChat => 'Sei stato/a bandito/a da questa chat';

  @override
  String get yourChatsAreBeingSynced => 'Your chats are being synced…';

  @override
  String get yourOwnUsername => 'Il tuo nome utente';

  @override
  String get yourPublicKey => 'La tua chiave pubblica';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Verrai connesso/a a $homeserver';
  }

  @override
  String get zoomIn => 'Ingrandisci';

  @override
  String get zoomOut => 'Rimpicciolisci';

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
