

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Armenian (`hy`).
class L10nHy extends L10n {
  L10nHy([String locale = 'hy']) : super(locale);

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
  String get about => 'Հավելվածի մասին';

  @override
  String get accept => 'Ընդունել';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username-ը ընդունել է հրավերը';
  }

  @override
  String get account => 'Հաշիվ';

  @override
  String get accountInformation => 'Տեղեկություններ հաշվի մասին';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username-ը ակտիվացրել է end to end կոդավորումը';
  }

  @override
  String get addEmail => 'Add email';

  @override
  String get addGroupDescription => 'Ավելացնել խմբի նկարագրություն';

  @override
  String get addNewFriend => 'Add new friend';

  @override
  String get addToSpace => 'Add to class';

  @override
  String get admin => 'Համակարգող';

  @override
  String get alias => 'կեղծանուն';

  @override
  String get all => 'All';

  @override
  String get allChats => 'All chats';

  @override
  String get alreadyHaveAnAccount => 'Արդեն հաշի՞վ ունեք';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName answered the call';
  }

  @override
  String get anyoneCanJoin => 'Յուրաքանչյուրը կարող է միանալ';

  @override
  String get appLock => 'App lock';

  @override
  String get archive => 'Արխիվ';

  @override
  String get archivedRoom => 'Արխիվացված սենյակ';

  @override
  String get areGuestsAllowedToJoin => 'Արդյո՞ք հյուր օգտատերերին թույլատրվում է միանալ';

  @override
  String get areYouSure => 'Համոզվա՞ծ եք';

  @override
  String get areYouSureYouWantToLogout => 'Are you sure you want to log out?';

  @override
  String get askSSSSSign => '';

  @override
  String get askSSSSVerify => '';

  @override
  String askVerificationRequest(Object username) {
    return '';
  }

  @override
  String get audioPlayerPause => 'Pause';

  @override
  String get audioPlayerPlay => 'Play';

  @override
  String get authentication => '';

  @override
  String get autoplayImages => 'Automatically play animated stickers and emotes';

  @override
  String get avatarHasBeenChanged => '';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'The homeserver supports the login types:\n${serverVersions}\nBut this app supports only:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Send on enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'The homeserver supports the Spec versions:\n${serverVersions}\nBut this app supports only $supportedVersions';
  }

  @override
  String get banFromChat => '';

  @override
  String get banned => '';

  @override
  String bannedUser(Object username, Object targetName) {
    return '';
  }

  @override
  String get blockDevice => '';

  @override
  String get blocked => 'Blocked';

  @override
  String get botMessages => 'Bot messages';

  @override
  String get bubbleSize => 'Bubble size';

  @override
  String get cachedKeys => '';

  @override
  String get cancel => '';

  @override
  String cantOpenUri(Object uri) {
    return 'Can\'t open the URI $uri';
  }

  @override
  String get changeDeviceName => 'Change device name';

  @override
  String changedTheChatAvatar(Object username) {
    return '';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '';
  }

  @override
  String get changelog => '';

  @override
  String get changePassword => 'Change password';

  @override
  String get changesHaveBeenSaved => 'Changes have been saved';

  @override
  String get changeTheHomeserver => '';

  @override
  String get changeTheme => '';

  @override
  String get changeTheNameOfTheGroup => '';

  @override
  String get changeTheServer => '';

  @override
  String get changeWallpaper => '';

  @override
  String get changeYourAvatar => 'Change your avatar';

  @override
  String get channelCorruptedDecryptError => '';

  @override
  String get chat => '';

  @override
  String get yourUserId => 'Your user ID:';

  @override
  String get setupChatBackup => 'Set up chat backup';

  @override
  String get iWroteDownTheKey => 'I wrote down the key';

  @override
  String get yourChatBackupHasBeenSetUp => 'Your chat backup has been set up.';

  @override
  String get chatBackup => 'Chat backup';

  @override
  String get setupChatBackupDescription => 'To protect your messages, we have generated a security key for you.\nPlease keep this in a safe place, such as a password manager.';

  @override
  String get chatBackupDescription => 'Your chat backup is secured with a security key. Please make sure you don\'t lose it.';

  @override
  String get chatDetails => '';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat has been added to this class';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat has been removed from this class';

  @override
  String get chats => 'Chats';

  @override
  String get chooseAStrongPassword => '';

  @override
  String get chooseAUsername => '';

  @override
  String get clearArchive => 'Clear archive';

  @override
  String get clearText => 'Clear text';

  @override
  String get close => '';

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
  String get compareEmojiMatch => '';

  @override
  String get compareNumbersMatch => '';

  @override
  String get configureChat => 'Configure chat';

  @override
  String get confirm => '';

  @override
  String get connect => '';

  @override
  String get connectionAttemptFailed => '';

  @override
  String get contactHasBeenInvitedToTheGroup => '';

  @override
  String get containsDisplayName => 'Contains display name';

  @override
  String get containsUserName => 'Contains username';

  @override
  String get contentHasBeenReported => 'The content has been reported to the server admins';

  @override
  String get contentViewer => '';

  @override
  String get copiedToClipboard => '';

  @override
  String get copy => '';

  @override
  String get copyToClipboard => 'Copy to clipboard';

  @override
  String couldNotDecryptMessage(Object error) {
    return '';
  }

  @override
  String get couldNotSetAvatar => '';

  @override
  String get couldNotSetDisplayname => '';

  @override
  String countParticipants(Object count) {
    return '';
  }

  @override
  String get create => '';

  @override
  String get createAccountNow => '';

  @override
  String createdTheChat(Object username) {
    return '';
  }

  @override
  String get createNewGroup => '';

  @override
  String get createNewSpace => 'New class';

  @override
  String get crossSigningDisabled => '';

  @override
  String get crossSigningEnabled => '';

  @override
  String get currentlyActive => '';

  @override
  String get darkTheme => '';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '';
  }

  @override
  String dateWithoutYear(Object month, Object day) {
    return '';
  }

  @override
  String dateWithYear(Object year, Object month, Object day) {
    return '';
  }

  @override
  String get deactivateAccountWarning => 'This will deactivate your user account. This can not be undone! Are you sure?';

  @override
  String get defaultPermissionLevel => 'Default permission level';

  @override
  String get delete => '';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteMessage => '';

  @override
  String get deny => '';

  @override
  String get device => '';

  @override
  String get deviceId => 'Device ID';

  @override
  String get devices => '';

  @override
  String get deviceVerifyDescription => 'The encryption is only secure when all devices have been verified.';

  @override
  String get directChats => 'Direct Chats';

  @override
  String get discardPicture => '';

  @override
  String get discover => 'Discover';

  @override
  String get discoverGroups => 'Discover groups';

  @override
  String get displaynameHasBeenChanged => '';

  @override
  String get donate => '';

  @override
  String get dontAskAgain => 'Cancel and don\'t ask again';

  @override
  String get downloadFile => '';

  @override
  String get edit => 'Edit';

  @override
  String get editBlockedServers => 'Edit blocked servers';

  @override
  String get editChatPermissions => 'Edit chat permissions';

  @override
  String get editDisplayname => '';

  @override
  String get editJitsiInstance => '';

  @override
  String get editRoomAliases => 'Edit room aliases';

  @override
  String get editRoomAvatar => 'Edit room avatar';

  @override
  String get emoteExists => '';

  @override
  String get emoteInvalid => '';

  @override
  String get emotePacks => 'Emote packs for room';

  @override
  String get emoteSettings => '';

  @override
  String get emoteShortcode => '';

  @override
  String get emoteWarnNeedToPick => '';

  @override
  String get emptyChat => '';

  @override
  String get enableChatBackup => 'Enable the chat backup to never lose access to your chats.';

  @override
  String get enableEmotesGlobally => 'Enable emote pack globally';

  @override
  String get enableEncryption => 'Enable encryption';

  @override
  String get enableEncryptionWarning => '';

  @override
  String get encrypted => 'Encrypted';

  @override
  String get encryption => '';

  @override
  String get encryptionAlgorithm => '';

  @override
  String get encryptionNotEnabled => '';

  @override
  String get end2endEncryptionSettings => '';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName ended the call';
  }

  @override
  String get enterAGroupName => '';

  @override
  String get enterAnEmailAddress => 'Enter an email address';

  @override
  String get enterASpacepName => 'Enter a class name';

  @override
  String get enterAUsername => '';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => '';

  @override
  String errorObtainingLocation(Object error) {
    return 'Error obtaining location: $error';
  }

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get extremeOffensive => 'Extremely offensive';

  @override
  String get fileName => '';

  @override
  String get fileSize => '';

  @override
  String get fluffychat => '';

  @override
  String get fontSize => 'Font size';

  @override
  String get forward => '';

  @override
  String get friday => '';

  @override
  String get friends => 'Friends';

  @override
  String get fromJoining => '';

  @override
  String get fromTheInvitation => '';

  @override
  String get goToTheNewRoom => 'Go to the new room';

  @override
  String get group => '';

  @override
  String get groupDescription => '';

  @override
  String get groupDescriptionHasBeenChanged => '';

  @override
  String get groupIsPublic => '';

  @override
  String get groups => 'Groups';

  @override
  String groupWith(Object displayname) {
    return '';
  }

  @override
  String get guestsAreForbidden => '';

  @override
  String get guestsCanJoin => '';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '';
  }

  @override
  String get help => '';

  @override
  String get hideRedactedEvents => 'Hide redacted events';

  @override
  String get hideUnknownEvents => 'Hide unknown events';

  @override
  String get homeserverIsNotCompatible => '';

  @override
  String get howOffensiveIsThisContent => 'How offensive is this content?';

  @override
  String get id => '';

  @override
  String get identity => '';

  @override
  String get ignore => 'Ignore';

  @override
  String get ignoredUsers => 'Ignored users';

  @override
  String get ignoreListDescription => 'You can ignore users who are disturbing you. You won\'t be able to receive any messages or room invites from the users on your personal ignore list.';

  @override
  String get ignoreUsername => 'Ignore username';

  @override
  String get iHaveClickedOnLink => 'I have clicked on the link';

  @override
  String get incorrectPassphraseOrKey => '';

  @override
  String get inoffensive => 'Inoffensive';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get inviteContact => '';

  @override
  String inviteContactToGroup(Object groupName) {
    return '';
  }

  @override
  String get invited => '';

  @override
  String invitedUser(Object username, Object targetName) {
    return '';
  }

  @override
  String get invitedUsersOnly => '';

  @override
  String get inviteForMe => 'Invite for me';

  @override
  String inviteText(Object username, Object link) {
    return '';
  }

  @override
  String get isDeviceKeyCorrect => '';

  @override
  String get isTyping => '';

  @override
  String joinedTheChat(Object username) {
    return '';
  }

  @override
  String get joinRoom => 'Join room';

  @override
  String get keysCached => '';

  @override
  String get keysMissing => '';

  @override
  String kicked(Object username, Object targetName) {
    return '';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '';
  }

  @override
  String get kickFromChat => '';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return '';
  }

  @override
  String get lastSeenIp => '';

  @override
  String get lastSeenLongTimeAgo => '';

  @override
  String get leave => '';

  @override
  String get leftTheChat => '';

  @override
  String get license => '';

  @override
  String get lightTheme => '';

  @override
  String loadCountMoreParticipants(Object count) {
    return '';
  }

  @override
  String get loadingPleaseWait => '';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => '';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get login => '';

  @override
  String logInTo(Object homeserver) {
    return '';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => '';

  @override
  String get makeAModerator => '';

  @override
  String get makeAnAdmin => '';

  @override
  String get makeSureTheIdentifierIsValid => '';

  @override
  String get memberChanges => 'Member changes';

  @override
  String get mention => 'Mention';

  @override
  String get messages => 'Messages';

  @override
  String get messageWillBeRemovedWarning => '';

  @override
  String get moderator => '';

  @override
  String get monday => '';

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
  String get muteChat => '';

  @override
  String get needPantalaimonWarning => '';

  @override
  String get newChat => 'New chat';

  @override
  String get newMessageInFluffyChat => '';

  @override
  String get newVerificationRequest => '';

  @override
  String get next => 'Next';

  @override
  String get no => 'No';

  @override
  String get noConnectionToTheServer => 'No connection to the server';

  @override
  String get noCrossSignBootstrap => '';

  @override
  String get noDescription => 'No description';

  @override
  String get noEmotesFound => '';

  @override
  String get noEncryptionForPublicRooms => 'You can only activate encryption as soon as the room is no longer publicly accessible.';

  @override
  String get noGoogleServicesWarning => '';

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
  String get noMegolmBootstrap => '';

  @override
  String get none => '';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'Your user ID will then have the format @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'You have not added a way to recover your password yet.';

  @override
  String get noPermission => '';

  @override
  String get noPublicRoomsFound => 'No public rooms found…';

  @override
  String get noRoomsFound => '';

  @override
  String get noStatusesFound => 'No statuses found so far.';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsEnabledForThisAccount => 'Notifications enabled for this account';

  @override
  String get notSupportedInWeb => '';

  @override
  String numberSelected(Object number) {
    return '';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count users are typing…';
  }

  @override
  String get obtainingLocation => 'Obtaining location…';

  @override
  String get offensive => 'Offensive';

  @override
  String get offline => 'Offline';

  @override
  String get ok => '';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => '';

  @override
  String get onlineKeyBackupEnabled => '';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => '';

  @override
  String get openAppToReadMessages => '';

  @override
  String get openCamera => '';

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
  String get optionalGroupName => '';

  @override
  String get or => 'Or';

  @override
  String get participant => 'Participant';

  @override
  String get participatingUserDevices => '';

  @override
  String get passphraseOrKey => '';

  @override
  String get password => '';

  @override
  String get passwordForgotten => 'Password forgotten';

  @override
  String get passwordHasBeenChanged => 'Password has been changed';

  @override
  String get passwordRecovery => 'Password recovery';

  @override
  String get people => 'People';

  @override
  String get pickImage => '';

  @override
  String get pin => 'Pin';

  @override
  String play(Object fileName) {
    return '';
  }

  @override
  String get pleaseChoose => 'Please choose';

  @override
  String get pleaseChooseAPasscode => 'Please choose a pass code';

  @override
  String get pleaseChooseAUsername => '';

  @override
  String get pleaseClickOnLink => 'Please click on the link in the email and then proceed.';

  @override
  String get pleaseEnter4Digits => 'Please enter 4 digits or leave empty to disable app lock.';

  @override
  String get pleaseEnterAMatrixIdentifier => '';

  @override
  String get pleaseEnterSecurityKey => 'Please enter your security key:';

  @override
  String get pleaseEnterYourPassword => '';

  @override
  String get pleaseEnterYourPin => 'Please enter your pin';

  @override
  String get pleaseEnterYourUsername => '';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Please follow the instructions on the website and tap on next.';

  @override
  String get privacy => 'Privacy';

  @override
  String get publicGroups => 'Public Groups';

  @override
  String get publicKey => 'Public Key';

  @override
  String get publicRooms => '';

  @override
  String get publicSpace => 'Public class';

  @override
  String get pushRules => 'Push rules';

  @override
  String get reason => 'Reason';

  @override
  String get recording => '';

  @override
  String redactedAnEvent(Object username) {
    return '';
  }

  @override
  String get redactMessage => 'Redact message';

  @override
  String get register => 'Register';

  @override
  String get reject => '';

  @override
  String rejectedTheInvitation(Object username) {
    return '';
  }

  @override
  String get rejoin => '';

  @override
  String get remove => '';

  @override
  String get removeAllOtherDevices => '';

  @override
  String removedBy(Object username) {
    return '';
  }

  @override
  String get removeDevice => '';

  @override
  String get unbanFromChat => '';

  @override
  String get removeMessage => '';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get renderRichContent => '';

  @override
  String get replaceRoomWithNewerVersion => 'Replace room with newer version';

  @override
  String get reply => '';

  @override
  String get reportMessage => 'Report message';

  @override
  String get requestPermission => '';

  @override
  String get requestToReadOlderMessages => '';

  @override
  String get revokeAllPermissions => '';

  @override
  String get roomHasBeenUpgraded => '';

  @override
  String get roomVersion => 'Room version';

  @override
  String get saturday => '';

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
  String get searchForAChat => '';

  @override
  String get security => 'Security';

  @override
  String get securityKey => 'Security key';

  @override
  String get securityKeyLost => 'Security key lost?';

  @override
  String seenByUser(Object username) {
    return '';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seen by $username and $count others',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return '';
  }

  @override
  String get send => '';

  @override
  String get sendAMessage => '';

  @override
  String get sendAsText => 'Send as text';

  @override
  String get sendAudio => 'Send audio';

  @override
  String get sendBugReports => 'Allow sending bug reports with sentry.io';

  @override
  String get sendFile => '';

  @override
  String get sendImage => '';

  @override
  String get sendMessages => 'Send messages';

  @override
  String get sendOriginal => 'Send original';

  @override
  String get sendSticker => 'Send sticker';

  @override
  String get sendVideo => 'Send video';

  @override
  String sentAFile(Object username) {
    return '';
  }

  @override
  String sentAnAudio(Object username) {
    return '';
  }

  @override
  String sentAPicture(Object username) {
    return '';
  }

  @override
  String sentASticker(Object username) {
    return '';
  }

  @override
  String sentAVideo(Object username) {
    return '';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName sent call information';
  }

  @override
  String get sentryInfo => 'Information about your privacy: https://sentry.io/security/';

  @override
  String get sessionVerified => '';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => '';

  @override
  String get setAsCanonicalAlias => 'Set as main alias';

  @override
  String get setCustomEmotes => 'Set custom emotes';

  @override
  String get setGroupDescription => '';

  @override
  String get setInvitationLink => '';

  @override
  String get setPermissionsLevel => 'Set permissions level';

  @override
  String get setStatus => '';

  @override
  String get settings => '';

  @override
  String get share => '';

  @override
  String sharedTheLocation(Object username) {
    return '';
  }

  @override
  String get shareLocation => 'Share location';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Show password';

  @override
  String get signUp => '';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => '';

  @override
  String get soundVibrationLedColor => 'Sound, vibration LED-color';

  @override
  String get sourceCode => '';

  @override
  String get spaceIsPublic => 'Class is public';

  @override
  String get spaceName => 'Class name';

  @override
  String startedACall(Object senderName) {
    return '$senderName started a call';
  }

  @override
  String get startYourFirstChat => '';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => '';

  @override
  String get submit => '';

  @override
  String get sunday => '';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String get systemTheme => '';

  @override
  String get tapOnDeviceToVerify => 'Tap on a device to verifiy';

  @override
  String get tapToShowImage => 'Tap to show image';

  @override
  String get tapToShowMenu => '';

  @override
  String get theyDontMatch => '';

  @override
  String get theyMatch => '';

  @override
  String get thisRoomHasBeenArchived => '';

  @override
  String get thursday => '';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '';
  }

  @override
  String get title => '';

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
  String get tryToSendAgain => '';

  @override
  String get tuesday => '';

  @override
  String get unavailable => 'Unavailable';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '';
  }

  @override
  String get unblockDevice => '';

  @override
  String get unknownDevice => '';

  @override
  String get unknownEncryptionAlgorithm => '';

  @override
  String unknownEvent(Object type) {
    return '';
  }

  @override
  String get unknownSessionVerify => '';

  @override
  String get unlockChatBackup => 'Unlock chat backup';

  @override
  String get unmuteChat => '';

  @override
  String get unpin => 'Unpin';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 unread chat',
      other: '$unreadCount unread chats',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 unread message',
      other: '$unreadEvents unread messages',
    );
  }

  @override
  String get useAmoledTheme => '';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '';
  }

  @override
  String userIsTyping(Object username) {
    return '';
  }

  @override
  String userLeftTheChat(Object username) {
    return '';
  }

  @override
  String get username => '';

  @override
  String get userNotVerified => 'User is not verified';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '';
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
  String get verifiedSession => '';

  @override
  String get verify => '';

  @override
  String get verifyManual => '';

  @override
  String get verifyStart => '';

  @override
  String get verifySuccess => '';

  @override
  String get verifyTitle => '';

  @override
  String get verifyUser => '';

  @override
  String get videoCall => '';

  @override
  String get visibilityOfTheChatHistory => '';

  @override
  String get visibleForAllParticipants => '';

  @override
  String get visibleForEveryone => '';

  @override
  String get voiceMessage => '';

  @override
  String get waitingPartnerAcceptRequest => '';

  @override
  String get waitingPartnerEmoji => '';

  @override
  String get waitingPartnerNumbers => '';

  @override
  String get wallpaper => '';

  @override
  String get warning => 'Warning!';

  @override
  String get warningEncryptionInBeta => '';

  @override
  String get wednesday => '';

  @override
  String get welcomeText => '';

  @override
  String get weSentYouAnEmail => 'We sent you an email';

  @override
  String get whoCanPerformWhichAction => 'Who can perform which action';

  @override
  String get whoIsAllowedToJoinThisGroup => '';

  @override
  String get whyDoYouWantToReportThis => 'Why do you want to report this?';

  @override
  String get wipeChatBackup => 'Wipe your chat backup to create a new security key?';

  @override
  String get withTheseAddressesRecoveryDescription => 'With these addresses you can recover your password.';

  @override
  String get writeAMessage => '';

  @override
  String get yes => '';

  @override
  String get you => '';

  @override
  String get youAreInvitedToThisChat => '';

  @override
  String get youAreNoLongerParticipatingInThisChat => '';

  @override
  String get youCannotInviteYourself => '';

  @override
  String get youHaveBeenBannedFromThisChat => '';

  @override
  String get yourChatsAreBeingSynced => 'Your chats are being synced…';

  @override
  String get yourOwnUsername => '';

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
