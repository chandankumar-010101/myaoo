

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Catalan Valencian (`ca`).
class L10nCa extends L10n {
  L10nCa([String locale = 'ca']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Les contrasenyes no coincideixen!';

  @override
  String get pleaseEnterValidEmail => 'Introduïu una adreça electrònica vàlida.';

  @override
  String get repeatPassword => 'Repetiu la contrasenya';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Seleccioneu almenys $min caràcters.';
  }

  @override
  String get about => 'Quant a';

  @override
  String get accept => 'Accepta';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username ha acceptat la invitació';
  }

  @override
  String get account => 'Compte';

  @override
  String get accountInformation => 'Informació del compte';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username ha activat el xifratge d’extrem a extrem';
  }

  @override
  String get addEmail => 'Afegeix una adreça electrònica';

  @override
  String get addGroupDescription => 'Afegeix descripció de grup';

  @override
  String get addNewFriend => 'Afegeix una amistat';

  @override
  String get addToSpace => 'Afegeix a un espai';

  @override
  String get admin => 'Administració';

  @override
  String get alias => 'àlies';

  @override
  String get all => 'Tot';

  @override
  String get allChats => 'Tots els xats';

  @override
  String get alreadyHaveAnAccount => 'Ja teniu un compte?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName ha respost a la trucada';
  }

  @override
  String get anyoneCanJoin => 'Qualsevol pot unir-se';

  @override
  String get appLock => 'Blocatge de l’aplicació';

  @override
  String get archive => 'Arxiu';

  @override
  String get archivedRoom => 'Sala arxivada';

  @override
  String get areGuestsAllowedToJoin => 'Accés dels usuaris convidats';

  @override
  String get areYouSure => 'N’esteu segur?';

  @override
  String get areYouSureYouWantToLogout => 'Segur que voleu finalitzar la sessió?';

  @override
  String get askSSSSSign => 'Per a poder donar accés a l’altra persona, introduïu la frase de seguretat o clau de recuperació.';

  @override
  String get askSSSSVerify => 'Introduïu la frase de seguretat o clau de recuperació per a verificar la vostra sessió.';

  @override
  String askVerificationRequest(Object username) {
    return 'Voleu acceptar aquesta sol·licitud de verificació de: $username?';
  }

  @override
  String get audioPlayerPause => 'Posa en pausa';

  @override
  String get audioPlayerPlay => 'Reprodueix';

  @override
  String get authentication => 'Autenticació';

  @override
  String get autoplayImages => 'Reprodueix automàticament enganxines i emoticones animades';

  @override
  String get avatarHasBeenChanged => 'L’avatar ha canviat';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'El servidor admet els inicis de sessió:\n${serverVersions}\nPerò l\'aplicació només admet:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Envia en prémer Retorn';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'The homeserver supports the Spec versions:\n${serverVersions}\nBut this app supports only $supportedVersions';
  }

  @override
  String get banFromChat => 'Veta del xat';

  @override
  String get banned => 'Vetat';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username ha vetat a $targetName';
  }

  @override
  String get blockDevice => 'Bloca el dispositiu';

  @override
  String get blocked => 'Blocat';

  @override
  String get botMessages => 'Missatges del bot';

  @override
  String get bubbleSize => 'Mida de la bombolla';

  @override
  String get cachedKeys => 'Claus desades a la memòria cau';

  @override
  String get cancel => 'Cancel·la';

  @override
  String cantOpenUri(Object uri) {
    return 'No es pot obrir l’URI $uri';
  }

  @override
  String get changeDeviceName => 'Canvia el nom del dispositiu';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username ha canviat la imatge del xat';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username ha canviat la descripció del xat a: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username ha canviat el nom del xat a: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username ha canviat els permisos del xat';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username ha canviat el seu àlies a: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username ha canviat les normes d’accés dels convidats';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username ha canviat les normes d’accés dels convidats a: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username ha canviat la visibilitat de l’historial';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username ha canviat la visibilitat de l’historial a: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username ha canviat les normes d’unió';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username ha canviat les normes d’unió a: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username ha canviat la seva imatge de perfil';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username ha canviat l’àlies de la sala';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username ha canviat l’enllaç per a convidar';
  }

  @override
  String get changelog => 'Registre de canvis';

  @override
  String get changePassword => 'Canvia la contrasenya';

  @override
  String get changesHaveBeenSaved => 'S’han desat els canvis';

  @override
  String get changeTheHomeserver => 'Canvia el servidor';

  @override
  String get changeTheme => 'Canvia l’estil';

  @override
  String get changeTheNameOfTheGroup => 'Canvia el nom del grup';

  @override
  String get changeTheServer => 'Canvia el servidor';

  @override
  String get changeWallpaper => 'Canvia el fons';

  @override
  String get changeYourAvatar => 'Canvia l’avatar';

  @override
  String get channelCorruptedDecryptError => 'El xifratge s’ha corromput';

  @override
  String get chat => 'Xat';

  @override
  String get yourUserId => 'El vostre id. d’usuari:';

  @override
  String get setupChatBackup => 'Configura la còpia de seguretat dels xats';

  @override
  String get iWroteDownTheKey => 'He escrit la clau';

  @override
  String get yourChatBackupHasBeenSetUp => 'S’ha configurat la còpia de seguretat del xat.';

  @override
  String get chatBackup => 'Còpia de seguretat del xat';

  @override
  String get setupChatBackupDescription => 'Hem generat una clau de seguretat per a protegir els vostres missatges.\nConserveu-la en un lloc segur, com ara un gestor de contrasenyes.';

  @override
  String get chatBackupDescription => 'La còpia de seguretat dels xats és protegida amb una clau. Assegureu-vos de no perdre-la.';

  @override
  String get chatDetails => 'Detalls del xat';

  @override
  String get chatHasBeenAddedToThisSpace => 'El xat s’ha afegit a aquest espai';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'El xat s’ha tret d’aquest espai';

  @override
  String get chats => 'Xats';

  @override
  String get chooseAStrongPassword => 'Trieu una contrasenya forta';

  @override
  String get chooseAUsername => 'Trieu un nom d’usuari';

  @override
  String get clearArchive => 'Neteja l’arxiu';

  @override
  String get clearText => 'Neteja el text';

  @override
  String get close => 'Tanca';

  @override
  String get commandHint_ban => 'Prohibeix l\'usuari indicat d\'aquesta sala';

  @override
  String get commandHint_clearcache => 'Neteja la memòria cau';

  @override
  String get commandHint_create => 'Crea un xat de grup buit\nUsa --no-encryption per desactivar l\'encriptatge';

  @override
  String get commandHint_discardsession => 'Descarta la sessió';

  @override
  String get commandHint_dm => 'Inicia un xat directe\nUsa --no-encryption per desactivar l\'encriptatge';

  @override
  String get commandHint_html => 'Envia text en format HTML';

  @override
  String get commandHint_invite => 'Convida l\'usuari indicat a aquesta sala';

  @override
  String get commandHint_join => 'Uneix-te a la sala';

  @override
  String get commandHint_kick => 'Elimina l\'usuari indicat d\'aquesta sala';

  @override
  String get commandHint_leave => 'Abandona aquesta sala';

  @override
  String get commandHint_me => 'Descriviu-vos';

  @override
  String get commandHint_myroomavatar => 'Establiu la imatge per a aquesta sala (per mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Estableix el teu àlies per a aquesta sala';

  @override
  String get commandHint_op => 'Estableix el nivell d\'autoritat de l\'usuari (per defecte: 50)';

  @override
  String get commandHint_plain => 'Envia text sense format';

  @override
  String get commandHint_react => 'Envia una resposta com a reacció';

  @override
  String get commandHint_send => 'Envia text';

  @override
  String get commandHint_unban => 'Unban the given user from this room';

  @override
  String get commandInvalid => 'L’ordre no és vàlida';

  @override
  String commandMissing(Object command) {
    return '$command no és una ordre.';
  }

  @override
  String get compareEmojiMatch => 'Compareu i assegureu-vos que els emojis següents coincideixen amb els de l’altre dispositiu:';

  @override
  String get compareNumbersMatch => 'Compareu i assegureu-vos que els nombres següents coincideixen amb els de l’altre dispositiu:';

  @override
  String get configureChat => 'Configura el xat';

  @override
  String get confirm => 'Confirma';

  @override
  String get connect => 'Connecta';

  @override
  String get connectionAttemptFailed => 'Ha fallat l’intent de connexió';

  @override
  String get contactHasBeenInvitedToTheGroup => 'El contacte ha estat convidat al grup';

  @override
  String get containsDisplayName => 'Conté l\'àlies';

  @override
  String get containsUserName => 'Conté el nom d’usuari';

  @override
  String get contentHasBeenReported => 'El contingut s’ha denunciat als administradors del servidor';

  @override
  String get contentViewer => 'Visualitzador de continguts';

  @override
  String get copiedToClipboard => 'S’ha copiat al porta-retalls';

  @override
  String get copy => 'Copia';

  @override
  String get copyToClipboard => 'Copia al porta-retalls';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'No s\'ha pogut desxifrar el missatge: $error';
  }

  @override
  String get couldNotSetAvatar => 'No s\'ha pogut establir la imatge de perfil';

  @override
  String get couldNotSetDisplayname => 'No s’ha pogut definir l\'àlies';

  @override
  String countParticipants(Object count) {
    return '$count participants';
  }

  @override
  String get create => 'Crea';

  @override
  String get createAccountNow => 'Crea un compte ara';

  @override
  String createdTheChat(Object username) {
    return '$username ha creat el xat';
  }

  @override
  String get createNewGroup => 'Crea un grup nou';

  @override
  String get createNewSpace => 'Espai nou';

  @override
  String get crossSigningDisabled => 'Signatura creuada desactivada';

  @override
  String get crossSigningEnabled => 'Signatura creuada activada';

  @override
  String get currentlyActive => 'Actiu actualment';

  @override
  String get darkTheme => 'Fosc';

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
  String get deactivateAccountWarning => 'Es desactivarà el vostre compte d’usuari. Això no es pot desfer! Esteu segur de fer-ho?';

  @override
  String get defaultPermissionLevel => 'Nivell de permisos per defecte';

  @override
  String get delete => 'Suprimeix';

  @override
  String get deleteAccount => 'Suprimeix el compte';

  @override
  String get deleteMessage => 'Suprimeix el missatge';

  @override
  String get deny => 'Denega';

  @override
  String get device => 'Dispositiu';

  @override
  String get deviceId => 'Id. de dispositiu';

  @override
  String get devices => 'Dispositius';

  @override
  String get deviceVerifyDescription => 'El xifratge només és segur quan tots els dispositius s’han verificat.';

  @override
  String get directChats => 'Xats directes';

  @override
  String get discardPicture => 'Descarta la imatge';

  @override
  String get discover => 'Descobreix';

  @override
  String get discoverGroups => 'Descobreix grups';

  @override
  String get displaynameHasBeenChanged => 'Ha canviat l\'àlies';

  @override
  String get donate => 'Donació';

  @override
  String get dontAskAgain => 'Cancel·la i no m’ho tornis a preguntar';

  @override
  String get downloadFile => 'Baixa el fitxer';

  @override
  String get edit => 'Edita';

  @override
  String get editBlockedServers => 'Edita els servidors bloquejats';

  @override
  String get editChatPermissions => 'Edita els permisos del xat';

  @override
  String get editDisplayname => 'Edita l\'àlies';

  @override
  String get editJitsiInstance => 'Canvia la instància de Jitsi';

  @override
  String get editRoomAliases => 'Edit room aliases';

  @override
  String get editRoomAvatar => 'Edit room avatar';

  @override
  String get emoteExists => 'L\'emoticona ja existeix!';

  @override
  String get emoteInvalid => 'Codi d\'emoticona invàlid!';

  @override
  String get emotePacks => 'Paquet d\'emoticones de la sala';

  @override
  String get emoteSettings => 'Paràmetres de les emoticones';

  @override
  String get emoteShortcode => 'Codi d\'emoticona';

  @override
  String get emoteWarnNeedToPick => 'Has de seleccionar un codi d\'emoticona i una imatge!';

  @override
  String get emptyChat => 'Xat buit';

  @override
  String get enableChatBackup => 'Activeu la còpia de seguretat del xat per a mai perdre accés a les converses.';

  @override
  String get enableEmotesGlobally => 'Activa el paquet d\'emoticones global';

  @override
  String get enableEncryption => 'Activa el xifratge';

  @override
  String get enableEncryptionWarning => 'No podreu desactivar el xifratge mai més. N’esteu segur?';

  @override
  String get encrypted => 'Xifrat';

  @override
  String get encryption => 'Xifratge';

  @override
  String get encryptionAlgorithm => 'Algorisme de xifratge';

  @override
  String get encryptionNotEnabled => 'El xifratge no s’ha activat';

  @override
  String get end2endEncryptionSettings => 'Paràmetres del xifratge d’extrem a extrem';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName ha finalitzat la trucada';
  }

  @override
  String get enterAGroupName => 'Introduïu un nom de grup';

  @override
  String get enterAnEmailAddress => 'Introduïu una adreça electrònica';

  @override
  String get enterASpacepName => 'Introduïu un nom d’espai';

  @override
  String get enterAUsername => 'Introduïu un nom d’usuari';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'Introdueix el teu servidor';

  @override
  String errorObtainingLocation(Object error) {
    return 'S’ha produït un error en obtenir la ubicació: $error';
  }

  @override
  String get everythingReady => 'Tot és a punt!';

  @override
  String get extremeOffensive => 'Extremadament ofensiu';

  @override
  String get fileName => 'Nom del fitxer';

  @override
  String get fileSize => 'Mida del fitxer';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Mida de la lletra';

  @override
  String get forward => 'Reenvia';

  @override
  String get friday => 'divendres';

  @override
  String get friends => 'Amistats';

  @override
  String get fromJoining => 'Des de la unió';

  @override
  String get fromTheInvitation => 'Des de la invitació';

  @override
  String get goToTheNewRoom => 'Ves a la sala nova';

  @override
  String get group => 'Grup';

  @override
  String get groupDescription => 'Descripció de grup';

  @override
  String get groupDescriptionHasBeenChanged => 'Descripció de grup canviada';

  @override
  String get groupIsPublic => 'El grup és públic';

  @override
  String get groups => 'Grups';

  @override
  String groupWith(Object displayname) {
    return 'Grup amb $displayname';
  }

  @override
  String get guestsAreForbidden => 'Els convidats no poden unir-se';

  @override
  String get guestsCanJoin => 'Els convidats es poden unir';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username ha retirat la invitació de $targetName';
  }

  @override
  String get help => 'Ajuda';

  @override
  String get hideRedactedEvents => 'Amaga els esdeveniments velats';

  @override
  String get hideUnknownEvents => 'Amaga els esdeveniments desconeguts';

  @override
  String get homeserverIsNotCompatible => 'El servidor no és compatible';

  @override
  String get howOffensiveIsThisContent => 'Com d’ofensiu és aquest contingut?';

  @override
  String get id => 'Id.';

  @override
  String get identity => 'Identitat';

  @override
  String get ignore => 'Ignora';

  @override
  String get ignoredUsers => 'Usuaris ignorats';

  @override
  String get ignoreListDescription => 'Pots ignorar els usuaris que et molestin. No rebràs els missatges ni les invitacions dels usuaris que es trobin a la teva llista personal d\'ignorats.';

  @override
  String get ignoreUsername => 'Ignora nom d\'usuari';

  @override
  String get iHaveClickedOnLink => 'He fet clic a l\'enllaç';

  @override
  String get incorrectPassphraseOrKey => 'Frase de seguretat o clau de recuperació incorrecta';

  @override
  String get inoffensive => 'Inoffensive';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get inviteContact => 'Convida contacte';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Convida contacte a $groupName';
  }

  @override
  String get invited => 'Convidat';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username ha convidat a $targetName';
  }

  @override
  String get invitedUsersOnly => 'Només usuaris convidats';

  @override
  String get inviteForMe => 'Invitació per a mi';

  @override
  String inviteText(Object username, Object link) {
    return '$username t\'ha convidat a FluffyChat.\n1. Instal·la FluffyChat: https://fluffychat.im\n2. Registra\'t o inicia sessió\n3. Obre l\'enllaç d\'invitació: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'És correcta la següent clau de dispositiu?';

  @override
  String get isTyping => 'escrivint…';

  @override
  String joinedTheChat(Object username) {
    return '$username s\'ha unit al xat';
  }

  @override
  String get joinRoom => 'Uneix-te a la sala';

  @override
  String get keysCached => 'Les claus estan desades a la memòria cau';

  @override
  String get keysMissing => 'Falten les claus';

  @override
  String kicked(Object username, Object targetName) {
    return '$username ha expulsat a $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username ha expulsat i vetat a $targetName';
  }

  @override
  String get kickFromChat => 'Expulsa del xat';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Actiu per última vegada: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Última direcció IP';

  @override
  String get lastSeenLongTimeAgo => 'Vist va molt de temps';

  @override
  String get leave => 'Abandona';

  @override
  String get leftTheChat => 'Ha marxat del xat';

  @override
  String get license => 'Llicència';

  @override
  String get lightTheme => 'Clar';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Carrega $count participants més';
  }

  @override
  String get loadingPleaseWait => 'S’està carregant… Espereu.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Carrega’n més…';

  @override
  String get locationDisabledNotice => 'S’han desactivat els serveis d’ubicació. Activeu-los per a compartir la vostra ubicació.';

  @override
  String get locationPermissionDeniedNotice => 'S’ha rebutjat el permís d’ubicació. Atorgueu-lo per a poder compartir la vostra ubicació.';

  @override
  String get login => 'Inicia la sessió';

  @override
  String logInTo(Object homeserver) {
    return 'Inicia sessió a $homeserver';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => 'Finalitza la sessió';

  @override
  String get makeAModerator => 'Crea un moderador';

  @override
  String get makeAnAdmin => 'Crea un administrador';

  @override
  String get makeSureTheIdentifierIsValid => 'Assegura\'t que l\'identificador sigui vàlid';

  @override
  String get memberChanges => 'Canvis de participants';

  @override
  String get mention => 'Menciona';

  @override
  String get messages => 'Missatges';

  @override
  String get messageWillBeRemovedWarning => 'El missatge s\'eliminarà per a tots els participants';

  @override
  String get moderator => 'Moderador';

  @override
  String get monday => 'dilluns';

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
  String get muteChat => 'Silencia el xat';

  @override
  String get needPantalaimonWarning => 'Tingueu en compte que, ara per ara, us cal el Pantalaimon per a poder utilitzar el xifratge d’extrem a extrem.';

  @override
  String get newChat => 'Xat nou';

  @override
  String get newMessageInFluffyChat => 'Missatge nou al FluffyChat';

  @override
  String get newVerificationRequest => 'Nova sol·licitud de verificació!';

  @override
  String get next => 'Següent';

  @override
  String get no => 'No';

  @override
  String get noConnectionToTheServer => 'Sense connexió al servidor';

  @override
  String get noCrossSignBootstrap => 'De moment FluffyChat no és compatible amb la signatura creuada. Activa-la des d\'Element.';

  @override
  String get noDescription => 'Cap descripció';

  @override
  String get noEmotesFound => 'No s’ha trobat cap emoticona. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Només podreu activar el xifratge quan la sala ja no sigui accessible públicament.';

  @override
  String get noGoogleServicesWarning => 'Sembla que no teniu els Serveis de Google al telèfon. Això és una bona decisió respecte a la vostra privadesa! Per a rebre notificacions automàtiques del FluffyChat, us recomanem utilitzar https://microg.org/ o https://unifiedpush.org/.';

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
  String get scanQrCode => 'Escaneja un codi QR';

  @override
  String get noMegolmBootstrap => 'De moment FluffyChat no és compatible amb la còpia de seguretat de claus en línia. Activa-la des d\'Element.';

  @override
  String get none => 'Cap';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'El vostre identificador d’usuari tindrà el format @nom-d’usuari:nom-del-servidor';

  @override
  String get noPasswordRecoveryDescription => 'Encara no heu afegit cap mètode per a poder recuperar la contrasenya.';

  @override
  String get noPermission => 'Sense permís';

  @override
  String get noPublicRoomsFound => 'No s’ha trobat cap sala pública…';

  @override
  String get noRoomsFound => 'No s’ha trobat cap sala…';

  @override
  String get noStatusesFound => 'Encara no s’ha trobat cap estat.';

  @override
  String get notifications => 'Notificacions';

  @override
  String get notificationsEnabledForThisAccount => 'Notificacions activades per a aquest compte';

  @override
  String get notSupportedInWeb => 'No compatible amb la versió web';

  @override
  String numberSelected(Object number) {
    return '$number seleccionat/s';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count usuaris escrivint…';
  }

  @override
  String get obtainingLocation => 'S’està obtenint la ubicació…';

  @override
  String get offensive => 'Offensive';

  @override
  String get offline => 'Fora de línia';

  @override
  String get ok => 'D\'acord';

  @override
  String get online => 'En línia';

  @override
  String get onlineKeyBackupDisabled => 'La còpia de seguretat de claus en línia està desactivada';

  @override
  String get onlineKeyBackupEnabled => 'La còpia de seguretat de claus en línia està activada';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => 'Alguna cosa ha anat malament…';

  @override
  String get openAppToReadMessages => 'Obre l\'aplicació per llegir els missatges';

  @override
  String get openCamera => 'Obre la càmera';

  @override
  String get openVideoCamera => 'Open camera for a video';

  @override
  String get oneClientLoggedOut => 'One of your clients has been logged out';

  @override
  String get addAccount => 'Afegeix un compte';

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
  String get link => 'Enllaç';

  @override
  String get serverRequiresEmail => 'This server needs to validate your email address for registration.';

  @override
  String get optionalGroupName => '(Opcional) Nom del grup';

  @override
  String get or => 'O';

  @override
  String get participant => 'Participant';

  @override
  String get participatingUserDevices => 'Dispositius d\'usuari participant';

  @override
  String get passphraseOrKey => 'contrasenya o clau de recuperació';

  @override
  String get password => 'Contrasenya';

  @override
  String get passwordForgotten => 'Contrasenya oblidada';

  @override
  String get passwordHasBeenChanged => 'La contrasenya ha canviat';

  @override
  String get passwordRecovery => 'Recuperació de contrassenya';

  @override
  String get people => 'Gent';

  @override
  String get pickImage => 'Selecciona una imatge';

  @override
  String get pin => 'Fixa';

  @override
  String play(Object fileName) {
    return 'Reproduir $fileName';
  }

  @override
  String get pleaseChoose => 'Please choose';

  @override
  String get pleaseChooseAPasscode => 'Tria un codi d\'accés';

  @override
  String get pleaseChooseAUsername => 'Tria un nom d\'usuari';

  @override
  String get pleaseClickOnLink => 'Fes clic a l\'enllaç del correu i, després, segueix.';

  @override
  String get pleaseEnter4Digits => 'Introdueix 4 dígits o deixa-ho buit per desactivar el bloqueig.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Introdueix un identificador de Matrix.';

  @override
  String get pleaseEnterSecurityKey => 'Please enter your security key:';

  @override
  String get pleaseEnterYourPassword => 'Introdueix la teva contrasenya';

  @override
  String get pleaseEnterYourPin => 'Please enter your pin';

  @override
  String get pleaseEnterYourUsername => 'Introdueix el teu nom d\'usuari';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Seguiu les instruccions al lloc web i toqueu «Següent».';

  @override
  String get privacy => 'Privadesa';

  @override
  String get publicGroups => 'Grups públics';

  @override
  String get publicKey => 'Clau pública';

  @override
  String get publicRooms => 'Sales públiques';

  @override
  String get publicSpace => 'Espai públic';

  @override
  String get pushRules => 'Regles push';

  @override
  String get reason => 'Raó';

  @override
  String get recording => 'Enregistrant';

  @override
  String redactedAnEvent(Object username) {
    return '$username ha velat un esdeveniment';
  }

  @override
  String get redactMessage => 'Vela el missatge';

  @override
  String get register => 'Register';

  @override
  String get reject => 'Rebutja';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username ha rebutjat la invitació';
  }

  @override
  String get rejoin => 'Torna-t\'hi a unir';

  @override
  String get remove => 'Elimina';

  @override
  String get removeAllOtherDevices => 'Elimina tots els altres dispositius';

  @override
  String removedBy(Object username) {
    return 'Eliminat per $username';
  }

  @override
  String get removeDevice => 'Elimina dispositiu';

  @override
  String get unbanFromChat => 'Desfés l\'expulsió';

  @override
  String get removeMessage => 'Elimina missatge';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get renderRichContent => 'Mostra el contingut enriquit dels missatges';

  @override
  String get replaceRoomWithNewerVersion => 'Replace room with newer version';

  @override
  String get reply => 'Respon';

  @override
  String get reportMessage => 'Denuncia el missatge';

  @override
  String get requestPermission => 'Sol·licita permís';

  @override
  String get requestToReadOlderMessages => 'Sol·licita llegir els missatges antics';

  @override
  String get revokeAllPermissions => 'Revoca tots els permisos';

  @override
  String get roomHasBeenUpgraded => 'La sala s\'ha actualitzat';

  @override
  String get roomVersion => 'Versió de la sala';

  @override
  String get saturday => 'dissabte';

  @override
  String savedFileAs(Object filename) {
    return 'S’ha desat el fitxer com a $filename';
  }

  @override
  String get saveFile => 'Desa el fitxer';

  @override
  String get saveFileToFolder => 'Desa el fitxer en aquesta carpeta';

  @override
  String get search => 'Cerca';

  @override
  String get searchForAChat => 'Cerca un xat';

  @override
  String get security => 'Seguretat';

  @override
  String get securityKey => 'Clau de seguretat';

  @override
  String get securityKeyLost => 'Heu perduda la clau de seguretat?';

  @override
  String seenByUser(Object username) {
    return 'Vist per $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vist per $username i $count més',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Vist per $username i $username2';
  }

  @override
  String get send => 'Envia';

  @override
  String get sendAMessage => 'Envia un missatge';

  @override
  String get sendAsText => 'Envia com a text';

  @override
  String get sendAudio => 'Envia un àudio';

  @override
  String get sendBugReports => 'Permet l\'enviament d\'informes d\'error amb sentry.io';

  @override
  String get sendFile => 'Envia un fitxer';

  @override
  String get sendImage => 'Envia una imatge';

  @override
  String get sendMessages => 'Envia missatges';

  @override
  String get sendOriginal => 'Envia l’original';

  @override
  String get sendSticker => 'Envia adhesiu';

  @override
  String get sendVideo => 'Envia un vídeo';

  @override
  String sentAFile(Object username) {
    return '$username ha enviat un fitxer';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username ha enviat un àudio';
  }

  @override
  String sentAPicture(Object username) {
    return '$username ha enviat una imatge';
  }

  @override
  String sentASticker(Object username) {
    return '$username ha enviat un adhesiu';
  }

  @override
  String sentAVideo(Object username) {
    return '$username ha enviat un vídeo';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName ha enviat informació de trucada';
  }

  @override
  String get sentryInfo => 'Informació sobre la vostra privadesa: https://sentry.io/security/';

  @override
  String get sessionVerified => 'S’ha verificat la sessió';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Defineix una foto de perfil';

  @override
  String get setAsCanonicalAlias => 'Defineix com a àlies principal';

  @override
  String get setCustomEmotes => 'Defineix emoticones personalitzades';

  @override
  String get setGroupDescription => 'Defineix la descripció del grup';

  @override
  String get setInvitationLink => 'Defineix l’enllaç per a convidar';

  @override
  String get setPermissionsLevel => 'Defineix el nivell de permisos';

  @override
  String get setStatus => 'Defineix l’estat';

  @override
  String get settings => 'Paràmetres';

  @override
  String get share => 'Comparteix';

  @override
  String sharedTheLocation(Object username) {
    return '$username n’ha compartit la ubicació';
  }

  @override
  String get shareLocation => 'Comparteix la ubicació';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Mostra la contrasenya';

  @override
  String get signUp => 'Registre';

  @override
  String get singlesignon => 'Autenticació única';

  @override
  String get skip => 'Omet';

  @override
  String get soundVibrationLedColor => 'So, vibració i color de LED';

  @override
  String get sourceCode => 'Codi font';

  @override
  String get spaceIsPublic => 'L’espai és públic';

  @override
  String get spaceName => 'Nom de l’espai';

  @override
  String startedACall(Object senderName) {
    return '$senderName ha iniciat una trucada';
  }

  @override
  String get startYourFirstChat => 'Creeu el vostre primer xat ara mateix! 🙂\n- Feu clic al botó \'Nou xat\'\n- Escanegeu el codi QR d’un conegut\n- Gaudiu del xat';

  @override
  String get status => 'Estat';

  @override
  String get statusExampleMessage => 'Com us sentiu avui?';

  @override
  String get submit => 'Envia';

  @override
  String get sunday => 'diumenge';

  @override
  String get synchronizingPleaseWait => 'S’està sincronitzant… Espereu.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get tapOnDeviceToVerify => 'Toqueu un dispositiu per a verificar-lo';

  @override
  String get tapToShowImage => 'Toqueu per a mostrar la imatge';

  @override
  String get tapToShowMenu => 'Toqueu per a mostrar el menú';

  @override
  String get theyDontMatch => 'No coincideixen';

  @override
  String get theyMatch => 'Coincideixen';

  @override
  String get thisRoomHasBeenArchived => 'Aquesta sala ha estat arxivada.';

  @override
  String get thursday => 'dijous';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Commuta l’estat «preferit»';

  @override
  String get toggleMuted => 'Commuta l’estat «silenci»';

  @override
  String get toggleUnread => 'Marca com a llegit/sense llegir';

  @override
  String get tooManyRequestsWarning => 'Massa sol·licituds. Torna-ho a provar més tard!';

  @override
  String get transferFromAnotherDevice => 'Transfereix des d’un altre dispositiu';

  @override
  String get tryToSendAgain => 'Intenta tornar a enviar';

  @override
  String get tuesday => 'dimarts';

  @override
  String get unavailable => 'No disponible';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username ha tret el veto a $targetName';
  }

  @override
  String get unblockDevice => 'Desbloqueja dispositiu';

  @override
  String get unknownDevice => 'Dispositiu desconegut';

  @override
  String get unknownEncryptionAlgorithm => 'L’algorisme de xifratge és desconegut';

  @override
  String unknownEvent(Object type) {
    return 'Esdeveniment desconegut \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'La sessió és desconeguda; verifiqueu-la';

  @override
  String get unlockChatBackup => 'Desbloca la còpia de seguretat del xat';

  @override
  String get unmuteChat => 'Deixa de silenciar el xat';

  @override
  String get unpin => 'Deixa de fixar';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 xat no llegit',
      other: '$unreadCount xats no llegits',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 missatge no llegit',
      other: '$unreadEvents missatges no llegits',
    );
  }

  @override
  String get useAmoledTheme => 'Voleu utilitzar colors adients per a AMOLED?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username i $count més estan escrivint…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username i $username2 estan escrivint…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username està escrivint…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username ha marxat del xat';
  }

  @override
  String get username => 'Nom d’usuari';

  @override
  String get userNotVerified => 'L’usuari no s’ha verificat';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username ha enviat un esdeveniment $type';
  }

  @override
  String get userUnknownVerification => 'L’estat de verificació de l’usuari és desconegut';

  @override
  String get userVerified => 'L’usuari s’ha verificat';

  @override
  String get unverified => 'No verificat';

  @override
  String get verified => 'Verificat';

  @override
  String get verifiedSession => 'Sessió verificada amb èxit!';

  @override
  String get verify => 'Verifica';

  @override
  String get verifyManual => 'Verifica manualment';

  @override
  String get verifyStart => 'Inicia la verificació';

  @override
  String get verifySuccess => 'T\'has verificat correctament!';

  @override
  String get verifyTitle => 'Verificant un altre compte';

  @override
  String get verifyUser => 'Verifica usuari';

  @override
  String get videoCall => 'Videotrucada';

  @override
  String get visibilityOfTheChatHistory => 'Visibilitat de l’historial del xat';

  @override
  String get visibleForAllParticipants => 'Visible per a tots els participants';

  @override
  String get visibleForEveryone => 'Visible per a tothom';

  @override
  String get voiceMessage => 'Missatge de veu';

  @override
  String get waitingPartnerAcceptRequest => 'S’està esperant que l’altre accepti la sol·licitud…';

  @override
  String get waitingPartnerEmoji => 'S’està esperant que l’altre accepti l’emoji…';

  @override
  String get waitingPartnerNumbers => 'S’està esperant que l’altre accepti els nombres…';

  @override
  String get wallpaper => 'Fons';

  @override
  String get warning => 'Atenció!';

  @override
  String get warningEncryptionInBeta => 'El xifrat d\'extrem a extrem es troba actualment en proves (Beta. Utilitza\'l sota la teva responsabilitat!';

  @override
  String get wednesday => 'dimecres';

  @override
  String get welcomeText => 'Us donem la benvinguda a l’aplicació de missatgeria instantània més maca de la xarxa Matrix.';

  @override
  String get weSentYouAnEmail => 'Us hem enviat un missatge de correu electrònic';

  @override
  String get whoCanPerformWhichAction => 'Qui pot efectuar quina acció';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Qui pot unir-se a aquest grup';

  @override
  String get whyDoYouWantToReportThis => 'Per què voleu denunciar això?';

  @override
  String get wipeChatBackup => 'Voleu suprimir la còpia de seguretat dels xats per a crear una clau de seguretat nova?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Amb aquestes adreces, si ho necessiteu, podeu recuperar la vostra contrasenya.';

  @override
  String get writeAMessage => 'Escriviu un missatge…';

  @override
  String get yes => 'Sí';

  @override
  String get you => 'Vós';

  @override
  String get youAreInvitedToThisChat => 'Us han convidat a aquest xat';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Ja no participeu en aquest xat';

  @override
  String get youCannotInviteYourself => 'No us podeu convidar a vós mateix';

  @override
  String get youHaveBeenBannedFromThisChat => 'Has estat vetat d\'aquest xat';

  @override
  String get yourChatsAreBeingSynced => 'S’estan sincronitzant els vostres xats…';

  @override
  String get yourOwnUsername => 'El vostre nom d’usuari';

  @override
  String get yourPublicKey => 'La vostra clau pública';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Us connectareu a $homeserver';
  }

  @override
  String get zoomIn => 'Apropa';

  @override
  String get zoomOut => 'Allunya';

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
