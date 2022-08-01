

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Portuguese (`pt`).
class L10nPt extends L10n {
  L10nPt([String locale = 'pt']) : super(locale);

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
  String get about => 'About';

  @override
  String get accept => 'Accept';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username accepted the invitation';
  }

  @override
  String get account => 'Account';

  @override
  String get accountInformation => 'Account information';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username activated end to end encryption';
  }

  @override
  String get addEmail => 'Add email';

  @override
  String get addGroupDescription => 'Add a group description';

  @override
  String get addNewFriend => 'Add new friend';

  @override
  String get addToSpace => 'Add to class';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'alias';

  @override
  String get all => 'All';

  @override
  String get allChats => 'All chats';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName answered the call';
  }

  @override
  String get anyoneCanJoin => 'Anyone can join';

  @override
  String get appLock => 'App lock';

  @override
  String get archive => 'Archive';

  @override
  String get archivedRoom => 'Archived Room';

  @override
  String get areGuestsAllowedToJoin => 'Are guest users allowed to join';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get areYouSureYouWantToLogout => 'Are you sure you want to log out?';

  @override
  String get askSSSSSign => 'To be able to sign the other person, please enter your secure store passphrase or recovery key.';

  @override
  String get askSSSSVerify => 'Please enter your secure store passphrase or recovery key to verify your session.';

  @override
  String askVerificationRequest(Object username) {
    return 'Accept this verification request from $username?';
  }

  @override
  String get audioPlayerPause => 'Pause';

  @override
  String get audioPlayerPlay => 'Play';

  @override
  String get authentication => 'Authentication';

  @override
  String get autoplayImages => 'Automatically play animated stickers and emotes';

  @override
  String get avatarHasBeenChanged => 'Avatar changed';

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
  String get banFromChat => 'Ban from chat';

  @override
  String get banned => 'Banned';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username banned $targetName';
  }

  @override
  String get blockDevice => 'Block Device';

  @override
  String get blocked => 'Blocked';

  @override
  String get botMessages => 'Bot messages';

  @override
  String get bubbleSize => 'Bubble size';

  @override
  String get cachedKeys => 'Keys cached';

  @override
  String get cancel => 'Cancel';

  @override
  String cantOpenUri(Object uri) {
    return 'Can\'t open the URI $uri';
  }

  @override
  String get changeDeviceName => 'Change device name';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username changed the chat avatar';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username changed the chat description to: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username changed the chat name to: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username changed the chat permissions';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username changed their displayname to: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username changed the guest access rules';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username changed the guest access rules to: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username changed the history visibility';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username changed the history visibility to: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username changed the join rules';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username changed the join rules to: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username changed their avatar';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username changed the room aliases';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username changed the invitation link';
  }

  @override
  String get changelog => 'Changelog';

  @override
  String get changePassword => 'Change password';

  @override
  String get changesHaveBeenSaved => 'Changes have been saved';

  @override
  String get changeTheHomeserver => 'Change the homeserver';

  @override
  String get changeTheme => 'Change your style';

  @override
  String get changeTheNameOfTheGroup => 'Change the name of the group';

  @override
  String get changeTheServer => 'Change the server';

  @override
  String get changeWallpaper => 'Change wallpaper';

  @override
  String get changeYourAvatar => 'Change your avatar';

  @override
  String get channelCorruptedDecryptError => 'The encryption has been corrupted';

  @override
  String get chat => 'Chat';

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
  String get chatDetails => 'Chat details';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat has been added to this class';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat has been removed from this class';

  @override
  String get chats => 'Chats';

  @override
  String get chooseAStrongPassword => 'Choose a strong password';

  @override
  String get chooseAUsername => 'Choose a username';

  @override
  String get clearArchive => 'Clear archive';

  @override
  String get clearText => 'Clear text';

  @override
  String get close => 'Close';

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
  String get compareEmojiMatch => 'Compare and make sure the following emoji match those of the other device:';

  @override
  String get compareNumbersMatch => 'Compare and make sure the following numbers match those of the other device:';

  @override
  String get configureChat => 'Configure chat';

  @override
  String get confirm => 'Confirm';

  @override
  String get connect => 'Connect';

  @override
  String get connectionAttemptFailed => 'Connection attempt failed';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Contact has been invited to the group';

  @override
  String get containsDisplayName => 'Contains display name';

  @override
  String get containsUserName => 'Contains username';

  @override
  String get contentHasBeenReported => 'The content has been reported to the server admins';

  @override
  String get contentViewer => 'Content viewer';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get copy => 'Copy';

  @override
  String get copyToClipboard => 'Copy to clipboard';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Could not decrypt message: $error';
  }

  @override
  String get couldNotSetAvatar => 'Could not set avatar';

  @override
  String get couldNotSetDisplayname => 'Could not set displayname';

  @override
  String countParticipants(Object count) {
    return '$count participants';
  }

  @override
  String get create => 'Create';

  @override
  String get createAccountNow => 'Create account now';

  @override
  String createdTheChat(Object username) {
    return '$username created the chat';
  }

  @override
  String get createNewGroup => 'Create new group';

  @override
  String get createNewSpace => 'New class';

  @override
  String get crossSigningDisabled => 'Cross-signing off';

  @override
  String get crossSigningEnabled => 'Cross-signing on';

  @override
  String get currentlyActive => 'Currently active';

  @override
  String get darkTheme => 'Dark';

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
  String get deactivateAccountWarning => 'This will deactivate your user account. This can not be undone! Are you sure?';

  @override
  String get defaultPermissionLevel => 'Default permission level';

  @override
  String get delete => 'Delete';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteMessage => 'Delete message';

  @override
  String get deny => 'Deny';

  @override
  String get device => 'Device';

  @override
  String get deviceId => 'Device ID';

  @override
  String get devices => 'Devices';

  @override
  String get deviceVerifyDescription => 'The encryption is only secure when all devices have been verified.';

  @override
  String get directChats => 'Direct Chats';

  @override
  String get discardPicture => 'Discard picture';

  @override
  String get discover => 'Discover';

  @override
  String get discoverGroups => 'Discover groups';

  @override
  String get displaynameHasBeenChanged => 'Displayname has been changed';

  @override
  String get donate => 'Donate';

  @override
  String get dontAskAgain => 'Cancel and don\'t ask again';

  @override
  String get downloadFile => 'Download file';

  @override
  String get edit => 'Edit';

  @override
  String get editBlockedServers => 'Edit blocked servers';

  @override
  String get editChatPermissions => 'Edit chat permissions';

  @override
  String get editDisplayname => 'Edit displayname';

  @override
  String get editJitsiInstance => 'Edit Jitsi instance';

  @override
  String get editRoomAliases => 'Edit room aliases';

  @override
  String get editRoomAvatar => 'Edit room avatar';

  @override
  String get emoteExists => 'Emote already exists!';

  @override
  String get emoteInvalid => 'Invalid emote shortcode!';

  @override
  String get emotePacks => 'Emote packs for room';

  @override
  String get emoteSettings => 'Emote Settings';

  @override
  String get emoteShortcode => 'Emote shortcode';

  @override
  String get emoteWarnNeedToPick => 'You need to pick an emote shortcode and an image!';

  @override
  String get emptyChat => 'Empty chat';

  @override
  String get enableChatBackup => 'Enable the chat backup to never lose access to your chats.';

  @override
  String get enableEmotesGlobally => 'Enable emote pack globally';

  @override
  String get enableEncryption => 'Enable encryption';

  @override
  String get enableEncryptionWarning => 'You won\'t be able to disable the encryption anymore. Are you sure?';

  @override
  String get encrypted => 'Encrypted';

  @override
  String get encryption => 'Encryption';

  @override
  String get encryptionAlgorithm => 'Encryption algorithm';

  @override
  String get encryptionNotEnabled => 'Encryption is not enabled';

  @override
  String get end2endEncryptionSettings => 'End-to-end encryption settings';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName ended the call';
  }

  @override
  String get enterAGroupName => 'Enter a group name';

  @override
  String get enterAnEmailAddress => 'Enter an email address';

  @override
  String get enterASpacepName => 'Enter a class name';

  @override
  String get enterAUsername => 'Enter a username';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'Enter your homeserver';

  @override
  String errorObtainingLocation(Object error) {
    return 'Error obtaining location: $error';
  }

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get extremeOffensive => 'Extremely offensive';

  @override
  String get fileName => 'File name';

  @override
  String get fileSize => 'File size';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Font size';

  @override
  String get forward => 'Forward';

  @override
  String get friday => 'Friday';

  @override
  String get friends => 'Friends';

  @override
  String get fromJoining => 'From joining';

  @override
  String get fromTheInvitation => 'From the invitation';

  @override
  String get goToTheNewRoom => 'Go to the new room';

  @override
  String get group => 'Group';

  @override
  String get groupDescription => 'Group description';

  @override
  String get groupDescriptionHasBeenChanged => 'Group description changed';

  @override
  String get groupIsPublic => 'Group is public';

  @override
  String get groups => 'Groups';

  @override
  String groupWith(Object displayname) {
    return 'Group with $displayname';
  }

  @override
  String get guestsAreForbidden => 'Guests are forbidden';

  @override
  String get guestsCanJoin => 'Guests can join';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username has withdrawn the invitation for $targetName';
  }

  @override
  String get help => 'Help';

  @override
  String get hideRedactedEvents => 'Hide redacted events';

  @override
  String get hideUnknownEvents => 'Hide unknown events';

  @override
  String get homeserverIsNotCompatible => 'Homeserver is not compatible';

  @override
  String get howOffensiveIsThisContent => 'How offensive is this content?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identity';

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
  String get incorrectPassphraseOrKey => 'Incorrect passphrase or recovery key';

  @override
  String get inoffensive => 'Inoffensive';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get inviteContact => 'Invite contact';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Invite contact to $groupName';
  }

  @override
  String get invited => 'Invited';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username invited $targetName';
  }

  @override
  String get invitedUsersOnly => 'Invited users only';

  @override
  String get inviteForMe => 'Invite for me';

  @override
  String inviteText(Object username, Object link) {
    return '$username invited you to Pangea Chat. \n1. Install Pangea Chat: https://staging.pangea.chat \n2. Sign up or sign in \n3. Open the invite link: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Is the following device key correct?';

  @override
  String get isTyping => 'is typing…';

  @override
  String joinedTheChat(Object username) {
    return '$username joined the chat';
  }

  @override
  String get joinRoom => 'Join room';

  @override
  String get keysCached => 'Keys are cached';

  @override
  String get keysMissing => 'Keys are missing';

  @override
  String kicked(Object username, Object targetName) {
    return '$username kicked $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username kicked and banned $targetName';
  }

  @override
  String get kickFromChat => 'Kick from chat';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Last active: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Last seen IP';

  @override
  String get lastSeenLongTimeAgo => 'Seen a long time ago';

  @override
  String get leave => 'Leave';

  @override
  String get leftTheChat => 'Left the chat';

  @override
  String get license => 'License';

  @override
  String get lightTheme => 'Light';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Load $count more participants';
  }

  @override
  String get loadingPleaseWait => 'Loading… Please wait.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'Load more…';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get login => 'Login';

  @override
  String logInTo(Object homeserver) {
    return 'Log in to $homeserver';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => 'Logout';

  @override
  String get makeAModerator => 'Make a moderator';

  @override
  String get makeAnAdmin => 'Make an admin';

  @override
  String get makeSureTheIdentifierIsValid => 'Make sure the identifier is valid';

  @override
  String get memberChanges => 'Member changes';

  @override
  String get mention => 'Mention';

  @override
  String get messages => 'Messages';

  @override
  String get messageWillBeRemovedWarning => 'Message will be removed for all participants';

  @override
  String get moderator => 'Moderator';

  @override
  String get monday => 'Monday';

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
  String get muteChat => 'Mute chat';

  @override
  String get needPantalaimonWarning => 'Please be aware that you need Pantalaimon to use end-to-end encryption for now.';

  @override
  String get newChat => 'New chat';

  @override
  String get newMessageInFluffyChat => 'New message in FluffyChat';

  @override
  String get newVerificationRequest => 'New verification request!';

  @override
  String get next => 'Next';

  @override
  String get no => 'No';

  @override
  String get noConnectionToTheServer => 'No connection to the server';

  @override
  String get noCrossSignBootstrap => 'Fluffychat currently does not support enabling Cross-Signing. Please enable it from within Element.';

  @override
  String get noDescription => 'No description';

  @override
  String get noEmotesFound => 'No emotes found. 😕';

  @override
  String get noEncryptionForPublicRooms => 'You can only activate encryption as soon as the room is no longer publicly accessible.';

  @override
  String get noGoogleServicesWarning => 'It seems that you have no google services on your phone. That\'s a good decision for your privacy! To receive push notifications in FluffyChat we recommend using https://microg.org/ or https://unifiedpush.org/.';

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
  String get noMegolmBootstrap => 'Please turn on online key backup from within Element instead.';

  @override
  String get none => 'None';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'Your user ID will then have the format @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'You have not added a way to recover your password yet.';

  @override
  String get noPermission => 'No permission';

  @override
  String get noPublicRoomsFound => 'No public rooms found…';

  @override
  String get noRoomsFound => 'No rooms found…';

  @override
  String get noStatusesFound => 'No statuses found so far.';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsEnabledForThisAccount => 'Notifications enabled for this account';

  @override
  String get notSupportedInWeb => 'Not supported in web';

  @override
  String numberSelected(Object number) {
    return '$number selected';
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
  String get ok => 'Ok';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => 'Online Key Backup is disabled';

  @override
  String get onlineKeyBackupEnabled => 'Online Key Backup is enabled';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => 'Oops, something went wrong…';

  @override
  String get openAppToReadMessages => 'Open app to read messages';

  @override
  String get openCamera => 'Open camera';

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
  String get optionalGroupName => '(Optional) Group name';

  @override
  String get or => 'Or';

  @override
  String get participant => 'Participant';

  @override
  String get participatingUserDevices => 'Participating user devices';

  @override
  String get passphraseOrKey => 'passphrase or recovery key';

  @override
  String get password => 'Password';

  @override
  String get passwordForgotten => 'Password forgotten';

  @override
  String get passwordHasBeenChanged => 'Password has been changed';

  @override
  String get passwordRecovery => 'Password recovery';

  @override
  String get people => 'People';

  @override
  String get pickImage => 'Pick an image';

  @override
  String get pin => 'Pin';

  @override
  String play(Object fileName) {
    return 'Play $fileName';
  }

  @override
  String get pleaseChoose => 'Please choose';

  @override
  String get pleaseChooseAPasscode => 'Please choose a pass code';

  @override
  String get pleaseChooseAUsername => 'Please choose a username';

  @override
  String get pleaseClickOnLink => 'Please click on the link in the email and then proceed.';

  @override
  String get pleaseEnter4Digits => 'Please enter 4 digits or leave empty to disable app lock.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Please enter a Matrix ID.';

  @override
  String get pleaseEnterSecurityKey => 'Please enter your security key:';

  @override
  String get pleaseEnterYourPassword => 'Please enter your password';

  @override
  String get pleaseEnterYourPin => 'Please enter your pin';

  @override
  String get pleaseEnterYourUsername => 'Please enter your username';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Please follow the instructions on the website and tap on next.';

  @override
  String get privacy => 'Privacy';

  @override
  String get publicGroups => 'Public Groups';

  @override
  String get publicKey => 'Public Key';

  @override
  String get publicRooms => 'Public Rooms';

  @override
  String get publicSpace => 'Public class';

  @override
  String get pushRules => 'Push rules';

  @override
  String get reason => 'Reason';

  @override
  String get recording => 'Recording';

  @override
  String redactedAnEvent(Object username) {
    return '$username redacted an event';
  }

  @override
  String get redactMessage => 'Redact message';

  @override
  String get register => 'Register';

  @override
  String get reject => 'Reject';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username rejected the invitation';
  }

  @override
  String get rejoin => 'Rejoin';

  @override
  String get remove => 'Remove';

  @override
  String get removeAllOtherDevices => 'Remove all other devices';

  @override
  String removedBy(Object username) {
    return 'Removed by $username';
  }

  @override
  String get removeDevice => 'Remove device';

  @override
  String get unbanFromChat => 'Unban from chat';

  @override
  String get removeMessage => 'Remove message';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get renderRichContent => 'Render rich message content';

  @override
  String get replaceRoomWithNewerVersion => 'Replace room with newer version';

  @override
  String get reply => 'Reply';

  @override
  String get reportMessage => 'Report message';

  @override
  String get requestPermission => 'Request permission';

  @override
  String get requestToReadOlderMessages => 'Request to read older messages';

  @override
  String get revokeAllPermissions => 'Revoke all permissions';

  @override
  String get roomHasBeenUpgraded => 'Room has been upgraded';

  @override
  String get roomVersion => 'Room version';

  @override
  String get saturday => 'Saturday';

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
  String get searchForAChat => 'Search for a chat';

  @override
  String get security => 'Security';

  @override
  String get securityKey => 'Security key';

  @override
  String get securityKeyLost => 'Security key lost?';

  @override
  String seenByUser(Object username) {
    return 'Seen by $username';
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
    return 'Seen by $username and $username2';
  }

  @override
  String get send => 'Send';

  @override
  String get sendAMessage => 'Send a message';

  @override
  String get sendAsText => 'Send as text';

  @override
  String get sendAudio => 'Send audio';

  @override
  String get sendBugReports => 'Allow sending bug reports with sentry.io';

  @override
  String get sendFile => 'Send file';

  @override
  String get sendImage => 'Send image';

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
    return '$username sent a file';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username sent an audio';
  }

  @override
  String sentAPicture(Object username) {
    return '$username sent a picture';
  }

  @override
  String sentASticker(Object username) {
    return '$username sent a sticker';
  }

  @override
  String sentAVideo(Object username) {
    return '$username sent a video';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName sent call information';
  }

  @override
  String get sentryInfo => 'Information about your privacy: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Session is verified';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'Set a profile picture';

  @override
  String get setAsCanonicalAlias => 'Set as main alias';

  @override
  String get setCustomEmotes => 'Set custom emotes';

  @override
  String get setGroupDescription => 'Set group description';

  @override
  String get setInvitationLink => 'Set invitation link';

  @override
  String get setPermissionsLevel => 'Set permissions level';

  @override
  String get setStatus => 'Set status';

  @override
  String get settings => 'Settings';

  @override
  String get share => 'Share';

  @override
  String sharedTheLocation(Object username) {
    return '$username shared their location';
  }

  @override
  String get shareLocation => 'Share location';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'Show password';

  @override
  String get signUp => 'Sign up';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'Skip';

  @override
  String get soundVibrationLedColor => 'Sound, vibration LED-color';

  @override
  String get sourceCode => 'Source code';

  @override
  String get spaceIsPublic => 'Class is public';

  @override
  String get spaceName => 'Class name';

  @override
  String startedACall(Object senderName) {
    return '$senderName started a call';
  }

  @override
  String get startYourFirstChat => 'Start your first chat right now! 🙂\n- Tap on \'New chat\'\n- Scan the QR code of a friend\n- Have fun chatting';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'How are you today?';

  @override
  String get submit => 'Submit';

  @override
  String get sunday => 'Sunday';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String get systemTheme => 'System';

  @override
  String get tapOnDeviceToVerify => 'Tap on a device to verifiy';

  @override
  String get tapToShowImage => 'Tap to show image';

  @override
  String get tapToShowMenu => 'Tap to show menu';

  @override
  String get theyDontMatch => 'They Don\'t Match';

  @override
  String get theyMatch => 'They Match';

  @override
  String get thisRoomHasBeenArchived => 'This room has been archived.';

  @override
  String get thursday => 'Thursday';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours12:$minutes $suffix';
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
  String get tryToSendAgain => 'Try to send again';

  @override
  String get tuesday => 'Tuesday';

  @override
  String get unavailable => 'Unavailable';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username unbanned $targetName';
  }

  @override
  String get unblockDevice => 'Unblock Device';

  @override
  String get unknownDevice => 'Unknown device';

  @override
  String get unknownEncryptionAlgorithm => 'Unknown encryption algorithm';

  @override
  String unknownEvent(Object type) {
    return 'Unknown event \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Unknown session, please verify';

  @override
  String get unlockChatBackup => 'Unlock chat backup';

  @override
  String get unmuteChat => 'Unmute chat';

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
  String get useAmoledTheme => 'Use AMOLED compatible colors?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username and $count others are typing…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username and $username2 are typing…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username is typing…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username left the chat';
  }

  @override
  String get username => 'Username';

  @override
  String get userNotVerified => 'User is not verified';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username sent a $type event';
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
  String get verifiedSession => 'Successfully verified session!';

  @override
  String get verify => 'Verify';

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
  String get videoCall => 'Video call';

  @override
  String get visibilityOfTheChatHistory => 'Visibility of the chat history';

  @override
  String get visibleForAllParticipants => 'Visible for all participants';

  @override
  String get visibleForEveryone => 'Visible for everyone';

  @override
  String get voiceMessage => 'Voice message';

  @override
  String get waitingPartnerAcceptRequest => 'Waiting for partner to accept the request…';

  @override
  String get waitingPartnerEmoji => 'Waiting for partner to accept the emoji…';

  @override
  String get waitingPartnerNumbers => 'Waiting for partner to accept the numbers…';

  @override
  String get wallpaper => 'Wallpaper';

  @override
  String get warning => 'Warning!';

  @override
  String get warningEncryptionInBeta => 'End to end encryption is currently in Beta! Use at your own risk!';

  @override
  String get wednesday => 'Wednesday';

  @override
  String get welcomeText => 'Welcome to the cutest instant messenger in the Matrix network.';

  @override
  String get weSentYouAnEmail => 'We sent you an email';

  @override
  String get whoCanPerformWhichAction => 'Who can perform which action';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Who is allowed to join this group';

  @override
  String get whyDoYouWantToReportThis => 'Why do you want to report this?';

  @override
  String get wipeChatBackup => 'Wipe your chat backup to create a new security key?';

  @override
  String get withTheseAddressesRecoveryDescription => 'With these addresses you can recover your password.';

  @override
  String get writeAMessage => 'Write a message…';

  @override
  String get yes => 'Yes';

  @override
  String get you => 'You';

  @override
  String get youAreInvitedToThisChat => 'You are invited to this chat';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'You are no longer participating in this chat';

  @override
  String get youCannotInviteYourself => 'You cannot invite yourself';

  @override
  String get youHaveBeenBannedFromThisChat => 'You have been banned from this chat';

  @override
  String get yourChatsAreBeingSynced => 'Your chats are being synced…';

  @override
  String get yourOwnUsername => 'Your own username';

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

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class L10nPtBr extends L10nPt {
  L10nPtBr(): super('pt_BR');

  @override
  String get passwordsDoNotMatch => 'Senhas diferentes!';

  @override
  String get pleaseEnterValidEmail => 'Por favor, insira um email válido.';

  @override
  String get repeatPassword => 'Repita a senha';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Por favor, use ao menos $min caracteres.';
  }

  @override
  String get about => 'Sobre';

  @override
  String get accept => 'Aceitar';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username aceitou o convite';
  }

  @override
  String get account => 'Conta';

  @override
  String get accountInformation => 'Dados da conta';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username ativou a criptografia ponta-a-ponta';
  }

  @override
  String get addEmail => 'Adicionar email';

  @override
  String get addGroupDescription => 'Adicionar uma descrição para o grupo';

  @override
  String get addNewFriend => 'Adicionar novo(a) amigo(a)';

  @override
  String get addToSpace => 'Adicionar ao espaço';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'cognome';

  @override
  String get all => 'Todas';

  @override
  String get allChats => 'Todas as conversas';

  @override
  String get alreadyHaveAnAccount => 'Você já possui uma conta?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName atendeu à chamada';
  }

  @override
  String get anyoneCanJoin => 'Qualquer pessoa pode participar';

  @override
  String get appLock => 'Trava do aplicativo';

  @override
  String get archive => 'Arquivo';

  @override
  String get archivedRoom => 'Sala arquivada';

  @override
  String get areGuestsAllowedToJoin => 'Usuários convidados podem participar';

  @override
  String get areYouSure => 'Tem certeza?';

  @override
  String get areYouSureYouWantToLogout => 'Tem certeza que deseja encerrar a sessão?';

  @override
  String get askSSSSSign => 'Para poder validar a outra pessoa, por favor, insira sua frase secreta ou chave de recuperação.';

  @override
  String get askSSSSVerify => 'Por favor, insira a frase secreta ou chave de recuperação para verificar sua sessão.';

  @override
  String askVerificationRequest(Object username) {
    return 'Aceitar esta solicitação de verificação de $username?';
  }

  @override
  String get audioPlayerPause => 'Pausar';

  @override
  String get audioPlayerPlay => 'Tocar';

  @override
  String get authentication => 'Autenticação';

  @override
  String get autoplayImages => 'Reproduzir automaticamente figurinhas animadas e emojis';

  @override
  String get avatarHasBeenChanged => 'Avatar alterado';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'O servidor matriz suporta os tipos de login:\n${serverVersions}\nMas este app suporta apenas:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Enviar ao pressionar enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'O servidor matriz suporta as versões Spec:\n${serverVersions}\nMas este app suporta apenas $supportedVersions';
  }

  @override
  String get banFromChat => 'Banir da conversa';

  @override
  String get banned => 'Banido';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username baniu $targetName';
  }

  @override
  String get blockDevice => 'Bloquear dispositivo';

  @override
  String get blocked => 'Bloqueado';

  @override
  String get botMessages => 'Mensagens de robôs';

  @override
  String get bubbleSize => 'Tamanho do balão';

  @override
  String get cachedKeys => 'Chaves guardadas';

  @override
  String get cancel => 'Cancelar';

  @override
  String cantOpenUri(Object uri) {
    return 'Não foi possível abrir a URI $uri';
  }

  @override
  String get changeDeviceName => 'Alterar o nome do dispositivo';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username alterou o avatar da conversa';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username alterou a descrição da conversa para: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username alterou o nome da conversa para: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username alterou as permissões na conversa';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username mudou o seu nome de exibição para: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username alterou as regras de acesso dos convidados';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username alterou as regras de acesso dos convidados para: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username alterou a visibilidade do histórico';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username alterou a visibilidade do histórico para: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username alterou as regras para participação';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username alterou as regras para participação para: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username alterou seu avatar';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username alterou os cognomes da sala';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username alterou o link de convite';
  }

  @override
  String get changelog => 'Lista de mudanças';

  @override
  String get changePassword => 'Alterar a senha';

  @override
  String get changesHaveBeenSaved => 'Alterações foram salvas';

  @override
  String get changeTheHomeserver => 'Alterar o servidor matriz';

  @override
  String get changeTheme => 'Alterar o tema';

  @override
  String get changeTheNameOfTheGroup => 'Alterar o nome do grupo';

  @override
  String get changeTheServer => 'Alterar o servidor';

  @override
  String get changeWallpaper => 'Alterar o pano de fundo';

  @override
  String get changeYourAvatar => 'Alterar seu avatar';

  @override
  String get channelCorruptedDecryptError => 'A criptografia foi corrompida';

  @override
  String get chat => 'Conversas';

  @override
  String get yourUserId => 'Seu ID de usuário:';

  @override
  String get setupChatBackup => 'Configurar backup da conversa';

  @override
  String get iWroteDownTheKey => 'Eu anotei a chave';

  @override
  String get yourChatBackupHasBeenSetUp => 'Seu backup de conversas foi configurado.';

  @override
  String get chatBackup => 'Backup da conversa';

  @override
  String get setupChatBackupDescription => 'Para proteger suas mensagens, nós geramos uma chave de segurança para você.\nPor favor, guarde-a num lugar seguro, como um gerenciador de senhas.';

  @override
  String get chatBackupDescription => 'O backup da sua conversa é protegido com sua chave de segurança. Por favor, evite perdê-la.';

  @override
  String get chatDetails => 'Detalhes da conversa';

  @override
  String get chatHasBeenAddedToThisSpace => 'A conversa foi adicionada a este espaço';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'A conversa foi removida deste espaço';

  @override
  String get chats => 'Conversas';

  @override
  String get chooseAStrongPassword => 'Escolha uma senha forte';

  @override
  String get chooseAUsername => 'Escolha um nome de usuário';

  @override
  String get clearArchive => 'Limpar arquivo';

  @override
  String get clearText => 'Limpar texto';

  @override
  String get close => 'Fechar';

  @override
  String get commandHint_ban => 'Banir um(a) usuário(a) desta sala';

  @override
  String get commandHint_clearcache => 'Limpar dados temporários';

  @override
  String get commandHint_create => 'Criar uma sala vazia.\nUse --no-encryption para desabilitar a criptografia';

  @override
  String get commandHint_discardsession => 'Descartar sessão';

  @override
  String get commandHint_dm => 'Iniciar uma conversa direta\nUse --no-encryption para desabilitar a criptografia';

  @override
  String get commandHint_html => 'Enviar mensagem formatada em HTML';

  @override
  String get commandHint_invite => 'Convidar um(a) usuário(a) para esta sala';

  @override
  String get commandHint_join => 'Entrar numa sala';

  @override
  String get commandHint_kick => 'Remover um(a) usuário(a) desta sala';

  @override
  String get commandHint_leave => 'Sair desta sala';

  @override
  String get commandHint_me => 'Descrever você mesmo';

  @override
  String get commandHint_myroomavatar => 'Determinar sua imagem para esta sala (via mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Determinar seu nome de exibição para esta sala';

  @override
  String get commandHint_op => 'Determinar o grau de poderes de um(a) usuário(a) (padrão: 50)';

  @override
  String get commandHint_plain => 'Enviar mensagem sem formatação';

  @override
  String get commandHint_react => 'Enviar uma resposta como reação';

  @override
  String get commandHint_send => 'Enviar mensagem';

  @override
  String get commandHint_unban => 'Revogar o banimento de um(a) usuário(a) desta sala';

  @override
  String get commandInvalid => 'Comando inválido';

  @override
  String commandMissing(Object command) {
    return '$command não é um comando.';
  }

  @override
  String get compareEmojiMatch => 'Compare e certifique-se que os seguintes emojis batem com os do outro dispositivo:';

  @override
  String get compareNumbersMatch => 'Compare e certifique-se de que os seguintes números batem com os do outro dispositivo:';

  @override
  String get configureChat => 'Configurar conversa';

  @override
  String get confirm => 'Confirma';

  @override
  String get connect => 'Conectar';

  @override
  String get connectionAttemptFailed => 'A tentativa de conexão falhou';

  @override
  String get contactHasBeenInvitedToTheGroup => 'O contato foi convidado ao grupo';

  @override
  String get containsDisplayName => 'Contém nome de exibição';

  @override
  String get containsUserName => 'Contém nome de usuário';

  @override
  String get contentHasBeenReported => 'O conteúdo foi denunciado para quem administra o servidor';

  @override
  String get contentViewer => 'Visualizador de conteúdo';

  @override
  String get copiedToClipboard => 'Copiado para área de transferência';

  @override
  String get copy => 'Copiar';

  @override
  String get copyToClipboard => 'Copiar para a área de transferência';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Não foi possível decriptar a mensagem: $error';
  }

  @override
  String get couldNotSetAvatar => 'Não foi possível fixar o avatar';

  @override
  String get couldNotSetDisplayname => 'Não foi possível fixar o nome de exibição';

  @override
  String countParticipants(Object count) {
    return '$count participantes';
  }

  @override
  String get create => 'Criar';

  @override
  String get createAccountNow => 'Criar conta agora';

  @override
  String createdTheChat(Object username) {
    return '$username criou a conversa';
  }

  @override
  String get createNewGroup => 'Novo grupo';

  @override
  String get createNewSpace => 'Novo espaço';

  @override
  String get crossSigningDisabled => 'Assinatura cruzada desativada';

  @override
  String get crossSigningEnabled => 'Assinatura cruzada ativada';

  @override
  String get currentlyActive => 'Ativo';

  @override
  String get darkTheme => 'Escuro';

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
  String get deactivateAccountWarning => 'Isto desativará a conta do usuário. É irreversível! Tem certeza?';

  @override
  String get defaultPermissionLevel => 'Nível de permissão padrão';

  @override
  String get delete => 'Apagar';

  @override
  String get deleteAccount => 'Apagar conta';

  @override
  String get deleteMessage => 'Apagar mensagem';

  @override
  String get deny => 'Rejeitar';

  @override
  String get device => 'Dispositivo';

  @override
  String get deviceId => 'ID do dispositivo';

  @override
  String get devices => 'Dispositivos';

  @override
  String get deviceVerifyDescription => 'A criptografia só é segura quando todos os dispositivos forem verificados.';

  @override
  String get directChats => 'Conversas diretas';

  @override
  String get discardPicture => 'Descartar imagem';

  @override
  String get discover => 'Desvendar';

  @override
  String get discoverGroups => 'Desvendar grupos';

  @override
  String get displaynameHasBeenChanged => 'O nome de exibição foi alterado';

  @override
  String get donate => 'Doar';

  @override
  String get dontAskAgain => 'Cancelar e não perguntar novamente';

  @override
  String get downloadFile => 'Baixar arquivo';

  @override
  String get edit => 'Editar';

  @override
  String get editBlockedServers => 'Editar servidores bloqueados';

  @override
  String get editChatPermissions => 'Editar permissões da conversa';

  @override
  String get editDisplayname => 'Editar nome de exibição';

  @override
  String get editJitsiInstance => 'Alterar a instância Jitsi';

  @override
  String get editRoomAliases => 'Editar cognome da sala';

  @override
  String get editRoomAvatar => 'Editar o avatar da sala';

  @override
  String get emoteExists => 'Emoji já existe!';

  @override
  String get emoteInvalid => 'Código emoji inválido!';

  @override
  String get emotePacks => 'Pacote de emoji para a sala';

  @override
  String get emoteSettings => 'Configuração dos Emoji';

  @override
  String get emoteShortcode => 'Código Emoji';

  @override
  String get emoteWarnNeedToPick => 'Você tem que escolher um código emoji e uma imagem!';

  @override
  String get emptyChat => 'Conversa vazia';

  @override
  String get enableChatBackup => 'Habilite o backup de conversas para nunca perder acesso a elas.';

  @override
  String get enableEmotesGlobally => 'Habilitar globalmente o pacote de emoji';

  @override
  String get enableEncryption => 'Habilitar criptografia';

  @override
  String get enableEncryptionWarning => 'Você não poderá desabilitar a criptografia posteriormente. Tem certeza?';

  @override
  String get encrypted => 'Criptografado';

  @override
  String get encryption => 'Criptografia';

  @override
  String get encryptionAlgorithm => 'Algoritmo criptográfico';

  @override
  String get encryptionNotEnabled => 'A criptografia não está habilitada';

  @override
  String get end2endEncryptionSettings => 'Configuração da criptografia ponta-a-ponta';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName finalizou a chamada';
  }

  @override
  String get enterAGroupName => 'Insira um nome de grupo';

  @override
  String get enterAnEmailAddress => 'Inserir endereço de e-mail';

  @override
  String get enterASpacepName => 'Insira um nome pro espaço';

  @override
  String get enterAUsername => 'Insira um nome de usuário';

  @override
  String get homeserver => 'Servidor matriz';

  @override
  String get enterYourHomeserver => 'Insira um servidor matriz';

  @override
  String errorObtainingLocation(Object error) {
    return 'Erro ao obter local: $error';
  }

  @override
  String get everythingReady => 'Tudo pronto!';

  @override
  String get extremeOffensive => 'Extremamente ofensivo';

  @override
  String get fileName => 'Nome do arquivo';

  @override
  String get fileSize => 'Tamanho do arquivo';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Tamanho da fonte';

  @override
  String get forward => 'Encaminhar';

  @override
  String get friday => 'Sexta-feira';

  @override
  String get friends => 'Amigos';

  @override
  String get fromJoining => 'Desde que entrou';

  @override
  String get fromTheInvitation => 'Desde o convite';

  @override
  String get goToTheNewRoom => 'Ir para a sala nova';

  @override
  String get group => 'Grupo';

  @override
  String get groupDescription => 'Descrição do grupo';

  @override
  String get groupDescriptionHasBeenChanged => 'Descrição do grupo alterada';

  @override
  String get groupIsPublic => 'Grupo público';

  @override
  String get groups => 'Grupos';

  @override
  String groupWith(Object displayname) {
    return 'Grupo com $displayname';
  }

  @override
  String get guestsAreForbidden => 'Convidados estão proibidos';

  @override
  String get guestsCanJoin => 'Convidados podem participar';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username revogou o convite para $targetName';
  }

  @override
  String get help => 'Ajuda';

  @override
  String get hideRedactedEvents => 'Ocultar eventos removidos';

  @override
  String get hideUnknownEvents => 'Ocultar eventos desconhecidos';

  @override
  String get homeserverIsNotCompatible => 'Servidor matriz não é compatível';

  @override
  String get howOffensiveIsThisContent => 'O quão ofensivo é este conteúdo?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identidade';

  @override
  String get ignore => 'Ignorar';

  @override
  String get ignoredUsers => 'Usuários ignorados';

  @override
  String get ignoreListDescription => 'Você pode ignorar usuários que estão lhe pertubando. Não será possível receber mensagens ou convites de usuários na sua lista pessoal de ignorados.';

  @override
  String get ignoreUsername => 'Ignorar usuário';

  @override
  String get iHaveClickedOnLink => 'Eu cliquei no link';

  @override
  String get incorrectPassphraseOrKey => 'Frase secreta ou chave de recuperação incorreta';

  @override
  String get inoffensive => 'Inofensivo';

  @override
  String get invalidEmail => 'Email inválido';

  @override
  String get inviteContact => 'Convidar contato';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Convidar contato para $groupName';
  }

  @override
  String get invited => 'Foi convidado';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username convidou $targetName';
  }

  @override
  String get invitedUsersOnly => 'Apenas usuários convidados';

  @override
  String get inviteForMe => 'Convite para mim';

  @override
  String inviteText(Object username, Object link) {
    return '$username convidou você para o FluffyChat. \n1. Instale o FluffyChat: https://fluffychat.im \n2. Entre ou crie uma conta \n3. Abra o link do convite: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'A seguinte chave de dispositivo está correta?';

  @override
  String get isTyping => 'está escrevendo…';

  @override
  String joinedTheChat(Object username) {
    return '$username entrou na conversa';
  }

  @override
  String get joinRoom => 'Entrar na sala';

  @override
  String get keysCached => 'Chaves guardadas';

  @override
  String get keysMissing => 'Chaves faltando';

  @override
  String kicked(Object username, Object targetName) {
    return '$username enxotou $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username expulsou e baniu $targetName';
  }

  @override
  String get kickFromChat => 'Expulso da conversa';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Última vez ativo: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Último IP conhecido';

  @override
  String get lastSeenLongTimeAgo => 'Visto há muito tempo atrás';

  @override
  String get leave => 'Sair';

  @override
  String get leftTheChat => 'Sair da conversa';

  @override
  String get license => 'Licença';

  @override
  String get lightTheme => 'Claro';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Carregue $count mais participantes';
  }

  @override
  String get loadingPleaseWait => 'Carregando... Aguarde.';

  @override
  String get showSpaces => 'Mostrar lista de espaços';

  @override
  String get loadMore => 'Carregando mais…';

  @override
  String get locationDisabledNotice => 'O serviço de localização está desabilitado. Por favor, habilite-o para compartilhar sua localização.';

  @override
  String get locationPermissionDeniedNotice => 'Permissão de localização negada. Conceda as permissões para habilitar o compartilhamento de localização.';

  @override
  String get login => 'Iniciar sessão';

  @override
  String logInTo(Object homeserver) {
    return 'Conectar a $homeserver';
  }

  @override
  String get loginWithOneClick => 'Entrar com um clique';

  @override
  String get logout => 'Encerrar sessão';

  @override
  String get makeAModerator => 'Atribuir papel de moderador';

  @override
  String get makeAnAdmin => 'Atribuir papel de admin';

  @override
  String get makeSureTheIdentifierIsValid => 'Certifique-se de que a identificação é válida';

  @override
  String get memberChanges => 'Alterações de membros';

  @override
  String get mention => 'Mencionar';

  @override
  String get messages => 'Mensagens';

  @override
  String get messageWillBeRemovedWarning => 'Mensagem será removida para todos os participantes';

  @override
  String get moderator => 'Moderador';

  @override
  String get monday => 'Segunda-feira';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'Mais 1 evento',
      other: 'Mais $count eventos',
    );
  }

  @override
  String get muteChat => 'Silenciar';

  @override
  String get needPantalaimonWarning => 'Por favor, observe que, por enquanto, você precisa do Pantalaimon para usar criptografia ponta-a-ponta.';

  @override
  String get newChat => 'Nova conversa';

  @override
  String get newMessageInFluffyChat => 'Nova mensagem no FluffyChat';

  @override
  String get newVerificationRequest => 'Nova solicitação de verificação!';

  @override
  String get next => 'Próximo';

  @override
  String get no => 'Não';

  @override
  String get noConnectionToTheServer => 'Sem conexão com o servidor';

  @override
  String get noCrossSignBootstrap => 'FluffyChat atualmente não suporta a habilitação de assinatura cruzada. Por favor, habilite via Element.';

  @override
  String get noDescription => 'Sem descrição';

  @override
  String get noEmotesFound => 'Nenhum emoji encontrado. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Você só pode ativar criptografia quando a sala não for mais publicamente acessível.';

  @override
  String get noGoogleServicesWarning => 'Aparentemente você não tem serviços Google no seu celular. Boa decisão para a sua privacidade! Para receber notificações no FluffyChat, recomendamos usar https://microg.org/ ou https://unifiedpush.org.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 não é um servidor matrix, usar $server2 talvez?';
  }

  @override
  String get createNewChatExplaination => 'Apenas escaneie o código QR ou compartilhe o link do convite se estiverem próximos entre si.';

  @override
  String get shareYourInviteLink => 'Compartilhar o link do convite';

  @override
  String get typeInInviteLinkManually => 'Digitar o link do convite manualmente...';

  @override
  String get scanQrCode => 'Escanear o código QR';

  @override
  String get noMegolmBootstrap => 'Por favor, habilite o backup de chaves via Element.';

  @override
  String get none => 'Nenhum';

  @override
  String get newPasswordDescription => 'Para poder recuperar a sua senha, você deve posteriormente cadastrar um email na sua conta.';

  @override
  String get newUsernameDescription => 'Seu ID de usuário(a) deve ter o formato @usuario:nomedoservidor';

  @override
  String get noPasswordRecoveryDescription => 'Você ainda não adicionou uma forma de recuparar sua senha.';

  @override
  String get noPermission => 'Sem permissão';

  @override
  String get noPublicRoomsFound => 'Não foram encontradas salas públicas…';

  @override
  String get noRoomsFound => 'Nenhuma sala encontrada…';

  @override
  String get noStatusesFound => 'Nenhum status encontrado por enquanto.';

  @override
  String get notifications => 'Notificações';

  @override
  String get notificationsEnabledForThisAccount => 'Notificações habilitadas para esta conta';

  @override
  String get notSupportedInWeb => 'Sem suporte na versão Web';

  @override
  String numberSelected(Object number) {
    return '$number selecionados';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count usuários estão digitando…';
  }

  @override
  String get obtainingLocation => 'Obtendo localização…';

  @override
  String get offensive => 'Ofensivo';

  @override
  String get offline => 'Desconectado';

  @override
  String get ok => 'Ok';

  @override
  String get online => 'Disponível';

  @override
  String get onlineKeyBackupDisabled => 'Backup de chaves está desabilitado';

  @override
  String get onlineKeyBackupEnabled => 'Backup de chaves está ativado';

  @override
  String get oopsPushError => 'Opa! Infelizmente, um erro ocorreu ao configurar as notificações.';

  @override
  String get oopsSomethingWentWrong => 'Opa, algo deu errado…';

  @override
  String get openAppToReadMessages => 'Abra o app para ler as mensagens';

  @override
  String get openCamera => 'Abra a câmera';

  @override
  String get openVideoCamera => 'Abra a câmera para um vídeo';

  @override
  String get oneClientLoggedOut => 'Um dos seus clientes foi desvinculado';

  @override
  String get addAccount => 'Adicionar conta';

  @override
  String get editBundlesForAccount => 'Editar coleções para esta conta';

  @override
  String get addToBundle => 'Adicionar à coleção';

  @override
  String get removeFromBundle => 'Remover desta coleção';

  @override
  String get bundleName => 'Nome da coleção';

  @override
  String get enableMultiAccounts => '(BETA) Habilitar múltiplas contas neste dispositivo';

  @override
  String get openInMaps => 'Abrir no mapas';

  @override
  String get link => 'Link';

  @override
  String get serverRequiresEmail => 'Este servidor precisa validar seu email para efetuar o registro.';

  @override
  String get optionalGroupName => '(Opcional) Nome do Grupo';

  @override
  String get or => 'Ou';

  @override
  String get participant => 'Participante';

  @override
  String get participatingUserDevices => 'Dispositivos dos participantes';

  @override
  String get passphraseOrKey => 'frase secreta ou chave de recuperação';

  @override
  String get password => 'Senha';

  @override
  String get passwordForgotten => 'Esqueci a senha';

  @override
  String get passwordHasBeenChanged => 'Senha foi alterada';

  @override
  String get passwordRecovery => 'Recuperação de senha';

  @override
  String get people => 'Pessoas';

  @override
  String get pickImage => 'Escolha uma imagem';

  @override
  String get pin => 'Alfinetar';

  @override
  String play(Object fileName) {
    return 'Tocar $fileName';
  }

  @override
  String get pleaseChoose => 'Por favor, selecione';

  @override
  String get pleaseChooseAPasscode => 'Por favor, escolha um código';

  @override
  String get pleaseChooseAUsername => 'Por favor, escolha um nome de usuário';

  @override
  String get pleaseClickOnLink => 'Por favor, clique a ligação no e-mail para prosseguir.';

  @override
  String get pleaseEnter4Digits => 'Por favor, insira 4 dígitos ou deixe em branco para desativar a trava do aplicativo.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Por favor, insira o ID Matrix.';

  @override
  String get pleaseEnterSecurityKey => 'Por favor, insira sua chave de segurança:';

  @override
  String get pleaseEnterYourPassword => 'Por favor, insira sua senha';

  @override
  String get pleaseEnterYourPin => 'Por favor, insira seu PIN';

  @override
  String get pleaseEnterYourUsername => 'Por favor, insira seu nome de usuário';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Por favor, siga as instruções no site e toque em próximo.';

  @override
  String get privacy => 'Privacidade';

  @override
  String get publicGroups => 'Grupos Públicos';

  @override
  String get publicKey => 'Chave Pública';

  @override
  String get publicRooms => 'Salas públicas';

  @override
  String get publicSpace => 'Espaço público';

  @override
  String get pushRules => 'Regras de notificação';

  @override
  String get reason => 'Motivo';

  @override
  String get recording => 'Gravando';

  @override
  String redactedAnEvent(Object username) {
    return '$username removeu um evento';
  }

  @override
  String get redactMessage => 'Retratar mensagem';

  @override
  String get register => 'Registrar';

  @override
  String get reject => 'Recusar';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username recusou o convite';
  }

  @override
  String get rejoin => 'Retornar';

  @override
  String get remove => 'Remover';

  @override
  String get removeAllOtherDevices => 'Remover todos os outros dispositivos';

  @override
  String removedBy(Object username) {
    return 'Removido por $username';
  }

  @override
  String get removeDevice => 'Remover dispositivo';

  @override
  String get unbanFromChat => 'Revogar banimento';

  @override
  String get removeMessage => 'Remover mensagem';

  @override
  String get removeYourAvatar => 'Remover seu avatar';

  @override
  String get renderRichContent => 'Exibir conteúdo formatado';

  @override
  String get replaceRoomWithNewerVersion => 'Substituir sala por uma nova versão';

  @override
  String get reply => 'Responder';

  @override
  String get reportMessage => 'Denunciar mensagem';

  @override
  String get requestPermission => 'Solicitar permissão';

  @override
  String get requestToReadOlderMessages => 'Solicitar leitura de mensagens antigas';

  @override
  String get revokeAllPermissions => 'Revogar todas permissões';

  @override
  String get roomHasBeenUpgraded => 'Sala foi atualizada';

  @override
  String get roomVersion => 'Versão da sala';

  @override
  String get saturday => 'Sábado';

  @override
  String savedFileAs(Object filename) {
    return 'Salvar arquivo como $filename';
  }

  @override
  String get saveFile => 'Salvar arquivo';

  @override
  String get saveFileToFolder => 'Salvar arquivo nesta pasta';

  @override
  String get search => 'Buscar';

  @override
  String get searchForAChat => 'Buscar uma conversa';

  @override
  String get security => 'Segurança';

  @override
  String get securityKey => 'Chave de segurança';

  @override
  String get securityKeyLost => 'Chave de segurança perdida?';

  @override
  String seenByUser(Object username) {
    return 'Visto por $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Visto por $username e mais $count pessoas',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Visto por $username e $username2';
  }

  @override
  String get send => 'Enviar';

  @override
  String get sendAMessage => 'Enviar mensagem';

  @override
  String get sendAsText => 'Enviar como texto';

  @override
  String get sendAudio => 'Enviar audio';

  @override
  String get sendBugReports => 'Permitir envio de falhas via sentry.io';

  @override
  String get sendFile => 'Enviar arquivo';

  @override
  String get sendImage => 'Enviar imagem';

  @override
  String get sendMessages => 'Enviar mensagens';

  @override
  String get sendOriginal => 'Enviar original';

  @override
  String get sendSticker => 'Enviar figurinha';

  @override
  String get sendVideo => 'Enviar vídeo';

  @override
  String sentAFile(Object username) {
    return '$username enviou um arquivo';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username enviou um audio';
  }

  @override
  String sentAPicture(Object username) {
    return '$username enviou uma imagem';
  }

  @override
  String sentASticker(Object username) {
    return '$username enviou uma figurinha';
  }

  @override
  String sentAVideo(Object username) {
    return '$username enviou um vídeo';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName enviou informações de chamada';
  }

  @override
  String get sentryInfo => 'Informações sobre a sua privacidade: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Sessão verificada';

  @override
  String get separateChatTypes => 'Separar Conversas Diretas, Grupos e Espaços';

  @override
  String get setAProfilePicture => 'Fixar uma imagem de perfil';

  @override
  String get setAsCanonicalAlias => 'Fixar como cognome principal';

  @override
  String get setCustomEmotes => 'Implantar emojis personalizados';

  @override
  String get setGroupDescription => 'Fixar uma descrição do grupo';

  @override
  String get setInvitationLink => 'Enviar link de convite';

  @override
  String get setPermissionsLevel => 'Determinar níveis de permissão';

  @override
  String get setStatus => 'Alterar o status';

  @override
  String get settings => 'Configurações';

  @override
  String get share => 'Compartilhar';

  @override
  String sharedTheLocation(Object username) {
    return '$username compartilhou sua localização';
  }

  @override
  String get shareLocation => 'Compartilhar localização';

  @override
  String get showDirectChatsInSpaces => 'Mostrar Conversas Diretas relacionadas nos Espaços';

  @override
  String get showPassword => 'Mostrar senha';

  @override
  String get signUp => 'Registrar';

  @override
  String get singlesignon => 'Identidade Única';

  @override
  String get skip => 'Pular';

  @override
  String get soundVibrationLedColor => 'Som, vibração e cor LED';

  @override
  String get sourceCode => 'Código fonte';

  @override
  String get spaceIsPublic => 'Espaço é público';

  @override
  String get spaceName => 'Nome do espaço';

  @override
  String startedACall(Object senderName) {
    return '$senderName iniciou uma chamada';
  }

  @override
  String get startYourFirstChat => 'Inicie sua primeira conversa agora mesmo! 🙂\n- Pressione \'Nova conversa\'\n- Escaneie o código QR de um(a) amigo(a)\n- Divirta-se conversando';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'Como vai você?';

  @override
  String get submit => 'Submeter';

  @override
  String get sunday => 'Domingo';

  @override
  String get synchronizingPleaseWait => 'Sincronizando… Por favor, aguarde.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get tapOnDeviceToVerify => 'Toque num dispositivo para verificar';

  @override
  String get tapToShowImage => 'Toque para mostrar a imagem';

  @override
  String get tapToShowMenu => 'Toque para mostrar o menu';

  @override
  String get theyDontMatch => 'Não correspondem';

  @override
  String get theyMatch => 'Correspondem';

  @override
  String get thisRoomHasBeenArchived => 'Esta sala foi arquivada.';

  @override
  String get thursday => 'Quinta-feira';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Alternar favorito';

  @override
  String get toggleMuted => 'Alternar Silenciado';

  @override
  String get toggleUnread => 'Marcar lido/não lido';

  @override
  String get tooManyRequestsWarning => 'Demasiadas requisições. Por favor, tente novamente mais tarde!';

  @override
  String get transferFromAnotherDevice => 'Transferir de outro dispositivo';

  @override
  String get tryToSendAgain => 'Tente enviar novamente';

  @override
  String get tuesday => 'Terça-feira';

  @override
  String get unavailable => 'Indisponível';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username revogou o banimento de $targetName';
  }

  @override
  String get unblockDevice => 'Desbloquear dispositivo';

  @override
  String get unknownDevice => 'Dispositivo desconhecido';

  @override
  String get unknownEncryptionAlgorithm => 'Algoritmo de criptografia desconhecido';

  @override
  String unknownEvent(Object type) {
    return 'Evento desconhecido \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Sessão desconhecida, favor verificar';

  @override
  String get unlockChatBackup => 'Destrancar o backup da conversa';

  @override
  String get unmuteChat => 'Cancelar silenciamento';

  @override
  String get unpin => 'Desalfinetar';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 conversa não lida',
      other: '$unreadCount conversas não lidas',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 mensagem não lida',
      other: '$unreadEvents mensagens não lidas',
    );
  }

  @override
  String get useAmoledTheme => 'Usar cores compatíveis com AMOLED?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username e mais $count pessoas estão digitando…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username e $username2 estão digitando…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username está digitando…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username saiu da conversa';
  }

  @override
  String get username => 'Nome de usuário';

  @override
  String get userNotVerified => 'Usuário(a) não verificado(a)';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username enviou um evento $type';
  }

  @override
  String get userUnknownVerification => 'Usuário(a) tem um status de verificação desconhecido';

  @override
  String get userVerified => 'Usuário(a) verificado(a)';

  @override
  String get unverified => 'Não verificado';

  @override
  String get verified => 'Verificado';

  @override
  String get verifiedSession => 'Sessão verificada com sucesso!';

  @override
  String get verify => 'Verificar';

  @override
  String get verifyManual => 'Verificar manualmente';

  @override
  String get verifyStart => 'Iniciar verificação';

  @override
  String get verifySuccess => 'Verificação efetivada!';

  @override
  String get verifyTitle => 'Verificando outra conta';

  @override
  String get verifyUser => 'Verificar usuário';

  @override
  String get videoCall => 'Vídeochamada';

  @override
  String get visibilityOfTheChatHistory => 'Visibilidade do histórico da conversa';

  @override
  String get visibleForAllParticipants => 'Visível aos participantes';

  @override
  String get visibleForEveryone => 'Visível a qualquer pessoa';

  @override
  String get voiceMessage => 'Mensagem de voz';

  @override
  String get waitingPartnerAcceptRequest => 'Esperando que a outra pessoa aceite a solicitação…';

  @override
  String get waitingPartnerEmoji => 'Esperando que a outra pessoa aceite os emoji…';

  @override
  String get waitingPartnerNumbers => 'Aguardando a outra pessoa aceitar os números…';

  @override
  String get wallpaper => 'Pano de fundo';

  @override
  String get warning => 'Atenção!';

  @override
  String get warningEncryptionInBeta => 'Criptografia ponta-a-ponta está em fase beta! Use por sua própria conta e risco!';

  @override
  String get wednesday => 'Quarta-feira';

  @override
  String get welcomeText => 'Bem-vindo(a) ao mensageiro mais fofo da rede Matrix.';

  @override
  String get weSentYouAnEmail => 'Enviamos um e-mail para você';

  @override
  String get whoCanPerformWhichAction => 'Quem pode desempenhar quais ações';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Quais pessoas são permitidas participar deste grupo';

  @override
  String get whyDoYouWantToReportThis => 'Por que você quer denunciar isto?';

  @override
  String get wipeChatBackup => 'Limpar o backup da conversa para criar uma nova chave de segurança?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Você pode recuperar a sua senha com estes endereços.';

  @override
  String get writeAMessage => 'Escreva uma mensagem…';

  @override
  String get yes => 'Sim';

  @override
  String get you => 'Você';

  @override
  String get youAreInvitedToThisChat => 'Você foi convidada(o) a esta conversa';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Você não está mais participando desta conversa';

  @override
  String get youCannotInviteYourself => 'Você não pode se autoconvidar';

  @override
  String get youHaveBeenBannedFromThisChat => 'Você foi banido desta conversa';

  @override
  String get yourChatsAreBeingSynced => 'Sua conversas estão sendo sincronizadas…';

  @override
  String get yourOwnUsername => 'Seu próprio nome de usuário';

  @override
  String get yourPublicKey => 'Sua chave pública';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Você se conectará a $homeserver';
  }

  @override
  String get zoomIn => 'Ampliar';

  @override
  String get zoomOut => 'Reduzir';

  @override
  String get messageInfo => 'Informações da mensagem';

  @override
  String get time => 'Hora';

  @override
  String get messageType => 'Tipo da mensagem';

  @override
  String get sender => 'Remetente';

  @override
  String get openGallery => 'Abrir galeria';

  @override
  String get removeFromSpace => 'Remover do espaço';

  @override
  String get removeFromSpaceDescription => 'Isto remove esta conversa do atual espaço. Ela continuará visível sob \"Todas conversas\".';

  @override
  String get addToSpaceDescription => 'Selecione um espaço para adicionar esta conversa.';

  @override
  String get start => 'Começar';

  @override
  String get setupChatBackupNow => 'Configurar seu backup de conversas agora';

  @override
  String get pleaseEnterSecurityKeyDescription => 'Para destravar seu backup de conversas, por favor, insira sua chave de segurança gerada na sessão anterior. Sua chave de segurança NÃO é a sua senha.';

  @override
  String get saveTheSecurityKeyNow => 'Salvar a chave de segurança agora';

  @override
  String get addToStory => 'Adicionar ao painel';

  @override
  String get publish => 'Publicar';

  @override
  String get whoCanSeeMyStories => 'Quem pode ver meu painel?';

  @override
  String get unsubscribeStories => 'Desinscrever de painéis';

  @override
  String get thisUserHasNotPostedAnythingYet => 'Este(a) usuário(a) ainda não postou no seu painel';

  @override
  String get yourStory => 'Seu painel';

  @override
  String get replyHasBeenSent => 'Resposta enviada';

  @override
  String videoWithSize(Object size) {
    return 'Vídeo ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'Painel de $date:\n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Por favor, note que pessoas podem ver e contactar umas às outras no seu painel.';

  @override
  String get whatIsGoingOn => 'O que está acontecendo?';

  @override
  String get addDescription => 'Adicionar descrição';

  @override
  String get storyPrivacyWarning => 'Por favor, note que pessoas podem ver e contactar umas às outras no seu painel. Ele ficará visível por apenas 24 horas, mas não há garantias de que será apagado por todos dispositivos e servidores.';

  @override
  String get iUnderstand => 'Eu compreendo';

  @override
  String get openChat => 'Abrir conversa';

  @override
  String get markAsRead => 'Marcar como lido';

  @override
  String get reportUser => 'Delatar usuário';

  @override
  String get dismiss => 'Descartar';

  @override
  String get matrixWidgets => 'Ferramentas Matrix';

  @override
  String get integrationsNotImplemented => 'Ainda não é possível editar ferramentas e integrações.';

  @override
  String get editIntegrations => 'Editar ferramentas e integrações';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender reagiu com $reaction';
  }

  @override
  String get pinMessage => 'Afixar à sala';

  @override
  String get pinnedEventsError => 'Erro ao carregar mensagens afixadas';

  @override
  String get confirmEventUnpin => 'Tem certeza que quer desafixar o evento permanentemente?';

  @override
  String get emojis => 'Emojis';

  @override
  String get placeCall => 'Chamar';

  @override
  String get voiceCall => 'Chamada de voz';

  @override
  String get unsupportedAndroidVersion => 'Versão Android não suportada';

  @override
  String get unsupportedAndroidVersionLong => 'Esta funcionalidade requer uma versão mais nova do Android. Por favor, busque atualizações ou suporte ao Lineage OS.';

  @override
  String get videoCallsBetaWarning => 'Por favor, note que chamadas de vídeo estão atualmente em teste. Podem não funcionar como esperado ou sequer funcionar em algumas plataformas.';

  @override
  String get experimentalVideoCalls => 'Vídeo chamadas experimentais';

  @override
  String get emailOrUsername => 'Email ou nome de usuário';

  @override
  String switchToAccount(Object number) {
    return 'Alternar para a conta $number';
  }

  @override
  String get nextAccount => 'Próxima conta';

  @override
  String get previousAccount => 'Conta anterior';

  @override
  String get editWidgets => 'Editar ferramentas';

  @override
  String get addWidget => 'Adicionar ferramenta';

  @override
  String get widgetVideo => 'Vídeo';

  @override
  String get widgetEtherpad => 'Anotação';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Personalizado';

  @override
  String get widgetName => 'Nome';

  @override
  String get widgetUrlError => 'Isto não é uma URL válida.';

  @override
  String get widgetNameError => 'Por favor, forneça um nome de exibição.';

  @override
  String get errorAddingWidget => 'Erro ao adicionar a ferramenta.';

  @override
  String get youRejectedTheInvitation => 'Você rejeitou o convite';

  @override
  String get youJoinedTheChat => 'Você entrou na conversa';

  @override
  String get youAcceptedTheInvitation => 'Você aceitou o convite';

  @override
  String youBannedUser(Object user) {
    return 'Você baniu $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(Object user) {
    return 'Você revogou o convite para $user';
  }

  @override
  String youInvitedBy(Object user) {
    return 'Você foi convidado por $user';
  }

  @override
  String youInvitedUser(Object user) {
    return 'Você convidou $user';
  }

  @override
  String youKicked(Object user) {
    return 'Você expulsou $user';
  }

  @override
  String youKickedAndBanned(Object user) {
    return 'Você expulsou e baniu $user';
  }

  @override
  String youUnbannedUser(Object user) {
    return 'Você revogou o banimento de $user';
  }
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class L10nPtPt extends L10nPt {
  L10nPtPt(): super('pt_PT');

  @override
  String get passwordsDoNotMatch => 'As palavras-passe não correspondem!';

  @override
  String get pleaseEnterValidEmail => 'Por favor, insere um endereço de correio eletrónico válido.';

  @override
  String get repeatPassword => 'Repete a palavra-passe';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Por favor, usa no mínimo $min caracteres.';
  }

  @override
  String get about => 'Acerca de';

  @override
  String get accept => 'Aceitar';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username aceitou o convite';
  }

  @override
  String get account => 'Conta';

  @override
  String get accountInformation => 'Informação de conta';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username ativou encriptação ponta-a-ponta';
  }

  @override
  String get addEmail => 'Adicionar correio eletrónico';

  @override
  String get addGroupDescription => 'Adicionar descrição de grupo';

  @override
  String get addNewFriend => 'Adicionar novo amigo';

  @override
  String get addToSpace => 'Adicionar ao espaço';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'alcunha';

  @override
  String get all => 'Todos(as)';

  @override
  String get allChats => 'Todas as conversas';

  @override
  String get alreadyHaveAnAccount => 'Já tens uma conta?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName atendeu a chamada';
  }

  @override
  String get anyoneCanJoin => 'Qualquer pessoa pode entrar';

  @override
  String get appLock => 'Bloqueio da aplicação';

  @override
  String get archive => 'Arquivo';

  @override
  String get archivedRoom => 'Sala arquivada';

  @override
  String get areGuestsAllowedToJoin => 'Todos os visitantes podem entrar';

  @override
  String get areYouSure => 'Tens a certeza?';

  @override
  String get areYouSureYouWantToLogout => 'Tens a certeza que queres sair?';

  @override
  String get askSSSSSign => 'Para poderes assinar a outra pessoa, por favor, insere a tua senha de armazenamento seguro ou a chave de recuperação.';

  @override
  String get askSSSSVerify => 'Por favor, insere a tua senha de armazenamento seguro ou a chave de recuperação para verificares a tua sessão.';

  @override
  String askVerificationRequest(Object username) {
    return 'Aceitar este pedido de verificação de $username?';
  }

  @override
  String get audioPlayerPause => 'Pausar';

  @override
  String get audioPlayerPlay => 'Reproduzir';

  @override
  String get authentication => 'Autenticação';

  @override
  String get autoplayImages => 'Automaticamente reproduzir autocolantes e emotes animados';

  @override
  String get avatarHasBeenChanged => 'Avatar alterado';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'O servidor suporta os tipos de início de sessão:\n${serverVersions}\nMas esta aplicação apenas suporta:\n{suportedVersions}';
  }

  @override
  String get sendOnEnter => 'Enviar com Enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'O servidor suporta as versões Spec:\n${serverVersions}\nMas esta aplicação apenas suporta {suportedVersions}';
  }

  @override
  String get banFromChat => 'Banir da conversa';

  @override
  String get banned => 'Banido(a)';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username baniu $targetName';
  }

  @override
  String get blockDevice => 'Bloquear dispositivo';

  @override
  String get blocked => 'Bloqueado';

  @override
  String get botMessages => 'Mensagens de robôs';

  @override
  String get cachedKeys => 'Chaves armazenadas em cache';

  @override
  String get cancel => 'Cancelar';

  @override
  String cantOpenUri(Object uri) {
    return 'Não é possível abrir o URI $uri';
  }

  @override
  String get changeDeviceName => 'Alterar nome do dispositivo';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username alterou o avatar da conversa';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username alterou a descrição da conversa para: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username alterou o nome da conversa para: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username alterou as permissões da conversa';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username alterou o seu nome para: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username alterou as regras de acesso de visitantes';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username alterou as regras de acesso de visitantes para: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username alterou a visibilidade do histórico';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username alterou a visibilidade do histórico para: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username alterou as regras de entrada';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username alterou as regras de entrada para: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username alterou o seu avatar';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username alterou as alcunhas da sala';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username alterou a ligação de convite';
  }

  @override
  String get changelog => 'Registo de alterações';

  @override
  String get changePassword => 'Alterar palavra-passe';

  @override
  String get changesHaveBeenSaved => 'As alterações foram guardadas';

  @override
  String get changeTheHomeserver => 'Alterar o servidor';

  @override
  String get changeTheme => 'Alterar o teu estilo';

  @override
  String get changeTheNameOfTheGroup => 'Alterar o nome do grupo';

  @override
  String get changeTheServer => 'Alterar o servidor';

  @override
  String get changeWallpaper => 'Alterar o fundo';

  @override
  String get changeYourAvatar => 'Alterar o teu avatar';

  @override
  String get channelCorruptedDecryptError => 'A encriptação foi corrompida';

  @override
  String get chat => 'Conversa';

  @override
  String get yourUserId => 'O teu ID de utilizador:';

  @override
  String get setupChatBackup => 'Configurar cópia de segurança de conversas';

  @override
  String get iWroteDownTheKey => 'Eu anotei a chave num papel';

  @override
  String get yourChatBackupHasBeenSetUp => 'A cópia de segurança foi configurada.';

  @override
  String get chatBackup => 'Cópia de segurança de conversas';

  @override
  String get setupChatBackupDescription => 'Para proteger as tuas mensagens, gerámos uma chave de segurança para ti.\nPor favo, mantém-na num sítio seguro, como um gestor de palavras-passe.';

  @override
  String get chatBackupDescription => 'A tua cópia de segurança de conversas está protegida com uma chave de segurança. Por favor, certifica-te que não a perdes.';

  @override
  String get chatDetails => 'Detalhes de conversa';

  @override
  String get chatHasBeenAddedToThisSpace => 'A conversa foi adicionada a este espaço';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'A conversa foi removida deste espaço';

  @override
  String get chats => 'Conversas';

  @override
  String get chooseAStrongPassword => 'Escolhe uma palavra-passe forte';

  @override
  String get chooseAUsername => 'Escolhe um nome de utilizador';

  @override
  String get clearArchive => 'Limpar arquivo';

  @override
  String get clearText => 'Limpar texto';

  @override
  String get close => 'Fechar';

  @override
  String get commandHint_ban => 'Banir o utilizador dado desta sala';

  @override
  String get commandHint_html => 'Enviar texto formatado com HTML';

  @override
  String get commandHint_invite => 'Convidar o utilizador dado a esta sala';

  @override
  String get commandHint_join => 'Entrar na sala dada';

  @override
  String get commandHint_kick => 'Remover o utilizador dado desta sala';

  @override
  String get commandHint_leave => 'Sair desta sala';

  @override
  String get commandHint_me => 'Descreve-te';

  @override
  String get commandHint_myroomavatar => 'Definir a tua imagem para esta sala (por mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Definir o teu nome para esta sala';

  @override
  String get commandHint_op => 'Definir o nível de poder do utilizador dado (por omissão: 50)';

  @override
  String get commandHint_plain => 'Enviar texto não formatado';

  @override
  String get commandHint_react => 'Enviar respostas como reações';

  @override
  String get commandHint_send => 'Enviar texto';

  @override
  String get commandHint_unban => 'Perdoar o utilizador dado';

  @override
  String get commandInvalid => 'Comando inválido';

  @override
  String commandMissing(Object command) {
    return '$command não é um comando.';
  }

  @override
  String get compareEmojiMatch => 'Compara e certifica-te que os emojis que se seguem correspondem aos do outro dispositivo:';

  @override
  String get compareNumbersMatch => 'Compara e certifica-te que os números que se seguem correspondem aos do outro dispositivo:';

  @override
  String get configureChat => 'Configurar conversa';

  @override
  String get confirm => 'Confirmar';

  @override
  String get connect => 'Ligar';

  @override
  String get connectionAttemptFailed => 'Falha ao tentar ligar';

  @override
  String get contactHasBeenInvitedToTheGroup => 'O contacto foi convidado para o grupo';

  @override
  String get containsDisplayName => 'Contém nome de exibição';

  @override
  String get containsUserName => 'Contém nome de utilizador';

  @override
  String get contentHasBeenReported => 'O conteúdo foi denunciado aos admins do servidor';

  @override
  String get contentViewer => 'Visualizador de conteúdo';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get copy => 'Copiar';

  @override
  String get copyToClipboard => 'Copiar para a área de transferência';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Não foi possível desencriptar mensagem: $error';
  }

  @override
  String get couldNotSetAvatar => 'Não foi possível definir o avatar';

  @override
  String get couldNotSetDisplayname => 'Não foi possível definir o nome de exibição';

  @override
  String countParticipants(Object count) {
    return '$count participantes';
  }

  @override
  String get create => 'Criar';

  @override
  String get createAccountNow => 'Criar conta agora';

  @override
  String createdTheChat(Object username) {
    return '$username criou a conversa';
  }

  @override
  String get createNewGroup => 'Criar novo grupo';

  @override
  String get createNewSpace => 'Novo espaço';

  @override
  String get crossSigningDisabled => 'Assinatura cruzada desativada';

  @override
  String get crossSigningEnabled => 'Assinatura cruzada ativada';

  @override
  String get currentlyActive => 'Ativo(a) agora';

  @override
  String get darkTheme => 'Escuro';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$date às $timeOfDay';
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
  String get deactivateAccountWarning => 'Isto irá desativar a tua conta. Não é reversível! Tens a certeza?';

  @override
  String get defaultPermissionLevel => 'Nível de permissão normal';

  @override
  String get delete => 'Eliminar';

  @override
  String get deleteAccount => 'Eliminar conta';

  @override
  String get deleteMessage => 'Eliminar mensagem';

  @override
  String get deny => 'Recusar';

  @override
  String get device => 'Dispositivo';

  @override
  String get deviceId => 'ID de dispositivo';

  @override
  String get devices => 'Dispositivos';

  @override
  String get deviceVerifyDescription => 'A encriptação só é segura quando todos os dispositivos forem verificados.';

  @override
  String get directChats => 'Conversas diretas';

  @override
  String get discardPicture => 'Descartar imagem';

  @override
  String get discover => 'Descobrir';

  @override
  String get discoverGroups => 'Descobrir grupos';

  @override
  String get displaynameHasBeenChanged => 'Nome de exibição alterado';

  @override
  String get donate => 'Doar';

  @override
  String get dontAskAgain => 'Cancelar e não voltar a perguntar';

  @override
  String get downloadFile => 'Descarregar ficheiro';

  @override
  String get edit => 'Editar';

  @override
  String get editBlockedServers => 'Editar servidores bloqueados';

  @override
  String get editChatPermissions => 'Editar permissões de conversa';

  @override
  String get editDisplayname => 'Editar nome de exibição';

  @override
  String get editJitsiInstance => 'Editar instância de Jitsi';

  @override
  String get editRoomAliases => 'Editar alcunhas da sala';

  @override
  String get editRoomAvatar => 'Editar avatar da sala';

  @override
  String get emoteExists => 'Emote já existente!';

  @override
  String get emoteInvalid => 'Código de emote inválido!';

  @override
  String get emotePacks => 'Pacotes de emotes da sala';

  @override
  String get emoteSettings => 'Configurações de emotes';

  @override
  String get emoteShortcode => 'Código do emote';

  @override
  String get emoteWarnNeedToPick => 'Precisas de escolher um código de emote e uma imagem!';

  @override
  String get emptyChat => 'Conversa vazia';

  @override
  String get enableChatBackup => 'Ativar a cópia de segurança para nunca perder acesso às tuas conversas.';

  @override
  String get enableEmotesGlobally => 'Ativar pacote de emotes globalmente';

  @override
  String get enableEncryption => 'Ativar encriptação';

  @override
  String get enableEncryptionWarning => 'Nunca mais poderás desativar a encriptação. Tens a certeza?';

  @override
  String get encrypted => 'Encriptada';

  @override
  String get encryption => 'Encriptação';

  @override
  String get encryptionAlgorithm => 'Algoritmo de encriptação';

  @override
  String get encryptionNotEnabled => 'A encriptação não está ativada';

  @override
  String get end2endEncryptionSettings => 'Configurações de encriptação ponta-a-ponta';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName terminou a chamada';
  }

  @override
  String get enterAGroupName => 'Insere o nome do grupo';

  @override
  String get enterAnEmailAddress => 'Insere um endereço de correio eletrónico';

  @override
  String get enterASpacepName => 'Insere o nome do espaço';

  @override
  String get enterAUsername => 'Insere um nome de utilizador';

  @override
  String get homeserver => 'Servidor';

  @override
  String get enterYourHomeserver => 'Insere o teu servidor';

  @override
  String errorObtainingLocation(Object error) {
    return 'Erro ao obter localização: $error';
  }

  @override
  String get everythingReady => 'Tudo a postos!';

  @override
  String get extremeOffensive => 'Extremamente ofensivo';

  @override
  String get fileName => 'Nome do ficheiro';

  @override
  String get fileSize => 'Tamanho do ficheiro';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Tamanho da letra';

  @override
  String get forward => 'Reencaminhar';

  @override
  String get friday => 'Sexta-feira';

  @override
  String get friends => 'Amigos';

  @override
  String get goToTheNewRoom => 'Ir para a nova sala';

  @override
  String get group => 'Grupo';

  @override
  String get groupDescription => 'Descrição do grupo';

  @override
  String get groupDescriptionHasBeenChanged => 'Descrição do grupo alterada';

  @override
  String get groupIsPublic => 'O grupo é público';

  @override
  String get groups => 'Grupos';

  @override
  String groupWith(Object displayname) {
    return 'Grupo com $displayname';
  }

  @override
  String get guestsAreForbidden => 'São proibidos visitantes';

  @override
  String get guestsCanJoin => 'Podem entrar visitantes';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username revogou o convite para $targetName';
  }

  @override
  String get help => 'Ajuda';

  @override
  String get hideRedactedEvents => 'Esconder eventos eliminados';

  @override
  String get hideUnknownEvents => 'Esconder eventos desconhecidos';

  @override
  String get homeserverIsNotCompatible => 'O servidor é incompatível';

  @override
  String get howOffensiveIsThisContent => 'Quão ofensivo é este conteúdo?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identidade';

  @override
  String get ignore => 'Ignorar';

  @override
  String get ignoredUsers => 'Utilizadores ignorados';

  @override
  String get ignoreListDescription => 'Podes ignorar utilizadores que te incomodem. Não irás poder receber quaisquer mensagens ou convites para salas de utilizadores na tua lista pessoal de ignorados.';

  @override
  String get ignoreUsername => 'Nome do utilizador a ignorar';

  @override
  String get iHaveClickedOnLink => 'Eu cliquei na ligação';

  @override
  String get incorrectPassphraseOrKey => 'Senha ou chave de recuperação incorretos';

  @override
  String get inoffensive => 'Inofensivo';

  @override
  String get invalidEmail => 'Correio eletrónico inválido';

  @override
  String get inviteContact => 'Convidar contacto';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Convidar contacto para $groupName';
  }

  @override
  String get invited => 'Convidado(a)';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username convidou $targetName';
  }

  @override
  String get invitedUsersOnly => 'Utilizadores(as) convidados(as) apenas';

  @override
  String get inviteForMe => 'Convite para mim';

  @override
  String inviteText(Object username, Object link) {
    return '$username convidou-te para o FluffyChat.\n1. Instala o FluffyChat: https://fluffychat.im\n2. Regista-te ou inicia sessão.\n3. Abre a ligação de convite: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'A seguinte chave de dispositivo está correta?';

  @override
  String get isTyping => 'está a escrever…';

  @override
  String joinedTheChat(Object username) {
    return '$username entrou na conversa';
  }

  @override
  String get joinRoom => 'Entrar na sala';

  @override
  String get keysCached => 'Chaves estão armazenadas em cache';

  @override
  String get keysMissing => 'Chaves em falta';

  @override
  String kicked(Object username, Object targetName) {
    return '$username expulsou $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username expulsou e baniu $targetName';
  }

  @override
  String get kickFromChat => 'Expulsar da conversa';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Ativo(a) pela última vez: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'Último IP visto';

  @override
  String get lastSeenLongTimeAgo => 'Visto(a) há muito tempo';

  @override
  String get leave => 'Sair';

  @override
  String get leftTheChat => 'Saiu da conversa';

  @override
  String get license => 'Licença';

  @override
  String get lightTheme => 'Claro';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Carregar mais $count participantes';
  }

  @override
  String get loadingPleaseWait => 'A carregar... Por favor aguarde.';

  @override
  String get loadMore => 'Carregar mais…';

  @override
  String get locationDisabledNotice => 'Os serviços de localização estão desativados. Por favor, ativa-os para poder partilhar a sua localização.';

  @override
  String get locationPermissionDeniedNotice => 'Permissão de localização recusada. Por favor, concede permissão para poderes partilhar a tua posição.';

  @override
  String get login => 'Entrar';

  @override
  String logInTo(Object homeserver) {
    return 'Entrar em $homeserver';
  }

  @override
  String get loginWithOneClick => 'Entrar com um clique';

  @override
  String get logout => 'Sair';

  @override
  String get makeAModerator => 'Promover a moderador';

  @override
  String get makeAnAdmin => 'Promover a admin';

  @override
  String get makeSureTheIdentifierIsValid => 'Certifica-te que o identificador é válido';

  @override
  String get memberChanges => 'Alterações de membros';

  @override
  String get mention => 'Mencionar';

  @override
  String get messages => 'Mensagens';

  @override
  String get messageWillBeRemovedWarning => 'A mensagem será eliminada para todos os participantes';

  @override
  String get moderator => 'Moderador';

  @override
  String get monday => 'Segunda-feira';

  @override
  String get muteChat => 'Silenciar conversa';

  @override
  String get needPantalaimonWarning => '';

  @override
  String get newChat => 'Nova conversa';

  @override
  String get newMessageInFluffyChat => 'Nova mensagem no FluffyChat';

  @override
  String get newVerificationRequest => 'Novo pedido de verificação!';

  @override
  String get next => 'Próximo';

  @override
  String get no => 'Não';

  @override
  String get noConnectionToTheServer => 'Nenhuma ligação ao servidor';

  @override
  String get noCrossSignBootstrap => 'O FluffyChat, de momento, não suporta ativar a assinatura cruzada. Por favor, ativa-a a partir do Element.';

  @override
  String get noDescription => 'Nenhuma descrição';

  @override
  String get noEmotesFound => 'Nenhuns emotes encontrados. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Só podes ativar a encriptação quando a sala não for publicamente acessível.';

  @override
  String get noGoogleServicesWarning => 'Parece que não tens nenhuns serviços da Google no seu telemóvel. É uma boa decisão para a sua privacidade! Para receber notificações instantâneas no FluffyChat, recomendamos que uses https://microg.org/ ou https://unifiedpush.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 não é um servidor Matrix, usar $server2?';
  }

  @override
  String get shareYourInviteLink => 'Partilhar a ligação de convite';

  @override
  String get typeInInviteLinkManually => 'Escrever a ligação de convite manualmente...';

  @override
  String get noMegolmBootstrap => 'Por favor, ativa a cópia de segurança de chaves online a partir do Element.';

  @override
  String get none => 'Nenhum';

  @override
  String get newPasswordDescription => 'Para poderes recuperar a tua palavra-passe, deves adicionar um endereço de correio eletrónico à tua conta.';

  @override
  String get newUsernameDescription => 'O teu ID de utilizador terá o formato @utilizador:servidor';

  @override
  String get noPasswordRecoveryDescription => 'Ainda não adicionaste uma forma de recuperar a tua palavra-passe.';

  @override
  String get noPermission => 'Sem permissão';

  @override
  String get noPublicRoomsFound => 'Não foram encontradas nenhumas salas públicas…';

  @override
  String get noRoomsFound => 'Não foram encontradas nenhumas salas…';

  @override
  String get noStatusesFound => 'Nenhuns estados encontrados até agora.';

  @override
  String get notifications => 'Notificações';

  @override
  String get notificationsEnabledForThisAccount => 'Notificações ativadas para esta conta';

  @override
  String get notSupportedInWeb => 'Não suportadas na web';

  @override
  String numberSelected(Object number) {
    return '$number selecionados(as)';
  }

  @override
  String numUsersTyping(Object count) {
    return 'Estão $count utilizadores(as) a escrever…';
  }

  @override
  String get obtainingLocation => 'A obter localização…';

  @override
  String get offensive => 'Offensivo';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'ok';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => 'A cópia de segurança online de chaves está desativada';

  @override
  String get onlineKeyBackupEnabled => 'A cópia de segurança online de chaves está ativada';

  @override
  String get oopsPushError => 'Ups! Infelizmente, ocorreu um erro ao configurar as notificações instantâneas.';

  @override
  String get oopsSomethingWentWrong => 'Ups, algo correu mal…';

  @override
  String get openAppToReadMessages => 'Abrir aplicação para ler mensagens';

  @override
  String get openCamera => 'Abrir câmara';

  @override
  String get oneClientLoggedOut => 'Um dos teus clientes terminou sessão';

  @override
  String get addAccount => 'Adicionar conta';

  @override
  String get editBundlesForAccount => 'Editar pacotes para esta conta';

  @override
  String get addToBundle => 'Adicionar ao pacote';

  @override
  String get removeFromBundle => 'Remover deste pacote';

  @override
  String get bundleName => 'Nome do pacote';

  @override
  String get enableMultiAccounts => '(BETA) Ativar múltiplas contas neste dispositivo';

  @override
  String get openInMaps => 'Abrir nos mapas';

  @override
  String get link => 'Ligação';

  @override
  String get serverRequiresEmail => 'Este servidor precisa de validar o teu endereço de correio eletrónico para o registo.';

  @override
  String get optionalGroupName => '(Opcional) Nome do grupo';

  @override
  String get or => 'Ou';

  @override
  String get participant => 'Participante';

  @override
  String get participatingUserDevices => 'Dispositivos de utilizadores participantes';

  @override
  String get passphraseOrKey => 'senha ou chave de recuperação';

  @override
  String get password => 'Palavra-passe';

  @override
  String get passwordForgotten => 'Palavra-passe esquecida';

  @override
  String get passwordHasBeenChanged => 'A palavra-passe foi alterada';

  @override
  String get passwordRecovery => 'Recuperação de palavra-passe';

  @override
  String get people => 'Pessoas';

  @override
  String get pickImage => 'Escolher uma imagem';

  @override
  String get pin => 'Afixar';

  @override
  String play(Object fileName) {
    return 'Reproduzir $fileName';
  }

  @override
  String get pleaseChoose => 'Por favor, escolhe';

  @override
  String get pleaseChooseAPasscode => 'Por favor, escolhe um código-passe';

  @override
  String get pleaseChooseAUsername => 'Por favor, escolhe um nome de utilizador';

  @override
  String get pleaseClickOnLink => 'Por favor, clica na ligação no correio eletrónico e depois continua.';

  @override
  String get pleaseEnter4Digits => 'Por favor, insere 4 dígitos ou deixa vazio para desativar o bloqueio da aplicação.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Por favor, insere um ID Matrix.';

  @override
  String get pleaseEnterSecurityKey => 'Por favor, insere a tua chave de segurança:';

  @override
  String get pleaseEnterYourPassword => 'Por favor, insere a tua palavra-passe';

  @override
  String get pleaseEnterYourPin => 'Por favor, insere o teu código';

  @override
  String get pleaseEnterYourUsername => 'Por favor, insere o teu nome de utilizador';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Por favor, segue as instruções no website e clica em \"Seguinte\".';

  @override
  String get privacy => 'Privacidade';

  @override
  String get publicGroups => 'Grupos públicos';

  @override
  String get publicKey => 'Chave pública';

  @override
  String get publicRooms => 'Salas públicas';

  @override
  String get publicSpace => 'Espaço público';

  @override
  String get reason => 'Razão';

  @override
  String get recording => 'A gravar';

  @override
  String redactedAnEvent(Object username) {
    return '$username eliminou um evento';
  }

  @override
  String get redactMessage => 'Eliminar mensagem';

  @override
  String get register => 'Registar';

  @override
  String get reject => 'Rejeitar';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username rejeitou o convite';
  }

  @override
  String get rejoin => 'Reentrar';

  @override
  String get remove => 'Remover';

  @override
  String get removeAllOtherDevices => 'Remover todos os outros dispositivos';

  @override
  String removedBy(Object username) {
    return 'Removido por $username';
  }

  @override
  String get removeDevice => 'Remover dispositivo';

  @override
  String get unbanFromChat => 'Perdoar nesta conversa';

  @override
  String get removeMessage => 'Remover mensagem';

  @override
  String get removeYourAvatar => 'Remover o teu avatar';

  @override
  String get renderRichContent => 'Exibir conteúdo de mensagem rico';

  @override
  String get replaceRoomWithNewerVersion => 'Substituir sala com versão mais recente';

  @override
  String get reply => 'Responder';

  @override
  String get reportMessage => 'Reportar mensagem';

  @override
  String get requestPermission => 'Pedir permissão';

  @override
  String get requestToReadOlderMessages => 'Pedir para ler mensagens antigas';

  @override
  String get revokeAllPermissions => 'Revogar todas as permissões';

  @override
  String get roomHasBeenUpgraded => 'A sala foi atualizada';

  @override
  String get roomVersion => 'Versão da sala';

  @override
  String get saturday => 'Sábado';

  @override
  String savedFileAs(Object filename) {
    return 'Ficheiro guardado como $filename';
  }

  @override
  String get saveFile => 'Guardar ficheiro';

  @override
  String get saveFileToFolder => 'Guardar ficheiro nesta pasta';

  @override
  String get search => 'Procurar';

  @override
  String get searchForAChat => 'Procurar por conversa';

  @override
  String get security => 'Segurança';

  @override
  String get securityKey => 'Chave de segurança';

  @override
  String get securityKeyLost => 'Perdeste a chave de segurança?';

  @override
  String seenByUser(Object username) {
    return 'Visto por $username';
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Visto por $username e por $username2';
  }

  @override
  String get send => 'Enviar';

  @override
  String get sendAMessage => 'Enviar a mensagem';

  @override
  String get sendAsText => 'Enviar como texto';

  @override
  String get sendAudio => 'Enviar áudio';

  @override
  String get sendBugReports => 'Permitir enviar relatórios de problemas com o sentry.io';

  @override
  String get sendFile => 'Enviar ficheiro';

  @override
  String get sendImage => 'Enviar imagem';

  @override
  String get sendMessages => 'Enviar mensagens';

  @override
  String get sendOriginal => 'Enviar original';

  @override
  String get sendSticker => 'Enviar autocolante';

  @override
  String get sendVideo => 'Enviar vídeo';

  @override
  String sentAFile(Object username) {
    return '$username enviar um ficheiro';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username enviar um áudio';
  }

  @override
  String sentAPicture(Object username) {
    return '$username enviar uma imagem';
  }

  @override
  String sentASticker(Object username) {
    return '$username enviou um autocolante';
  }

  @override
  String sentAVideo(Object username) {
    return '$username enviou um vídeo';
  }
}
