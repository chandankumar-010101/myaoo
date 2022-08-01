

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Vietnamese (`vi`).
class L10nVi extends L10n {
  L10nVi([String locale = 'vi']) : super(locale);

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
  String get about => 'Giới thiệu';

  @override
  String get accept => 'Đồng ý';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username đã đồng ý lời mời';
  }

  @override
  String get account => 'Tài khoản';

  @override
  String get accountInformation => 'Thông tin tài khoản';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username đã kích hoạt mã hóa đầu cuối 2 chiều';
  }

  @override
  String get addEmail => 'Thêm email';

  @override
  String get addGroupDescription => 'Thêm mô tả cho nhóm';

  @override
  String get addNewFriend => 'Add new friend';

  @override
  String get addToSpace => 'Add to class';

  @override
  String get admin => 'Quản trị viên';

  @override
  String get alias => 'bí danh';

  @override
  String get all => 'All';

  @override
  String get allChats => 'All chats';

  @override
  String get alreadyHaveAnAccount => 'Bạn đã có tài khoản?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName đã trả lời cuộc gọi';
  }

  @override
  String get anyoneCanJoin => 'Mọi người đều có thể gia nhập';

  @override
  String get appLock => 'App lock';

  @override
  String get archive => 'Lưu trữ';

  @override
  String get archivedRoom => 'Phòng hội thảo đã lưu trữ';

  @override
  String get areGuestsAllowedToJoin => 'Khách vãng lai có được tham gia không';

  @override
  String get areYouSure => 'Bạn chắc chứ?';

  @override
  String get areYouSureYouWantToLogout => 'Bạn có chắc bạn muốn đăng xuất không?';

  @override
  String get askSSSSSign => 'To be able to sign the other person, please enter your secure store passphrase or recovery key.';

  @override
  String get askSSSSVerify => 'Vui lòng nhập mật khẩu bảo mật hoặc khóa khôi phục để chứng thực phiên của bạn.';

  @override
  String askVerificationRequest(Object username) {
    return 'Bạn có đồng ý yêu cầu chứng thực từ $username không?';
  }

  @override
  String get audioPlayerPause => 'Pause';

  @override
  String get audioPlayerPlay => 'Play';

  @override
  String get authentication => 'Xác thực';

  @override
  String get autoplayImages => 'Automatically play animated stickers and emotes';

  @override
  String get avatarHasBeenChanged => 'Ảnh đại diện đã được thay đổi';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Máy chủ nhà hỗ trợ kiểu đăng nhập:\n${serverVersions}\nNhưng ứng dụng này chỉ hỗ trợ:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Send on enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Máy chủ nhà hỗ trợ Spec phiên bản:\n{serverVerions}\nNhưng ứng dụng này chỉ hỗ trợ $supportedVersions';
  }

  @override
  String get banFromChat => 'Cấm khỏi cuộc trò chuyện';

  @override
  String get banned => 'Đã bị cấm';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username đã cấm $targetName';
  }

  @override
  String get blockDevice => 'Thiết bị bị chặn';

  @override
  String get blocked => 'Đã chặn';

  @override
  String get botMessages => 'Bot messages';

  @override
  String get bubbleSize => 'Bubble size';

  @override
  String get cachedKeys => 'Khóa đã được lưu vào bộ nhớ tạm';

  @override
  String get cancel => 'Hủy';

  @override
  String cantOpenUri(Object uri) {
    return 'Can\'t open the URI $uri';
  }

  @override
  String get changeDeviceName => 'Thay đổi tên thiết bị';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username đã thay đổi ảnh phòng chat';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username đã thay đổi mô tả phòng chat thành: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username đã thay đổi tên phòng chat thành: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username đã thay đổi quyền trong phòng chat';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username changed their displayname to: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username đã thay đổi quy tắc truy cập đối với khách';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username đã thay đổi quy tắc truy cập đối với khách thành: $rules';
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
    return '$username đã thay đổi ảnh đại diện của mình';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username đã đổi địa chỉ phòng chat';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username đã thay đổi đường dẫn mời';
  }

  @override
  String get changelog => 'Lịch sử thay đổi';

  @override
  String get changePassword => 'Thay đổi mật khẩu';

  @override
  String get changesHaveBeenSaved => 'Changes have been saved';

  @override
  String get changeTheHomeserver => 'Thay đổi máy chủ nhà';

  @override
  String get changeTheme => 'Change your style';

  @override
  String get changeTheNameOfTheGroup => 'Thay đổi tên nhóm';

  @override
  String get changeTheServer => 'Thay đổi máy chủ';

  @override
  String get changeWallpaper => 'Thay hình nền';

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
  String get chatBackup => 'Sao lưu cuộc trò chuyện';

  @override
  String get setupChatBackupDescription => 'To protect your messages, we have generated a security key for you.\nPlease keep this in a safe place, such as a password manager.';

  @override
  String get chatBackupDescription => 'Bản sao lưu cuộc trò chuyện của bạn được bảo mật bằng một khoá bảo mật. Bạn đừng làm mất nó.';

  @override
  String get chatDetails => 'Chi tiết cuộc trò chuyện';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat has been added to this class';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat has been removed from this class';

  @override
  String get chats => 'Chats';

  @override
  String get chooseAStrongPassword => 'Chọn một mật khẩu mạnh';

  @override
  String get chooseAUsername => 'Chọn tên người dùng';

  @override
  String get clearArchive => 'Clear archive';

  @override
  String get clearText => 'Clear text';

  @override
  String get close => 'Đóng';

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
  String get compareEmojiMatch => 'So sánh và đảm bảo các biểu tượng cảm xúc sau đây giống với các biểu tượng trên máy còn lại';

  @override
  String get compareNumbersMatch => 'So sánh và đảm bảo các số sau đây giống trên máy còn lại';

  @override
  String get configureChat => 'Configure chat';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get connect => 'Kết nối';

  @override
  String get connectionAttemptFailed => 'Kết nối thất bại';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Liên hệ đã được mời vào nhóm';

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
  String get copy => 'Sao chép';

  @override
  String get copyToClipboard => 'Copy to clipboard';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Không thể giải mã tin nhắn: $error';
  }

  @override
  String get couldNotSetAvatar => 'Không thể đặt ảnh đại diện';

  @override
  String get couldNotSetDisplayname => 'Không thể thay tên hiển thị';

  @override
  String countParticipants(Object count) {
    return '$count thành viên';
  }

  @override
  String get create => 'Tạo';

  @override
  String get createAccountNow => 'Tạo tài khoản mới ngay';

  @override
  String createdTheChat(Object username) {
    return '$username đã tạo cuộc trò chuyện';
  }

  @override
  String get createNewGroup => 'Tạo một nhóm mới';

  @override
  String get createNewSpace => 'New class';

  @override
  String get crossSigningDisabled => 'Cross-signing off';

  @override
  String get crossSigningEnabled => 'Cross-signing on';

  @override
  String get currentlyActive => 'Đang hoạt động';

  @override
  String get darkTheme => 'Dark';

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
  String get deactivateAccountWarning => 'Việc này sẽ vô hiệu hoá tài khoản của bạn. Điều này không thể đảo ngược được! Bạn chắc là vẫn muốn tiếp tục chứ?';

  @override
  String get defaultPermissionLevel => 'Default permission level';

  @override
  String get delete => 'Xoá';

  @override
  String get deleteAccount => 'Xoá tài khoản';

  @override
  String get deleteMessage => 'Xoá tin nhắn';

  @override
  String get deny => 'Từ chối';

  @override
  String get device => 'Thiết bị';

  @override
  String get deviceId => 'Mã xác định thiết bị';

  @override
  String get devices => 'Các thiết bị';

  @override
  String get deviceVerifyDescription => 'Mã hoá chỉ bảo mật khi tất cả các thiết bị đều được chứng thực';

  @override
  String get directChats => 'Direct Chats';

  @override
  String get discardPicture => 'Xoá hình ảnh';

  @override
  String get discover => 'Discover';

  @override
  String get discoverGroups => 'Discover groups';

  @override
  String get displaynameHasBeenChanged => 'Tên hiển thị đã được thay đổi';

  @override
  String get donate => 'Donate';

  @override
  String get dontAskAgain => 'Cancel and don\'t ask again';

  @override
  String get downloadFile => 'Tải ảnh xuống';

  @override
  String get edit => 'Edit';

  @override
  String get editBlockedServers => 'Edit blocked servers';

  @override
  String get editChatPermissions => 'Edit chat permissions';

  @override
  String get editDisplayname => 'Sửa tên hiển thị';

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
  String get emoteSettings => 'Cài đặt biểu tượng cảm xúc';

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
  String get everythingReady => 'Mọi thứ đã sẵn sàng!';

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
  String get next => 'Tiếp';

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
  String get noEncryptionForPublicRooms => 'Bạn chỉ có thể kích hoạt mã hoá khi phòng này không mở';

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
  String get pleaseEnterSecurityKey => 'Vui lòng nhập khoá bảo mật';

  @override
  String get pleaseEnterYourPassword => 'Please enter your password';

  @override
  String get pleaseEnterYourPin => 'Please enter your pin';

  @override
  String get pleaseEnterYourUsername => 'Please enter your username';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Vui lòng làm theo hướng dẫn trên trang web và bấm tiếp';

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
  String get securityKey => 'Khóa bảo mật';

  @override
  String get securityKeyLost => 'Thất lạc khoá bảo mật?';

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
  String get showPassword => 'Hiển thị mật khẩu';

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
  String get tapOnDeviceToVerify => 'Chạm vào một thiết bị để chứng thực';

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
  String get transferFromAnotherDevice => 'Chuyển từ thiết bị khác';

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
  String get verified => 'Đã xác thực';

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
    return 'Bạn sẽ được kết nối tới $homeserver';
  }

  @override
  String get zoomIn => 'Phóng to';

  @override
  String get zoomOut => 'Thu nhỏ';

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
