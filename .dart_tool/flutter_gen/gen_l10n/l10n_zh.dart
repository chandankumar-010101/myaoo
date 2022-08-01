

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Chinese (`zh`).
class L10nZh extends L10n {
  L10nZh([String locale = 'zh']) : super(locale);

  @override
  String get passwordsDoNotMatch => '密码不匹配！';

  @override
  String get pleaseEnterValidEmail => '请输入一个有效的电子邮件地址。';

  @override
  String get repeatPassword => '再次输入密码';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return '请至少输入 $min 个字符。';
  }

  @override
  String get about => '关于';

  @override
  String get accept => '接受';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username 已接受邀请';
  }

  @override
  String get account => '账户';

  @override
  String get accountInformation => '账户信息';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username 激活了端到端加密';
  }

  @override
  String get addEmail => '添加电子邮件';

  @override
  String get addGroupDescription => '添加一条群组介绍';

  @override
  String get addNewFriend => '添加新的好友';

  @override
  String get addToSpace => '加入空间';

  @override
  String get admin => '管理员';

  @override
  String get alias => '别名';

  @override
  String get all => '全部';

  @override
  String get allChats => '所有会话';

  @override
  String get alreadyHaveAnAccount => '已经有账户了？';

  @override
  String answeredTheCall(Object senderName) {
    return '已开始与 $senderName 通话';
  }

  @override
  String get anyoneCanJoin => '任何人都可以加入';

  @override
  String get appLock => '应用锁';

  @override
  String get archive => '存档';

  @override
  String get archivedRoom => '已存档的聊天室';

  @override
  String get areGuestsAllowedToJoin => '是否允许游客加入';

  @override
  String get areYouSure => '您确定吗？';

  @override
  String get areYouSureYouWantToLogout => '您确定要注销吗？';

  @override
  String get askSSSSSign => '请输入您的安全存储的密码短语或恢复密钥，以向对方签名。';

  @override
  String get askSSSSVerify => '请输入安全存储密码或恢复密钥以验证您的会话。';

  @override
  String askVerificationRequest(Object username) {
    return '是否接受来自 $username 的验证申请？';
  }

  @override
  String get audioPlayerPause => '暂停';

  @override
  String get audioPlayerPlay => '播放';

  @override
  String get authentication => '身份验证';

  @override
  String get autoplayImages => '自动播放动态贴纸和表情';

  @override
  String get avatarHasBeenChanged => '头像已更改';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return '主服务器支持的登录方式：\n${serverVersions}\n但本应用仅支持：\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => '按 Enter 键发送';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return '主服务器支持的 Spec 版本：\n${serverVersions}\n但本应用仅支持 $supportedVersions 版本';
  }

  @override
  String get banFromChat => '从对话中封禁';

  @override
  String get banned => '已被封禁';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username 封禁了 $targetName';
  }

  @override
  String get blockDevice => '屏蔽设备';

  @override
  String get blocked => '已屏蔽';

  @override
  String get botMessages => '机器人消息';

  @override
  String get bubbleSize => '气泡大小';

  @override
  String get cachedKeys => '密钥已缓存';

  @override
  String get cancel => '取消';

  @override
  String cantOpenUri(Object uri) {
    return '无法打开URI $uri';
  }

  @override
  String get changeDeviceName => '更改设备名称';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username 更改了会话头像';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username 将聊天描述更改为：\'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username 将聊天名称更改为：\'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username 更改了会话权限';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username 将展示名称更改为：\'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username 更改了游客访问规则';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username 更改了游客访问规则为：$rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username 更改了历史记录观察状态';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username 更改了历史记录观察状态到：$rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username 更改了加入的规则';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username 更改了加入的规则为：$joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username 更改了头像';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username 更改了聊天室别名';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username 更改了邀请链接';
  }

  @override
  String get changelog => '更改记录';

  @override
  String get changePassword => '更改密码';

  @override
  String get changesHaveBeenSaved => '更改已被保存';

  @override
  String get changeTheHomeserver => '更改主服务器';

  @override
  String get changeTheme => '改变风格';

  @override
  String get changeTheNameOfTheGroup => '更改了群组名称';

  @override
  String get changeTheServer => '更改服务器';

  @override
  String get changeWallpaper => '更改壁纸';

  @override
  String get changeYourAvatar => '更改您的头像';

  @override
  String get channelCorruptedDecryptError => '加密已被破坏';

  @override
  String get chat => '会话';

  @override
  String get yourUserId => '您的 ID：';

  @override
  String get setupChatBackup => '设置聊天记录备份';

  @override
  String get iWroteDownTheKey => '我已经记下了密钥';

  @override
  String get yourChatBackupHasBeenSetUp => '您的聊天记录备份已设置。';

  @override
  String get chatBackup => '聊天记录备份';

  @override
  String get setupChatBackupDescription => '为了保护您的信息，我们为您生成了一个安全密钥。\n请将其保存在安全的地方，如密码管理器中。';

  @override
  String get chatBackupDescription => '您的聊天记录备份已由安全密钥加密。请确保您不会丢失它。';

  @override
  String get chatDetails => '会话详情';

  @override
  String get chatHasBeenAddedToThisSpace => '会话已添加到此空间';

  @override
  String get chatHasBeenRemovedFromThisSpace => '会话已从此空间移除';

  @override
  String get chats => '聊天';

  @override
  String get chooseAStrongPassword => '输入一个强密码';

  @override
  String get chooseAUsername => '输入一个昵称';

  @override
  String get clearArchive => '清除存档';

  @override
  String get clearText => '清除文本';

  @override
  String get close => '关闭';

  @override
  String get commandHint_ban => '在此聊天室封禁该用户';

  @override
  String get commandHint_clearcache => '清除缓存';

  @override
  String get commandHint_create => '创建空的群聊\n使用 --no-encryption 选项来禁用加密';

  @override
  String get commandHint_discardsession => '丢弃会话';

  @override
  String get commandHint_dm => '启动一对一聊天\n使用 --no-encryption 选项来禁用加密';

  @override
  String get commandHint_html => '发送 HTML 格式化文本';

  @override
  String get commandHint_invite => '邀请该用户加入此聊天室';

  @override
  String get commandHint_join => '加入该聊天室';

  @override
  String get commandHint_kick => '将该用户移出此聊天室';

  @override
  String get commandHint_leave => '退出该聊天室';

  @override
  String get commandHint_me => '介绍自己';

  @override
  String get commandHint_myroomavatar => '设置您的聊天室头像（通过 mxc-uri）';

  @override
  String get commandHint_myroomnick => '设置您的聊天室昵称';

  @override
  String get commandHint_op => '设置该用户的权限等级（默认：50）';

  @override
  String get commandHint_plain => '发送纯文本';

  @override
  String get commandHint_react => '将回复作为响应发送';

  @override
  String get commandHint_send => '发送文本';

  @override
  String get commandHint_unban => '在此聊天室解封该用户';

  @override
  String get commandInvalid => '指令无效';

  @override
  String commandMissing(Object command) {
    return '$command 不是指令。';
  }

  @override
  String get compareEmojiMatch => '对比并确认这些表情匹配其他那些设备:';

  @override
  String get compareNumbersMatch => '比较以下数字，确保它们和另一设备上的相同:';

  @override
  String get configureChat => '配置聊天';

  @override
  String get confirm => '确认';

  @override
  String get connect => '连接';

  @override
  String get connectionAttemptFailed => '连接尝试失败';

  @override
  String get contactHasBeenInvitedToTheGroup => '联系人已被邀请至群组';

  @override
  String get containsDisplayName => '包含显示名称';

  @override
  String get containsUserName => '包含用户名';

  @override
  String get contentHasBeenReported => '此内容已被报告至服务器管理员处';

  @override
  String get contentViewer => '内容查看器';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get copy => '复制';

  @override
  String get copyToClipboard => '复制到剪贴板';

  @override
  String couldNotDecryptMessage(Object error) {
    return '不能解密消息:$error';
  }

  @override
  String get couldNotSetAvatar => '不能设定头像';

  @override
  String get couldNotSetDisplayname => '不能设定显示名称';

  @override
  String countParticipants(Object count) {
    return '$count 名参与者';
  }

  @override
  String get create => '创建';

  @override
  String get createAccountNow => '现在创建账户';

  @override
  String createdTheChat(Object username) {
    return '$username 创建了聊天';
  }

  @override
  String get createNewGroup => '创建新群组';

  @override
  String get createNewSpace => '创建新空间';

  @override
  String get crossSigningDisabled => '交叉签名未启用';

  @override
  String get crossSigningEnabled => '交叉签名已启用';

  @override
  String get currentlyActive => '目前活跃';

  @override
  String get darkTheme => '深色';

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
  String get deactivateAccountWarning => '这将停用您的用户账户。这不能被撤销，您确定吗？';

  @override
  String get defaultPermissionLevel => '默认权限级别';

  @override
  String get delete => '删除';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get deleteMessage => '删除消息';

  @override
  String get deny => '否认';

  @override
  String get device => '设备';

  @override
  String get deviceId => '设备 ID';

  @override
  String get devices => '设备';

  @override
  String get deviceVerifyDescription => '加密仅在所有设备都被验证时才安全。';

  @override
  String get directChats => '一对一聊天';

  @override
  String get discardPicture => '丢弃图片';

  @override
  String get discover => '探索';

  @override
  String get discoverGroups => '发现群组';

  @override
  String get displaynameHasBeenChanged => '显示名称已被改变';

  @override
  String get donate => '捐助';

  @override
  String get dontAskAgain => '取消并不再询问';

  @override
  String get downloadFile => '下载文件';

  @override
  String get edit => '编辑';

  @override
  String get editBlockedServers => '编辑被阻止的服务器';

  @override
  String get editChatPermissions => '编辑聊天权限';

  @override
  String get editDisplayname => '编辑显示名称';

  @override
  String get editJitsiInstance => '编辑 Jitsi 实例';

  @override
  String get editRoomAliases => '编辑聊天室别名';

  @override
  String get editRoomAvatar => '编辑聊天室头像';

  @override
  String get emoteExists => '表情已存在！';

  @override
  String get emoteInvalid => '无效的表情快捷码！';

  @override
  String get emotePacks => '聊天室的表情包';

  @override
  String get emoteSettings => '表情设置';

  @override
  String get emoteShortcode => '表情快捷码';

  @override
  String get emoteWarnNeedToPick => '您需要选择一个表情快捷码和一张图片！';

  @override
  String get emptyChat => '空聊天';

  @override
  String get enableChatBackup => '启用聊天记录备份以确保不会丢失您的聊天记录。';

  @override
  String get enableEmotesGlobally => '在全局启用表情包';

  @override
  String get enableEncryption => '启用加密';

  @override
  String get enableEncryptionWarning => '您之后将无法停用加密，确定吗？';

  @override
  String get encrypted => '加密的';

  @override
  String get encryption => '加密';

  @override
  String get encryptionAlgorithm => '加密算法';

  @override
  String get encryptionNotEnabled => '加密未启用';

  @override
  String get end2endEncryptionSettings => '端到端加密设置';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName 结束了通话';
  }

  @override
  String get enterAGroupName => '输入群组名称';

  @override
  String get enterAnEmailAddress => '输入一个电子邮件地址';

  @override
  String get enterASpacepName => '输入空间名称';

  @override
  String get enterAUsername => '输入用户名';

  @override
  String get homeserver => '服务器';

  @override
  String get enterYourHomeserver => '输入您的主服务器地址';

  @override
  String errorObtainingLocation(Object error) {
    return '取得地址错误: $error';
  }

  @override
  String get everythingReady => '一切就绪！';

  @override
  String get extremeOffensive => '令人极度反感';

  @override
  String get fileName => '文件名';

  @override
  String get fileSize => '文件大小';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => '字体大小';

  @override
  String get forward => '转发';

  @override
  String get friday => '星期五';

  @override
  String get friends => '好友';

  @override
  String get fromJoining => '自加入起';

  @override
  String get fromTheInvitation => '自邀请起';

  @override
  String get goToTheNewRoom => '前往新的聊天室';

  @override
  String get group => '群组';

  @override
  String get groupDescription => '群组描述';

  @override
  String get groupDescriptionHasBeenChanged => '群组描述已被更改';

  @override
  String get groupIsPublic => '群组是公开的';

  @override
  String get groups => '群组';

  @override
  String groupWith(Object displayname) {
    return '名称为$displayname的群组';
  }

  @override
  String get guestsAreForbidden => '游客被禁止';

  @override
  String get guestsCanJoin => '游客可以加入';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username 撤回了对 $targetName 的邀请';
  }

  @override
  String get help => '帮助';

  @override
  String get hideRedactedEvents => '隐藏编辑事件';

  @override
  String get hideUnknownEvents => '隐藏未知事件';

  @override
  String get homeserverIsNotCompatible => '主服务器不兼容';

  @override
  String get howOffensiveIsThisContent => '这些内容有多令人反感？';

  @override
  String get id => 'ID';

  @override
  String get identity => '身份';

  @override
  String get ignore => '忽略';

  @override
  String get ignoredUsers => '已忽略的用户';

  @override
  String get ignoreListDescription => '您可以忽略打扰您的用户。您将不会收到来自忽略列表中用户的任何消息或聊天室邀请。';

  @override
  String get ignoreUsername => '忽略用户名';

  @override
  String get iHaveClickedOnLink => '我已经点击了链接';

  @override
  String get incorrectPassphraseOrKey => '不正确的密码短语或恢复密钥';

  @override
  String get inoffensive => '不令人反感';

  @override
  String get invalidEmail => '无效的电子邮件';

  @override
  String get inviteContact => '邀请联系人';

  @override
  String inviteContactToGroup(Object groupName) {
    return '邀请联系人到 $groupName';
  }

  @override
  String get invited => '已邀请';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username 邀请了 $targetName';
  }

  @override
  String get invitedUsersOnly => '仅被邀请用户';

  @override
  String get inviteForMe => '来自我的邀请';

  @override
  String inviteText(Object username, Object link) {
    return '$username 邀请您使用 FluffyChat。 \n1. 安装 FluffyChat：https://fluffychat.im \n2. 注册或登录 \n3. 打开该邀请链接：$link';
  }

  @override
  String get isDeviceKeyCorrect => '下列设备密钥是否正确？';

  @override
  String get isTyping => '正在输入…';

  @override
  String joinedTheChat(Object username) {
    return '$username 加入了聊天';
  }

  @override
  String get joinRoom => '加入聊天室';

  @override
  String get keysCached => '密钥已被缓存';

  @override
  String get keysMissing => '密钥缺失';

  @override
  String kicked(Object username, Object targetName) {
    return '$username 踢了 $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username 踢了 $targetName 并将其封禁';
  }

  @override
  String get kickFromChat => '从聊天室踢出';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return '上次活跃: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => '上次使用的IP';

  @override
  String get lastSeenLongTimeAgo => '很长时间未上线';

  @override
  String get leave => '离开';

  @override
  String get leftTheChat => '离开了聊天';

  @override
  String get license => '许可证';

  @override
  String get lightTheme => '浅色';

  @override
  String loadCountMoreParticipants(Object count) {
    return '加载 $count 个更多的参与者';
  }

  @override
  String get loadingPleaseWait => '加载中…请等待。';

  @override
  String get showSpaces => '显示空间列表';

  @override
  String get loadMore => '加载更多…';

  @override
  String get locationDisabledNotice => '位置服务已禁用.请启用此服务以分享你的位置.';

  @override
  String get locationPermissionDeniedNotice => '位置权限被拒绝.请授予此权限以分享你的位置.';

  @override
  String get login => '登录';

  @override
  String logInTo(Object homeserver) {
    return '登录 $homeserver';
  }

  @override
  String get loginWithOneClick => '一键登录';

  @override
  String get logout => '注销';

  @override
  String get makeAModerator => '创建监管者';

  @override
  String get makeAnAdmin => '创建管理员';

  @override
  String get makeSureTheIdentifierIsValid => '确保识别码正确';

  @override
  String get memberChanges => '成员变更';

  @override
  String get mention => '提到';

  @override
  String get messages => '消息';

  @override
  String get messageWillBeRemovedWarning => '消息将对所有参与者移除';

  @override
  String get moderator => '监管者';

  @override
  String get monday => '星期一';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 个更多事件',
      other: '$count 个更多事件',
    );
  }

  @override
  String get muteChat => '将该聊天静音';

  @override
  String get needPantalaimonWarning => '请注意当前您需要Pantalaimon以使用端到端加密功能。';

  @override
  String get newChat => '新的聊天';

  @override
  String get newMessageInFluffyChat => '来自 FluffyChat 的新消息';

  @override
  String get newVerificationRequest => '新的验证请求！';

  @override
  String get next => '下一步';

  @override
  String get no => '不';

  @override
  String get noConnectionToTheServer => '未与服务器建立连接';

  @override
  String get noCrossSignBootstrap => 'Fluffychat 目前不支持启用交叉签名。请在 Element 中启用。';

  @override
  String get noDescription => '没有说明';

  @override
  String get noEmotesFound => '未找到表情。😕';

  @override
  String get noEncryptionForPublicRooms => '您只能在聊天室不可被公众访问时才能启用加密。';

  @override
  String get noGoogleServicesWarning => '看起来您手机上没有谷歌服务框架。这对保护您的隐私而言是个好决定！要接收 FluffyChat 的推送通知，推荐您使用 https://microg.org/ 或 https://unifiedpush.org/。';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 不是一个Matrix服务器,试试$server2?';
  }

  @override
  String get createNewChatExplaination => '请他人扫描上方二维码以开始新的聊天，若他人无法扫码，您可以直接点击二维码分享您的邀请链接。';

  @override
  String get shareYourInviteLink => '分享您的邀请链接';

  @override
  String get typeInInviteLinkManually => '手动输入邀请链接…';

  @override
  String get scanQrCode => '扫描二维码';

  @override
  String get noMegolmBootstrap => 'FluffyChat 目前不支持启用在线密钥备份。请在 Element 中启用。';

  @override
  String get none => '无';

  @override
  String get newPasswordDescription => '若您要使用密码重置功能，您在注册之后需要给账户添加一个电子邮件地址。';

  @override
  String get newUsernameDescription => '您的 ID 格式为 @username:servername';

  @override
  String get noPasswordRecoveryDescription => '您尚未添加恢复密码的方法。';

  @override
  String get noPermission => '没有权限';

  @override
  String get noPublicRoomsFound => '没有找到公共聊天室…';

  @override
  String get noRoomsFound => '未找到聊天室…';

  @override
  String get noStatusesFound => '目前还没有发现任何状态。';

  @override
  String get notifications => '通知';

  @override
  String get notificationsEnabledForThisAccount => '已为此账户启用通知';

  @override
  String get notSupportedInWeb => '在网页版不支持';

  @override
  String numberSelected(Object number) {
    return '$number 已选择';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count 人正在输入…';
  }

  @override
  String get obtainingLocation => '获取位置中…';

  @override
  String get offensive => '令人反感';

  @override
  String get offline => '离线';

  @override
  String get ok => '好';

  @override
  String get online => '在线';

  @override
  String get onlineKeyBackupDisabled => '在线密钥备份被停用';

  @override
  String get onlineKeyBackupEnabled => '在线密钥备份已启用';

  @override
  String get oopsPushError => '哎呀！十分不幸，配置推送通知时发生了错误。';

  @override
  String get oopsSomethingWentWrong => '哎呀，出了一些错误…';

  @override
  String get openAppToReadMessages => '打开应用以查看消息';

  @override
  String get openCamera => '打开相机';

  @override
  String get openVideoCamera => '打开相机拍摄视频';

  @override
  String get oneClientLoggedOut => '您的一个客户端已登出';

  @override
  String get addAccount => '添加账户';

  @override
  String get editBundlesForAccount => '编辑该账户的集合';

  @override
  String get addToBundle => '添加到集合中';

  @override
  String get removeFromBundle => '从此集合中移除';

  @override
  String get bundleName => '集合名称';

  @override
  String get enableMultiAccounts => '（测试功能）在本设备上添加多个账户';

  @override
  String get openInMaps => '在地图中打开';

  @override
  String get link => '链接';

  @override
  String get serverRequiresEmail => '此服务器需要验证您的电子邮件地址以进行注册。';

  @override
  String get optionalGroupName => '(可选) 群组名称';

  @override
  String get or => '或';

  @override
  String get participant => '参与者';

  @override
  String get participatingUserDevices => '参与者的设备';

  @override
  String get passphraseOrKey => '密码短语或恢复密钥';

  @override
  String get password => '密码';

  @override
  String get passwordForgotten => '忘记密码';

  @override
  String get passwordHasBeenChanged => '密码已被更改';

  @override
  String get passwordRecovery => '密码恢复';

  @override
  String get people => '联系人';

  @override
  String get pickImage => '选择图像';

  @override
  String get pin => '固定';

  @override
  String play(Object fileName) {
    return '播放 $fileName';
  }

  @override
  String get pleaseChoose => '请选择';

  @override
  String get pleaseChooseAPasscode => '请选择一个密码';

  @override
  String get pleaseChooseAUsername => '请选择用户名';

  @override
  String get pleaseClickOnLink => '请点击电子邮件中的链接，然后继续。';

  @override
  String get pleaseEnter4Digits => '请输入 4 位数字或留空以停用应用锁。';

  @override
  String get pleaseEnterAMatrixIdentifier => '请输入 Matrix ID。';

  @override
  String get pleaseEnterSecurityKey => '请键入您的安全密钥：';

  @override
  String get pleaseEnterYourPassword => '请输入您的密码';

  @override
  String get pleaseEnterYourPin => '请输入您的 PIN';

  @override
  String get pleaseEnterYourUsername => '请输入您的用户名';

  @override
  String get pleaseFollowInstructionsOnWeb => '请按照网站上的提示，点击下一步。';

  @override
  String get privacy => '隐私';

  @override
  String get publicGroups => '公共群组';

  @override
  String get publicKey => '公钥';

  @override
  String get publicRooms => '公开聊天室';

  @override
  String get publicSpace => '公共空间';

  @override
  String get pushRules => '推送规则';

  @override
  String get reason => '原因';

  @override
  String get recording => '录制';

  @override
  String redactedAnEvent(Object username) {
    return '$username 编辑了一个事件';
  }

  @override
  String get redactMessage => '重新编辑信息';

  @override
  String get register => '注册';

  @override
  String get reject => '拒绝';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username 拒绝了邀请';
  }

  @override
  String get rejoin => '重新加入';

  @override
  String get remove => '移除';

  @override
  String get removeAllOtherDevices => '移除其他全部设备';

  @override
  String removedBy(Object username) {
    return '被$username移除';
  }

  @override
  String get removeDevice => '移除设备';

  @override
  String get unbanFromChat => '解禁聊天';

  @override
  String get removeMessage => '移除消息';

  @override
  String get removeYourAvatar => '移除您的头像';

  @override
  String get renderRichContent => '渲染富文本内容';

  @override
  String get replaceRoomWithNewerVersion => '用较新的版本替换聊天室';

  @override
  String get reply => '回复';

  @override
  String get reportMessage => '举报信息';

  @override
  String get requestPermission => '请求权限';

  @override
  String get requestToReadOlderMessages => '请求读取旧的消息';

  @override
  String get revokeAllPermissions => '撤销全部权限';

  @override
  String get roomHasBeenUpgraded => '聊天室已升级';

  @override
  String get roomVersion => '聊天室版本';

  @override
  String get saturday => '星期六';

  @override
  String savedFileAs(Object filename) {
    return '保存文件为 $filename';
  }

  @override
  String get saveFile => '保存文件';

  @override
  String get saveFileToFolder => '将文件保存到此文件夹';

  @override
  String get search => '搜索';

  @override
  String get searchForAChat => '搜索聊天室';

  @override
  String get security => '安全';

  @override
  String get securityKey => '安全密钥';

  @override
  String get securityKeyLost => '丢失安全密钥？';

  @override
  String seenByUser(Object username) {
    return '被 $username 看见';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '被 $username 和 $count 个其他人看见',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return '被 $username 和 $username2 看见';
  }

  @override
  String get send => '发送';

  @override
  String get sendAMessage => '发送一条消息';

  @override
  String get sendAsText => '以文本发送';

  @override
  String get sendAudio => '发送音频';

  @override
  String get sendBugReports => '允许向 sentry.io 发送错误报告';

  @override
  String get sendFile => '发送文件';

  @override
  String get sendImage => '发送图像';

  @override
  String get sendMessages => '发送消息';

  @override
  String get sendOriginal => '发送原图';

  @override
  String get sendSticker => '发送贴纸';

  @override
  String get sendVideo => '发送视频';

  @override
  String sentAFile(Object username) {
    return '$username 发送了文件';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username 发送了音频';
  }

  @override
  String sentAPicture(Object username) {
    return '$username 发送了图片';
  }

  @override
  String sentASticker(Object username) {
    return '$username 发送了贴纸';
  }

  @override
  String sentAVideo(Object username) {
    return '$username 发送了视频';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName 发送了通话信息';
  }

  @override
  String get sentryInfo => '关于您隐私的信息: https://sentry.io/security/';

  @override
  String get sessionVerified => '会话已验证';

  @override
  String get separateChatTypes => '分开私聊、群组和空间';

  @override
  String get setAProfilePicture => '设置个人资料图片';

  @override
  String get setAsCanonicalAlias => '设为主要别名';

  @override
  String get setCustomEmotes => '设置自定义表情';

  @override
  String get setGroupDescription => '设置群组描述';

  @override
  String get setInvitationLink => '设置邀请链接';

  @override
  String get setPermissionsLevel => '设置权限级别';

  @override
  String get setStatus => '设置状态';

  @override
  String get settings => '设置';

  @override
  String get share => '分享';

  @override
  String sharedTheLocation(Object username) {
    return '$username 分享了位置';
  }

  @override
  String get shareLocation => '分享位置';

  @override
  String get showDirectChatsInSpaces => '在空间中显示相关私聊';

  @override
  String get showPassword => '显示密码';

  @override
  String get signUp => '注册';

  @override
  String get singlesignon => '单点登录';

  @override
  String get skip => '跳过';

  @override
  String get soundVibrationLedColor => '声音、振动和 LED 颜色';

  @override
  String get sourceCode => '源代码';

  @override
  String get spaceIsPublic => '空间是公开的';

  @override
  String get spaceName => '空间名称';

  @override
  String startedACall(Object senderName) {
    return '$senderName 开始了通话';
  }

  @override
  String get startYourFirstChat => '现在开始您的第一个聊天！🙂\n- 点击“新聊天”按钮\n- 输入好友的二维码\n- 聊得开心';

  @override
  String get status => '状态';

  @override
  String get statusExampleMessage => '您今天怎么样？';

  @override
  String get submit => '提交';

  @override
  String get sunday => '星期日';

  @override
  String get synchronizingPleaseWait => '同步中…请等待。';

  @override
  String get systemTheme => '系统';

  @override
  String get tapOnDeviceToVerify => '点选一部设备进行验证';

  @override
  String get tapToShowImage => '点击以显示图片';

  @override
  String get tapToShowMenu => '点击以显示菜单';

  @override
  String get theyDontMatch => '它们不匹配';

  @override
  String get theyMatch => '它们匹配';

  @override
  String get thisRoomHasBeenArchived => '该聊天室已被归档。';

  @override
  String get thursday => '星期四';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$suffix $hours12时$minutes分';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => '切换收藏';

  @override
  String get toggleMuted => '切换静音';

  @override
  String get toggleUnread => '标记已读/未读';

  @override
  String get tooManyRequestsWarning => '请求太多。请稍后再试！';

  @override
  String get transferFromAnotherDevice => '从其他设备传输';

  @override
  String get tryToSendAgain => '尝试重新发送';

  @override
  String get tuesday => '星期二';

  @override
  String get unavailable => '不可用';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username 解封了 $targetName';
  }

  @override
  String get unblockDevice => '解锁设备';

  @override
  String get unknownDevice => '未知设备';

  @override
  String get unknownEncryptionAlgorithm => '未知加密算法';

  @override
  String unknownEvent(Object type) {
    return '未知事件 \'$type\'';
  }

  @override
  String get unknownSessionVerify => '未知会话，请验证';

  @override
  String get unlockChatBackup => '解锁聊天记录备份';

  @override
  String get unmuteChat => '解除聊天的静音';

  @override
  String get unpin => '取消固定';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 unread chat',
      other: '$unreadCount 个未读聊天',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 unread message',
      other: '$unreadEvents 条未读消息',
    );
  }

  @override
  String get useAmoledTheme => '使用适合 AMOLED 屏的颜色？';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username 和其他 $count 人正在输入…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username 和 $username2 正在输入…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username 正在输入…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username 离开了聊天';
  }

  @override
  String get username => '用户名';

  @override
  String get userNotVerified => '用户未验证';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username 发送了一个 $type 事件';
  }

  @override
  String get userUnknownVerification => '用户的验证状态未知';

  @override
  String get userVerified => '用户已验证';

  @override
  String get unverified => '未认证';

  @override
  String get verified => '已验证';

  @override
  String get verifiedSession => '成功验证会话！';

  @override
  String get verify => '验证';

  @override
  String get verifyManual => '手动验证';

  @override
  String get verifyStart => '开始验证';

  @override
  String get verifySuccess => '您已成功验证！';

  @override
  String get verifyTitle => '验证其他账户';

  @override
  String get verifyUser => '验证用户';

  @override
  String get videoCall => '视频通话';

  @override
  String get visibilityOfTheChatHistory => '聊天记录的可见性';

  @override
  String get visibleForAllParticipants => '对所有参与者可见';

  @override
  String get visibleForEveryone => '对所有人可见';

  @override
  String get voiceMessage => '语音消息';

  @override
  String get waitingPartnerAcceptRequest => '等待对方接受请求…';

  @override
  String get waitingPartnerEmoji => '等待对方接受 emoji…';

  @override
  String get waitingPartnerNumbers => '等待对方接受数字…';

  @override
  String get wallpaper => '壁纸';

  @override
  String get warning => '警告！';

  @override
  String get warningEncryptionInBeta => '端到端加密目前在测试阶段！请自行承担风险！';

  @override
  String get wednesday => '星期三';

  @override
  String get welcomeText => '欢迎来到 Matrix 网络中最可爱的即时通讯应用。';

  @override
  String get weSentYouAnEmail => '我们向您发送了一封电子邮件';

  @override
  String get whoCanPerformWhichAction => '谁可以执行哪些操作';

  @override
  String get whoIsAllowedToJoinThisGroup => '谁被允许加入本群组';

  @override
  String get whyDoYouWantToReportThis => '您举报的理由是什么？';

  @override
  String get wipeChatBackup => '确定要清除您的聊天记录备份以创建新的安全密钥吗？';

  @override
  String get withTheseAddressesRecoveryDescription => '通过这些地址，您可以恢复密码。';

  @override
  String get writeAMessage => '写一条消息…';

  @override
  String get yes => '是';

  @override
  String get you => '您';

  @override
  String get youAreInvitedToThisChat => '您被邀请到该聊天';

  @override
  String get youAreNoLongerParticipatingInThisChat => '您已不再参与此聊天';

  @override
  String get youCannotInviteYourself => '您不能邀请您自己';

  @override
  String get youHaveBeenBannedFromThisChat => '您已被该聊天封禁';

  @override
  String get yourChatsAreBeingSynced => '正在同步您的聊天…';

  @override
  String get yourOwnUsername => '您自己的用户名';

  @override
  String get yourPublicKey => '您的公钥';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return '您将连接到 $homeserver';
  }

  @override
  String get zoomIn => '放大';

  @override
  String get zoomOut => '缩小';

  @override
  String get messageInfo => '消息信息';

  @override
  String get time => '时间';

  @override
  String get messageType => '消息类型';

  @override
  String get sender => '发送者';

  @override
  String get openGallery => '打开图库';

  @override
  String get removeFromSpace => '从空间删除';

  @override
  String get removeFromSpaceDescription => '这将从当前空间中删除此聊天。 但它仍在“所有聊天”下可见。';

  @override
  String get addToSpaceDescription => '选择一个空间以添加此聊天。';

  @override
  String get start => '开始';

  @override
  String get setupChatBackupNow => '立即设置您的聊天备份';

  @override
  String get pleaseEnterSecurityKeyDescription => '要解锁您的聊天备份，请输入您在之前会话中生成的安全密钥。 您的安全密钥不是您的密码。';

  @override
  String get saveTheSecurityKeyNow => '立即保存安全密钥';

  @override
  String get addToStory => '添加到 Story';

  @override
  String get publish => '发布';

  @override
  String get whoCanSeeMyStories => '谁能看到我的 Story？';

  @override
  String get unsubscribeStories => '取消 Story 订阅';

  @override
  String get thisUserHasNotPostedAnythingYet => '该用户尚未在 Story 发布任何内容';

  @override
  String get yourStory => '你的 Story';

  @override
  String get replyHasBeenSent => '已发送回复';

  @override
  String videoWithSize(Object size) {
    return '视频 ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return '自 $date 起的 Story: \n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => '请注意，人们可以在你的 Story 中看到彼此并相互联系。';

  @override
  String get whatIsGoingOn => '发生什么事了？';

  @override
  String get addDescription => '添加描述';

  @override
  String get storyPrivacyWarning => '请注意，人们可以在你的 Story 中看到和联系彼此。您的故事在 24 小时内可见，但不能保证它们将从所有设备和服务器上删除。';

  @override
  String get iUnderstand => '我了解';

  @override
  String get openChat => '打开聊天';

  @override
  String get markAsRead => '标为已读';

  @override
  String get reportUser => '举报用户';

  @override
  String get dismiss => '驳回';

  @override
  String get matrixWidgets => 'Matrix 小部件';

  @override
  String get integrationsNotImplemented => '尚无法编辑小部件和集成。';

  @override
  String get editIntegrations => '编辑小部件和集成';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender 通过 $reaction 进行了回应';
  }

  @override
  String get pinMessage => '置顶到聊天室';

  @override
  String get pinnedEventsError => '加载置顶消息时出错';

  @override
  String get confirmEventUnpin => '你确定要永久性取消置顶这一活动吗？';

  @override
  String get emojis => '颜文字';

  @override
  String get placeCall => '打电话';

  @override
  String get voiceCall => '语音通话';

  @override
  String get unsupportedAndroidVersion => '不受支持的 Android 版本';

  @override
  String get unsupportedAndroidVersionLong => '这个功能需要较新版本的 Android 系统。请检查更新或 Lineage OS 支持。';

  @override
  String get videoCallsBetaWarning => '请注意，视频通话目前处于测试阶段。它们可能不能像预期的那样工作，或者在所有平台上都不能工作。';

  @override
  String get experimentalVideoCalls => '实验性的视频通话';

  @override
  String get emailOrUsername => '电子邮箱或用户名';

  @override
  String switchToAccount(Object number) {
    return '切换到账户 $number';
  }

  @override
  String get nextAccount => '下个账户';

  @override
  String get previousAccount => '上个账户';

  @override
  String get editWidgets => '编辑小部件';

  @override
  String get addWidget => '添加小部件';

  @override
  String get widgetVideo => '视频';

  @override
  String get widgetEtherpad => '文本笔记';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => '自定义';

  @override
  String get widgetName => '名称';

  @override
  String get widgetUrlError => '这不是有效的 URL。';

  @override
  String get widgetNameError => '请提供显示名称。';

  @override
  String get errorAddingWidget => '添加小部件出错。';

  @override
  String get youRejectedTheInvitation => '你拒绝了邀请';

  @override
  String get youJoinedTheChat => '你加入了聊天';

  @override
  String get youAcceptedTheInvitation => '你接受了邀请';

  @override
  String youBannedUser(Object user) {
    return '你封禁了 $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(Object user) {
    return '你撤回了对 $user 的邀请';
  }

  @override
  String youInvitedBy(Object user) {
    return '你受到 $user 的邀请';
  }

  @override
  String youInvitedUser(Object user) {
    return '你邀请了 $user';
  }

  @override
  String youKicked(Object user) {
    return '你踢掉了 $user';
  }

  @override
  String youKickedAndBanned(Object user) {
    return '你踢掉并封禁了 $user';
  }

  @override
  String youUnbannedUser(Object user) {
    return '你解除了对 $user 的封禁';
  }

  @override
  String get noEmailWarning => '请输入有效电子邮件地址。否则你将无法重置密码。如果你不想输入邮件地址，再次轻点按钮以继续。';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class L10nZhHant extends L10nZh {
  L10nZhHant(): super('zh_Hant');

  @override
  String get passwordsDoNotMatch => '密碼不匹配！';

  @override
  String get pleaseEnterValidEmail => '請輸入一個有效的電子郵件地址。';

  @override
  String get repeatPassword => '再次輸入密碼';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return '請至少輸入 $min 个字元。';
  }

  @override
  String get about => '關於';

  @override
  String get accept => '接受';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username已接受邀請';
  }

  @override
  String get account => '帳號';

  @override
  String get accountInformation => '帳號資訊';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username已啟用點對點加密';
  }

  @override
  String get addEmail => '新增電子郵件';

  @override
  String get addGroupDescription => '新增一個群組描述';

  @override
  String get addNewFriend => '新增朋友';

  @override
  String get addToSpace => '加入空間';

  @override
  String get admin => '管理員';

  @override
  String get alias => '別稱';

  @override
  String get all => '全部';

  @override
  String get allChats => '所有會話';

  @override
  String get alreadyHaveAnAccount => '已經有帳號了？';

  @override
  String answeredTheCall(Object senderName) {
    return '已開始與$senderName通話';
  }

  @override
  String get anyoneCanJoin => '任何人可以加入';

  @override
  String get appLock => '密碼鎖定';

  @override
  String get archive => '封存';

  @override
  String get archivedRoom => '已封存的對話';

  @override
  String get areGuestsAllowedToJoin => '是否允許訪客加入';

  @override
  String get areYouSure => '您確定嗎？';

  @override
  String get areYouSureYouWantToLogout => '您確定要登出嗎？';

  @override
  String get askSSSSSign => '請輸入您安全儲存的密碼短語或恢復金鑰，以向對方簽名。';

  @override
  String get askSSSSVerify => '請輸入您安全儲存的密碼短語或恢復金鑰以驗證您的工作階段。';

  @override
  String askVerificationRequest(Object username) {
    return '是否接受來自$username的驗證申請？';
  }

  @override
  String get audioPlayerPause => '暫停';

  @override
  String get audioPlayerPlay => '播放';

  @override
  String get authentication => '身份驗證';

  @override
  String get autoplayImages => '自動播放動態貼圖和表情';

  @override
  String get avatarHasBeenChanged => '頭貼已變更';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return '目前伺服器支援的登入類型：\n${serverVersions}\n但本應用程式僅支援：\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => '按 Enter 鍵發送';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return '目前伺服器支援的Spec版本：\n${serverVersions}\n但本應用程式僅支援$supportedVersions';
  }

  @override
  String get banFromChat => '已從聊天室中封禁';

  @override
  String get banned => '已被封禁';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username封禁了$targetName';
  }

  @override
  String get blockDevice => '封鎖裝置';

  @override
  String get blocked => '已封鎖';

  @override
  String get botMessages => '機器人訊息';

  @override
  String get cachedKeys => '金鑰已快取';

  @override
  String get cancel => '取消';

  @override
  String cantOpenUri(Object uri) {
    return '無法打開URI $uri';
  }

  @override
  String get changeDeviceName => '變更裝置名稱';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username變更了對話頭貼';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username變更了對話介紹為：「$description」';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username變更了暱稱為：「$chatname」';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username變更了對話權限';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username 變更了顯示名稱為：「$displayname」';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username變更了訪客訪問規則';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username變更了訪客訪問規則為：$rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username變更了歷史記錄觀察狀態';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username變更了歷史紀錄觀察狀態到：$rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username變更了加入的規則';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username變更了加入的規則為：$joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username變更了頭貼';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username變更了聊天室名';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username變更了邀請連結';
  }

  @override
  String get changelog => '變更日誌';

  @override
  String get changePassword => '變更密碼';

  @override
  String get changesHaveBeenSaved => '變更已被儲存';

  @override
  String get changeTheHomeserver => '變更主機位址';

  @override
  String get changeTheme => '變更主題';

  @override
  String get changeTheNameOfTheGroup => '變更了群組名稱';

  @override
  String get changeTheServer => '變更伺服器';

  @override
  String get changeWallpaper => '變更聊天背景';

  @override
  String get changeYourAvatar => '更改您的大頭貼';

  @override
  String get channelCorruptedDecryptError => '加密已被破壞';

  @override
  String get chat => '聊天';

  @override
  String get yourUserId => '您的ID：';

  @override
  String get setupChatBackup => '設定聊天記錄備份';

  @override
  String get iWroteDownTheKey => '我已經記下了金鑰';

  @override
  String get yourChatBackupHasBeenSetUp => '您的聊天記錄備份已設定。';

  @override
  String get chatBackup => '備份聊天室';

  @override
  String get setupChatBackupDescription => '為了保護您的消息，我們為您生成了一個安全金鑰。\n請將其儲存在安全的地方，例如密碼管理器中。';

  @override
  String get chatBackupDescription => '您的聊天記錄備份已被安全金鑰鑰加密。請您確保不會弄丟它。';

  @override
  String get chatDetails => '對話詳細';

  @override
  String get chatHasBeenAddedToThisSpace => '聊天室已添加到此空間';

  @override
  String get chatHasBeenRemovedFromThisSpace => '聊天室已從此空間移除';

  @override
  String get chats => '聊天室';

  @override
  String get chooseAStrongPassword => '輸入一個較強的密碼';

  @override
  String get chooseAUsername => '輸入您的使用者名稱';

  @override
  String get clearArchive => '清除存檔';

  @override
  String get clearText => '清除文字';

  @override
  String get close => '關閉';

  @override
  String get commandHint_ban => '在此聊天室封禁該使用者';

  @override
  String get commandHint_clearcache => '清除快取';

  @override
  String get commandHint_create => '建立一個空的群聊\n使用 --no-encryption 選項來禁用加密';

  @override
  String get commandHint_discardsession => '丟棄工作階段';

  @override
  String get commandHint_dm => '啟動一對一聊天\n使用 --no-encryption 選項來禁用加密';

  @override
  String get commandHint_invite => '邀請該使用者加入此聊天室';

  @override
  String get commandHint_join => '加入此聊天室';

  @override
  String get commandHint_kick => '將這個使用者移出此聊天室';

  @override
  String get commandHint_leave => '退出此聊天室';

  @override
  String get commandHint_myroomavatar => '設置您的聊天室頭貼（通過 mxc-uri）';

  @override
  String get commandHint_myroomnick => '設定您的聊天室暱稱';

  @override
  String get commandHint_unban => '在此聊天室解封該使用者';

  @override
  String get compareEmojiMatch => '對比並確認這些表情符合其他那些裝置：';

  @override
  String get compareNumbersMatch => '比較以下數字，確保它們和另一個裝置上的相同：';

  @override
  String get configureChat => '設定聊天室';

  @override
  String get confirm => '確認';

  @override
  String get connect => '連接';

  @override
  String get connectionAttemptFailed => '嘗試連接失敗';

  @override
  String get contactHasBeenInvitedToTheGroup => '聯絡人已被邀請至群組';

  @override
  String get containsDisplayName => '包含顯示名稱';

  @override
  String get containsUserName => '包含使用者名稱';

  @override
  String get contentHasBeenReported => '此內容已被回報給伺服器管理員們';

  @override
  String get contentViewer => '內容檢視器';

  @override
  String get copiedToClipboard => '已複製到剪貼簿';

  @override
  String get copy => '複製';

  @override
  String get copyToClipboard => '複製到剪貼簿';

  @override
  String couldNotDecryptMessage(Object error) {
    return '不能解密訊息：$error';
  }

  @override
  String get couldNotSetAvatar => '不能設定頭貼';

  @override
  String get couldNotSetDisplayname => '不能設定顯示名稱';

  @override
  String countParticipants(Object count) {
    return '$count個參與者';
  }

  @override
  String get create => '建立';

  @override
  String get createAccountNow => '現在建立帳號';

  @override
  String createdTheChat(Object username) {
    return '$username建立了聊天室';
  }

  @override
  String get createNewGroup => '建立新群組';

  @override
  String get crossSigningDisabled => '第三方登入未啟用';

  @override
  String get crossSigningEnabled => '第三方登入已啟用';

  @override
  String get currentlyActive => '目前活躍';

  @override
  String get darkTheme => '夜間模式';

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
  String get deactivateAccountWarning => '這將停用您的帳號。這個決定是不能挽回的！您確定嗎？';

  @override
  String get defaultPermissionLevel => '預設權限等級';

  @override
  String get delete => '刪除';

  @override
  String get deleteAccount => '刪除帳號';

  @override
  String get deleteMessage => '刪除訊息';

  @override
  String get deny => '否認';

  @override
  String get device => '裝置';

  @override
  String get deviceId => '裝置ID';

  @override
  String get devices => '裝置';

  @override
  String get deviceVerifyDescription => '只有在所有的裝置都經過驗證後，加密才會是安全的。';

  @override
  String get directChats => '直接傳訊';

  @override
  String get discardPicture => '放棄圖片';

  @override
  String get discover => '探索';

  @override
  String get discoverGroups => '探索群組';

  @override
  String get displaynameHasBeenChanged => '顯示名稱已被變更';

  @override
  String get donate => '捐贈';

  @override
  String get downloadFile => '下載文件';

  @override
  String get edit => '編輯';

  @override
  String get editBlockedServers => '編輯被封鎖的伺服器';

  @override
  String get editChatPermissions => '編輯聊天室權限';

  @override
  String get editDisplayname => '編輯顯示名稱';

  @override
  String get editJitsiInstance => '編輯Jitsi實例';

  @override
  String get editRoomAliases => '編輯聊天室名';

  @override
  String get editRoomAvatar => '編輯聊天室頭貼';

  @override
  String get emoteExists => '表情已存在！';

  @override
  String get emoteInvalid => '無效的表情快捷鍵！';

  @override
  String get emotePacks => '聊天室的表情符號';

  @override
  String get emoteSettings => '表情設定';

  @override
  String get emoteShortcode => '表情快捷鍵';

  @override
  String get emoteWarnNeedToPick => '您需要選取一個表情快捷鍵和一張圖片！';

  @override
  String get emptyChat => '空的聊天室';

  @override
  String get enableEmotesGlobally => '在全域啟用表情符號';

  @override
  String get enableEncryption => '啟用加密';

  @override
  String get enableEncryptionWarning => '您將不能再停用加密，確定嗎？';

  @override
  String get encrypted => '加密的';

  @override
  String get encryption => '加密';

  @override
  String get encryptionAlgorithm => '加密算法';

  @override
  String get encryptionNotEnabled => '加密未啟用';

  @override
  String get end2endEncryptionSettings => '點對點加密設定';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName結束了通話';
  }

  @override
  String get enterAGroupName => '輸入群組名稱';

  @override
  String get enterAnEmailAddress => '輸入一個電子郵件位址';

  @override
  String get enterAUsername => '輸入使用者名稱';

  @override
  String get enterYourHomeserver => '輸入伺服器位址';

  @override
  String get everythingReady => '一切就緒！';

  @override
  String get extremeOffensive => '極端令人反感';

  @override
  String get fileName => '檔案名稱';

  @override
  String get fileSize => '檔案大小';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => '字體大小';

  @override
  String get forward => '轉發';

  @override
  String get friday => '星期五';

  @override
  String get friends => '朋友';

  @override
  String get fromJoining => '自加入起';

  @override
  String get fromTheInvitation => '自邀請起';

  @override
  String get goToTheNewRoom => '前往新聊天室';

  @override
  String get group => '群組';

  @override
  String get groupDescription => '群組描述';

  @override
  String get groupDescriptionHasBeenChanged => '群組描述已被變更';

  @override
  String get groupIsPublic => '群組是公開的';

  @override
  String get groups => '群組';

  @override
  String groupWith(Object displayname) {
    return '名稱為$displayname的群組';
  }

  @override
  String get guestsAreForbidden => '訪客已被禁止';

  @override
  String get guestsCanJoin => '訪客可以加入';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username收回了對$targetName的邀請';
  }

  @override
  String get help => '幫助';

  @override
  String get hideRedactedEvents => '隱藏編輯過的事件';

  @override
  String get hideUnknownEvents => '隱藏未知事件';

  @override
  String get homeserverIsNotCompatible => '伺服器不相容';

  @override
  String get howOffensiveIsThisContent => '這個內容有多令人反感？';

  @override
  String get id => 'ID';

  @override
  String get identity => '身份';

  @override
  String get ignore => '無視';

  @override
  String get ignoredUsers => '已無視的使用者';

  @override
  String get ignoreListDescription => '您可以無視打擾您的使用者。您將不會再收到來自無視列表中使用者的任何消息或聊天室邀請。';

  @override
  String get ignoreUsername => '無視使用者名稱';

  @override
  String get iHaveClickedOnLink => '我已經點擊了網址';

  @override
  String get incorrectPassphraseOrKey => '錯誤的密碼短語或恢復金鑰';

  @override
  String get inoffensive => '不令人反感';

  @override
  String get inviteContact => '邀請聯絡人';

  @override
  String inviteContactToGroup(Object groupName) {
    return '邀請聯絡人到$groupName';
  }

  @override
  String get invited => '已邀請';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username邀請了$targetName';
  }

  @override
  String get invitedUsersOnly => '只有被邀請的使用者';

  @override
  String get inviteForMe => '來自我的邀請';

  @override
  String inviteText(Object username, Object link) {
    return '$username邀請您使用FluffyChat\n1. 安裝FluffyChat：https://fluffychat.im\n2. 登入或註冊\n3. 打開該邀請網址：$link';
  }

  @override
  String get isDeviceKeyCorrect => '下列裝置金鑰是否正確？';

  @override
  String get isTyping => '正在輸入...…';

  @override
  String joinedTheChat(Object username) {
    return '$username加入了聊天室';
  }

  @override
  String get joinRoom => '加入聊天室';

  @override
  String get keysCached => '金鑰已被快取';

  @override
  String get keysMissing => '金鑰遺失';

  @override
  String kicked(Object username, Object targetName) {
    return '$username踢了$targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username踢了$targetName並將其封禁';
  }

  @override
  String get kickFromChat => '從聊天室踢出';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return '最後活動時間：$localizedTimeShort';
  }

  @override
  String get lastSeenIp => '最後使用的IP';

  @override
  String get lastSeenLongTimeAgo => '很長一段時間沒有上線了';

  @override
  String get leave => '離開';

  @override
  String get leftTheChat => '離開了聊天室';

  @override
  String get license => '授權';

  @override
  String get lightTheme => '日間模式';

  @override
  String loadCountMoreParticipants(Object count) {
    return '載入$count個更多的參與者';
  }

  @override
  String get loadingPleaseWait => '載入中… 請稍候。';

  @override
  String get loadMore => '載入更多…';

  @override
  String get login => '登入';

  @override
  String logInTo(Object homeserver) {
    return '登入$homeserver';
  }

  @override
  String get logout => '登出';

  @override
  String get makeAModerator => '建立版主';

  @override
  String get makeAnAdmin => '建立管理員';

  @override
  String get makeSureTheIdentifierIsValid => '確保識別碼正確';

  @override
  String get memberChanges => '變更成員';

  @override
  String get mention => '提及';

  @override
  String get messages => '訊息';

  @override
  String get messageWillBeRemovedWarning => '將移除所有參與者的訊息';

  @override
  String get moderator => '版主';

  @override
  String get monday => '星期一';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '還有1個事件',
      other: '還有$count個事件',
    );
  }

  @override
  String get muteChat => '將該聊天室靜音';

  @override
  String get needPantalaimonWarning => '請注意您需要Pantalaimon才能使用點對點加密功能。';

  @override
  String get newChat => '新聊天室';

  @override
  String get newMessageInFluffyChat => '來自 FluffyChat 的新訊息';

  @override
  String get newVerificationRequest => '新的驗證請求！';

  @override
  String get next => '下一個';

  @override
  String get no => '否';

  @override
  String get noConnectionToTheServer => '無法連接到伺服器';

  @override
  String get noCrossSignBootstrap => 'FluffyChat目前不支援啟用Cross-Signing。請在Riot中啟用。';

  @override
  String get noDescription => '沒有描述';

  @override
  String get noEmotesFound => '表情符號不存在。😕';

  @override
  String get noEncryptionForPublicRooms => '您只能在這個聊天室不再被允許公開訪問後，才能啟用加密。';

  @override
  String get noGoogleServicesWarning => '看起來您手機上沒有Google服務框架。這對於保護您的隱私而言是個好決定！但為了收到FluffyChat的推播通知，我們推薦您使用 https://microg.org/ 或 https://unifiedpush.org/。';

  @override
  String get noMegolmBootstrap => 'FluffyChat目前不支援啟用線上金鑰備份。請在Riot中啟用。';

  @override
  String get none => '無';

  @override
  String get noPasswordRecoveryDescription => '您尚未新增恢復密碼的方法。';

  @override
  String get noPermission => '沒有權限';

  @override
  String get noPublicRoomsFound => '找不到公開的聊天室…';

  @override
  String get noRoomsFound => '找不到聊天室…';

  @override
  String get noStatusesFound => '目前還沒有發現任何狀態。';

  @override
  String get notifications => '通知';

  @override
  String get notificationsEnabledForThisAccount => '已為此帳號啟用通知';

  @override
  String get notSupportedInWeb => '在網頁版不支援';

  @override
  String numberSelected(Object number) {
    return '$number已選擇';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count個人正在輸入…';
  }

  @override
  String get offensive => '令人反感';

  @override
  String get offline => '離線';

  @override
  String get ok => 'OK';

  @override
  String get online => '線上';

  @override
  String get onlineKeyBackupDisabled => '線上金鑰備份被停用';

  @override
  String get onlineKeyBackupEnabled => '線上金鑰備份已啟用';

  @override
  String get oopsSomethingWentWrong => '哎呀！出了一點差錯…';

  @override
  String get openAppToReadMessages => '打開應用程式以讀取訊息';

  @override
  String get openCamera => '開啟相機';

  @override
  String get optionalGroupName => '（可選）群組名稱';

  @override
  String get participant => '參與者';

  @override
  String get participatingUserDevices => '參與者裝置';

  @override
  String get passphraseOrKey => '密碼短語或恢復金鑰';

  @override
  String get password => '密碼';

  @override
  String get passwordForgotten => '忘記密碼';

  @override
  String get passwordHasBeenChanged => '密碼已被變更';

  @override
  String get passwordRecovery => '恢復密碼';

  @override
  String get people => '人';

  @override
  String get pickImage => '選擇圖片';

  @override
  String get pin => '釘選';

  @override
  String play(Object fileName) {
    return '播放$fileName';
  }

  @override
  String get pleaseChooseAPasscode => '請選擇一個密碼';

  @override
  String get pleaseChooseAUsername => '請選擇使用者名稱';

  @override
  String get pleaseClickOnLink => '請點擊電子郵件中的網址，然後繼續。';

  @override
  String get pleaseEnter4Digits => '請輸入4位數字，或留空以停用密碼鎖定。';

  @override
  String get pleaseEnterAMatrixIdentifier => '請輸入Matrix ID。';

  @override
  String get pleaseEnterSecurityKey => '請輸入您的安全金鑰 ：';

  @override
  String get pleaseEnterYourPassword => '請輸入您的密碼';

  @override
  String get pleaseEnterYourUsername => '請輸入您的使用者名稱';

  @override
  String get pleaseFollowInstructionsOnWeb => '請按照網站上的說明進行操作，然後點擊下一步。';

  @override
  String get privacy => '隱私';

  @override
  String get publicGroups => '公開的群組';

  @override
  String get publicKey => '公鑰';

  @override
  String get publicRooms => '公開的聊天室';

  @override
  String get pushRules => '推播規則';

  @override
  String get reason => '原因';

  @override
  String get recording => '錄音中';

  @override
  String redactedAnEvent(Object username) {
    return '$username編輯了一個事件';
  }

  @override
  String get redactMessage => '重新編輯訊息';

  @override
  String get reject => '拒絕';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username拒絕了邀請';
  }

  @override
  String get rejoin => '重新加入';

  @override
  String get remove => '移除';

  @override
  String get removeAllOtherDevices => '移除所有其他裝置';

  @override
  String removedBy(Object username) {
    return '被$username移除';
  }

  @override
  String get removeDevice => '移除裝置';

  @override
  String get unbanFromChat => '解禁聊天';

  @override
  String get removeMessage => '移除訊息';

  @override
  String get renderRichContent => '繪製圖文訊息內容';

  @override
  String get replaceRoomWithNewerVersion => '用較新的版本取代聊天室';

  @override
  String get reply => '回覆';

  @override
  String get reportMessage => '檢舉訊息';

  @override
  String get requestPermission => '請求權限';

  @override
  String get requestToReadOlderMessages => '請求讀取過去的訊息';

  @override
  String get revokeAllPermissions => '撤銷所有權限';

  @override
  String get roomHasBeenUpgraded => '聊天室已更新';

  @override
  String get roomVersion => '聊天室的版本';

  @override
  String get saturday => '星期六';

  @override
  String get search => '搜尋';

  @override
  String get searchForAChat => '搜尋聊天室';

  @override
  String get security => '安全';

  @override
  String get securityKey => '安全金鑰';

  @override
  String get securityKeyLost => '遺失安全金鑰？';

  @override
  String seenByUser(Object username) {
    return '$username已讀';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$username和其他$count個人已讀',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return '$username和$username2已讀';
  }

  @override
  String get send => '傳送';

  @override
  String get sendAMessage => '傳送訊息';

  @override
  String get sendAudio => '傳送音訊';

  @override
  String get sendBugReports => '允許向sentry.io回報錯誤';

  @override
  String get sendFile => '傳送文件';

  @override
  String get sendImage => '傳送圖片';

  @override
  String get sendMessages => '傳送訊息';

  @override
  String get sendOriginal => '傳送原始內容';

  @override
  String get sendVideo => '傳送影片';

  @override
  String sentAFile(Object username) {
    return '$username傳送了一個文件';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username傳送了一個音訊';
  }

  @override
  String sentAPicture(Object username) {
    return '$username傳送了一張圖片';
  }

  @override
  String sentASticker(Object username) {
    return '$username 傳送了貼圖';
  }

  @override
  String sentAVideo(Object username) {
    return '$username 傳送了影片';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName 傳送了通話資訊';
  }

  @override
  String get sentryInfo => '關於您的隱私：https://sentry.io/security/';

  @override
  String get sessionVerified => '工作階段已被驗證';

  @override
  String get setAProfilePicture => '設定個人檔案頭貼';

  @override
  String get setCustomEmotes => '自訂表情符號';

  @override
  String get setGroupDescription => '設定群組描述';

  @override
  String get setInvitationLink => '設定邀請連結';

  @override
  String get setPermissionsLevel => '設定權限級別';

  @override
  String get setStatus => '設定狀態';

  @override
  String get settings => '設定';

  @override
  String get share => '分享';

  @override
  String sharedTheLocation(Object username) {
    return '$username 分享了位置';
  }

  @override
  String get showPassword => '顯示密碼';

  @override
  String get signUp => '註冊';

  @override
  String get skip => '跳過';

  @override
  String get soundVibrationLedColor => '聲音、振動及LED';

  @override
  String get sourceCode => '原始碼';

  @override
  String startedACall(Object senderName) {
    return '$senderName開始了通話';
  }

  @override
  String get startYourFirstChat => '請開始您的聊天之旅☆（ゝω●）\n- 點擊「新聊天室」\n- 掃描朋友的二維碼\n- 一起開心的聊天吧';

  @override
  String get status => '狀態';

  @override
  String get statusExampleMessage => '今天過得如何？';

  @override
  String get submit => '送出';

  @override
  String get sunday => '星期日';

  @override
  String get systemTheme => '自動';

  @override
  String get tapOnDeviceToVerify => '在一個裝置上點擊以進行驗證';

  @override
  String get tapToShowMenu => '點擊以顯示功能表';

  @override
  String get theyDontMatch => '它們不相符';

  @override
  String get theyMatch => '它們相符';

  @override
  String get thisRoomHasBeenArchived => '這個聊天室已被封存。';

  @override
  String get thursday => '星期四';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$suffix $hours12點$minutes分';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => '切換收藏夾';

  @override
  String get toggleMuted => '切換靜音';

  @override
  String get toggleUnread => '標記為已讀/未讀';

  @override
  String get tooManyRequestsWarning => '太多請求了。請稍候再試！';

  @override
  String get transferFromAnotherDevice => '從其他裝置傳輸';

  @override
  String get tryToSendAgain => '再次嘗試傳送';

  @override
  String get tuesday => '星期二';

  @override
  String get unavailable => '無法取得';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username解除封禁了$targetName';
  }

  @override
  String get unblockDevice => '解除鎖定裝置';

  @override
  String get unknownDevice => '未知裝置';

  @override
  String get unknownEncryptionAlgorithm => '未知的加密演算法';

  @override
  String unknownEvent(Object type) {
    return '未知事件「$type」';
  }

  @override
  String get unknownSessionVerify => '未知的工作階段，請驗證';

  @override
  String get unlockChatBackup => '解鎖聊天記錄備份';

  @override
  String get unmuteChat => '取消靜音聊天室';

  @override
  String get unpin => '取消釘選';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 unread chat',
      other: '$unreadCount 個未讀聊天室',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 unread message',
      other: '$unreadEvents 個未讀訊息',
    );
  }

  @override
  String get useAmoledTheme => '使用適合AMOLED螢幕的顏色？';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username和其他$count個人正在輸入…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username和$username2正在輸入…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username正在輸入…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username離開了聊天室';
  }

  @override
  String get username => '使用者名稱';

  @override
  String get userNotVerified => '使用者尚未驗證';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username傳送了一個$type事件';
  }

  @override
  String get userUnknownVerification => '未知的使用者驗證狀態';

  @override
  String get userVerified => '使用者已驗證';

  @override
  String get verified => '已驗證';

  @override
  String get verifiedSession => '工作階段成功驗證！';

  @override
  String get verify => '驗證';

  @override
  String get verifyManual => '手動驗證';

  @override
  String get verifyStart => '開始驗證';

  @override
  String get verifySuccess => '您成功驗證了！';

  @override
  String get verifyTitle => '正在驗證其他帳號';

  @override
  String get verifyUser => '驗證使用者';

  @override
  String get videoCall => '視訊通話';

  @override
  String get visibilityOfTheChatHistory => '聊天記錄的可見性';

  @override
  String get visibleForAllParticipants => '對所有參與者可見';

  @override
  String get visibleForEveryone => '對所有人可見';

  @override
  String get voiceMessage => '語音訊息';

  @override
  String get waitingPartnerAcceptRequest => '正在等待夥伴接受請求…';

  @override
  String get waitingPartnerEmoji => '正在等待夥伴接受表情符號…';

  @override
  String get waitingPartnerNumbers => '正在等待夥伴接受數字…';

  @override
  String get wallpaper => '桌布';

  @override
  String get warning => '警告！';

  @override
  String get warningEncryptionInBeta => '點對點加密目前處於Beta測試中！使用的話後果自負呦！';

  @override
  String get wednesday => '星期三';

  @override
  String get welcomeText => '歡迎使用Matrix中最可愛的即時通訊軟體(*´▽`*)。';

  @override
  String get weSentYouAnEmail => '我們向您傳送了一封電子郵件';

  @override
  String get whoCanPerformWhichAction => '誰可以執行這個動作';

  @override
  String get whoIsAllowedToJoinThisGroup => '誰可以加入這個群組';

  @override
  String get whyDoYouWantToReportThis => '您檢舉的原因是什麼？';

  @override
  String get wipeChatBackup => '要清除您的聊天記錄備份以建立新的安全金鑰嗎？';

  @override
  String get withTheseAddressesRecoveryDescription => '有了這些位址，您就可以恢復密碼。';

  @override
  String get writeAMessage => '輸入訊息…';

  @override
  String get yes => '是';

  @override
  String get you => '您';

  @override
  String get youAreInvitedToThisChat => '有人邀請您加入這個聊天室';

  @override
  String get youAreNoLongerParticipatingInThisChat => '您不再參與這個聊天室了';

  @override
  String get youCannotInviteYourself => '您不能邀請您自己';

  @override
  String get youHaveBeenBannedFromThisChat => '您已經被這個聊天室封禁';

  @override
  String get yourOwnUsername => '您的使用者名稱';

  @override
  String get yourPublicKey => '您的公鑰';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return '您將會連接到$homeserver';
  }

  @override
  String get zoomIn => '放大';

  @override
  String get zoomOut => '縮小';
}
