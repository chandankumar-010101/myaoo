

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'パスワードが一致しません!';

  @override
  String get pleaseEnterValidEmail => '正しいメールアドレスを入力してください。';

  @override
  String get repeatPassword => 'パスワードを繰り返そ';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return '少なくとも$min文字を選択してください。';
  }

  @override
  String get about => 'このアプリについて';

  @override
  String get accept => '承諾する';

  @override
  String acceptedTheInvitation(Object username) {
    return '$usernameが招待を承諾しました';
  }

  @override
  String get account => 'アカウント';

  @override
  String get accountInformation => 'アカウント情報';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$usernameがエンドツーエンド暗号化を有効にしました';
  }

  @override
  String get addEmail => 'Eメールを追加';

  @override
  String get addGroupDescription => 'グループの説明を追加する';

  @override
  String get addNewFriend => '友達を追加';

  @override
  String get addToSpace => 'スペースに追加';

  @override
  String get admin => '管理者';

  @override
  String get alias => 'エイリアス';

  @override
  String get all => 'すべて';

  @override
  String get allChats => 'すべて会話';

  @override
  String get alreadyHaveAnAccount => 'アカウントをすでにお持ちですか？';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderNameは通話に出ました';
  }

  @override
  String get anyoneCanJoin => '誰でも参加できる';

  @override
  String get appLock => 'アプリのロック';

  @override
  String get archive => 'アーカイブ';

  @override
  String get archivedRoom => 'アーカイブされた部屋';

  @override
  String get areGuestsAllowedToJoin => 'ゲストユーザーの参加を許可する';

  @override
  String get areYouSure => 'これでよろしいですか？';

  @override
  String get areYouSureYouWantToLogout => 'ログアウトしてよろしいですか？';

  @override
  String get askSSSSSign => '他の人を署名するためにはパスフレーズやリカバリーキーを入力してください。';

  @override
  String get askSSSSVerify => 'セッションを検証するためにはパスフレーズやリカバリーキーを入力してください。';

  @override
  String askVerificationRequest(Object username) {
    return '$usernameの検証リクエストを承認しますか？';
  }

  @override
  String get audioPlayerPause => '一時停止';

  @override
  String get audioPlayerPlay => '再生';

  @override
  String get authentication => '認証';

  @override
  String get autoplayImages => 'GIFを自動的に再生する';

  @override
  String get avatarHasBeenChanged => 'アバターが変更されました';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'ホームサーバーでサポートされているログインタイプ：\n${serverVersions}\nアプリでは$supportedVersionsしかサポートされていません';
  }

  @override
  String get sendOnEnter => 'Enterで送信';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'ホームサーバーでサポートされているバージョン：\n${serverVersions}\nアプリでは$supportedVersionsしかサポートされていません';
  }

  @override
  String get banFromChat => 'チャットからBANする';

  @override
  String get banned => 'BANされています';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$usernameが$targetNameをBANしました';
  }

  @override
  String get blockDevice => 'デバイスをブロックする';

  @override
  String get blocked => 'ブロックしました';

  @override
  String get botMessages => 'ボットメッセージ';

  @override
  String get bubbleSize => 'ふきだしの大きさ';

  @override
  String get cachedKeys => '鍵をキャッシュしました';

  @override
  String get cancel => 'キャンセル';

  @override
  String cantOpenUri(Object uri) {
    return 'URIが開けません $uri';
  }

  @override
  String get changeDeviceName => 'デバイス名を変更';

  @override
  String changedTheChatAvatar(Object username) {
    return '$usernameがチャットアバターを変更しました';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$usernameがチャットの説明を「$description」に変更しました';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$usernameがチャットの名前を「$chatname」に変更しました';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$usernameがチャットの権限を変更しました';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$usernameが表示名を「$displayname」に変更しました';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$usernameがゲストのアクセスルールを変更しました';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$usernameがゲストのアクセスルールを$rulesに変更しました';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$usernameが履歴の表示設定を変更しました';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$usernameが履歴の表示設定を$rulesに変更しました';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$usernameが参加ルールを変更しました';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$usernameが参加ルールを$joinRulesに変更しました';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$usernameがアバターを変更しました';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$usernameが部屋のエイリアスを変更しました';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$usernameが招待リンクを変更しました';
  }

  @override
  String get changelog => '変更履歴';

  @override
  String get changePassword => 'パスワードを変更';

  @override
  String get changesHaveBeenSaved => '変更が保存されました';

  @override
  String get changeTheHomeserver => 'ホームサーバーの変更';

  @override
  String get changeTheme => 'スタイルを変更する';

  @override
  String get changeTheNameOfTheGroup => 'グループの名前を変更する';

  @override
  String get changeTheServer => 'サーバーを変更する';

  @override
  String get changeWallpaper => '壁紙を変更する';

  @override
  String get changeYourAvatar => 'アバタるを変化しする';

  @override
  String get channelCorruptedDecryptError => '暗号が破損しています';

  @override
  String get chat => 'チャット';

  @override
  String get yourUserId => 'あなたのユーザーID:';

  @override
  String get setupChatBackup => 'チャットバックアップを設定する';

  @override
  String get iWroteDownTheKey => '私は鍵を書きました';

  @override
  String get yourChatBackupHasBeenSetUp => 'チャットバックアップを設定ました。';

  @override
  String get chatBackup => 'チャットのバックアップ';

  @override
  String get setupChatBackupDescription => 'To protect your messages, we have generated a security key for you.\nPlease keep this in a safe place, such as a password manager.';

  @override
  String get chatBackupDescription => 'チャットのバックアップは秘密鍵によって保存されます。失くさないように気をつけてください。';

  @override
  String get chatDetails => 'チャットの詳細';

  @override
  String get chatHasBeenAddedToThisSpace => 'このスペースにチャットが追加されました';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'チャットはこのスペースに削除されました';

  @override
  String get chats => 'チャット';

  @override
  String get chooseAStrongPassword => '強いパスワードを選択してください';

  @override
  String get chooseAUsername => 'ユーザー名を選択してください';

  @override
  String get clearArchive => 'アーカイブを消去';

  @override
  String get clearText => 'テキストを消す';

  @override
  String get close => '閉じる';

  @override
  String get commandHint_ban => 'このユーザーを禁止する';

  @override
  String get commandHint_clearcache => 'キャッシュをクリアする';

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
  String get compareEmojiMatch => '表示されている絵文字が他のデバイスで表示されているものと一致するか確認してください:';

  @override
  String get compareNumbersMatch => '表示されている数字が他のデバイスで表示されているものと一致するか確認してください:';

  @override
  String get configureChat => 'チャットの設定';

  @override
  String get confirm => '確認';

  @override
  String get connect => '接続';

  @override
  String get connectionAttemptFailed => '接続が失敗しました';

  @override
  String get contactHasBeenInvitedToTheGroup => '連絡先に登録された人が招待されました';

  @override
  String get containsDisplayName => '表示名を含んでいます';

  @override
  String get containsUserName => 'ユーザー名を含んでいます';

  @override
  String get contentHasBeenReported => 'サーバー管理者に通報されました';

  @override
  String get contentViewer => 'コンテンツビューアー';

  @override
  String get copiedToClipboard => 'クリップボードにコピーされました';

  @override
  String get copy => 'コピー';

  @override
  String get copyToClipboard => 'クリップボードにコピー';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'メッセージを解読できませんでした: $error';
  }

  @override
  String get couldNotSetAvatar => 'アバターをセットできませんでした';

  @override
  String get couldNotSetDisplayname => '表示名をセットできませんでした';

  @override
  String countParticipants(Object count) {
    return '$count名の参加者';
  }

  @override
  String get create => '作成';

  @override
  String get createAccountNow => 'アカウントを作成する';

  @override
  String createdTheChat(Object username) {
    return '$usernameがチャットを作成しました';
  }

  @override
  String get createNewGroup => 'グループを作成する';

  @override
  String get createNewSpace => 'New class';

  @override
  String get crossSigningDisabled => '相互署名OFF';

  @override
  String get crossSigningEnabled => '相互署名ON';

  @override
  String get currentlyActive => '現在アクティブです';

  @override
  String get darkTheme => 'ダーク';

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
    return '$year/$month/$day';
  }

  @override
  String get deactivateAccountWarning => 'あなたのアカウントを無効化します。この操作は元に戻せません！よろしいですか？';

  @override
  String get defaultPermissionLevel => 'デフォルトの権限レベル';

  @override
  String get delete => '削除';

  @override
  String get deleteAccount => 'アカウントの削除';

  @override
  String get deleteMessage => 'メッセージの削除';

  @override
  String get deny => '拒否';

  @override
  String get device => 'デバイス';

  @override
  String get deviceId => 'デバイスID';

  @override
  String get devices => 'デバイス';

  @override
  String get deviceVerifyDescription => '安全に暗号化を使うためには全てのデバイスを認証する必要があります。';

  @override
  String get directChats => 'ダイレクトチャット';

  @override
  String get discardPicture => '画像を無視する';

  @override
  String get discover => '発見する';

  @override
  String get discoverGroups => 'グループを発見';

  @override
  String get displaynameHasBeenChanged => '表示名が変更されました';

  @override
  String get donate => '寄付する';

  @override
  String get dontAskAgain => 'Cancel and don\'t ask again';

  @override
  String get downloadFile => 'ファイルのダウンロード';

  @override
  String get edit => '編集';

  @override
  String get editBlockedServers => 'ブロックしたサーバーを編集';

  @override
  String get editChatPermissions => 'チャット権限の変更';

  @override
  String get editDisplayname => '表示名を編集';

  @override
  String get editJitsiInstance => 'Jitsiインスタンスを編集する';

  @override
  String get editRoomAliases => 'ルームエイリアスを編集';

  @override
  String get editRoomAvatar => '部屋のアバターを編集する';

  @override
  String get emoteExists => 'Emoteはすでに存在します！';

  @override
  String get emoteInvalid => '不正なEmoteショートコード！';

  @override
  String get emotePacks => '部屋のEmoteパック';

  @override
  String get emoteSettings => 'Emote設定';

  @override
  String get emoteShortcode => 'Emoteショートコード';

  @override
  String get emoteWarnNeedToPick => 'Emoteショートコードと画像を選択してください！';

  @override
  String get emptyChat => '空のチャット';

  @override
  String get enableChatBackup => 'Enable the chat backup to never lose access to your chats.';

  @override
  String get enableEmotesGlobally => 'emoteをグローバルに有効にする';

  @override
  String get enableEncryption => '暗号化を有効にする';

  @override
  String get enableEncryptionWarning => '一度暗号化を有効にするともとに戻せません。よろしいですか？';

  @override
  String get encrypted => '暗号化';

  @override
  String get encryption => '暗号化';

  @override
  String get encryptionAlgorithm => '暗号化アルゴリズム';

  @override
  String get encryptionNotEnabled => '暗号化されていません';

  @override
  String get end2endEncryptionSettings => 'エンドツーエンド暗号化設定';

  @override
  String endedTheCall(Object senderName) {
    return '$senderNameは通話を切断しました';
  }

  @override
  String get enterAGroupName => 'グループ名を入力してください';

  @override
  String get enterAnEmailAddress => 'メールアドレスを入力してください';

  @override
  String get enterASpacepName => 'Enter a class name';

  @override
  String get enterAUsername => 'ユーザー名を入力してください';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'ホームサーバーを入力してください';

  @override
  String errorObtainingLocation(Object error) {
    return 'Error obtaining location: $error';
  }

  @override
  String get everythingReady => 'すべての準備は完了しました！';

  @override
  String get extremeOffensive => 'とても攻撃的';

  @override
  String get fileName => 'ファイル名';

  @override
  String get fileSize => 'ファイルサイズ';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'フォントサイズ';

  @override
  String get forward => '進む';

  @override
  String get friday => '金曜日';

  @override
  String get friends => '友達';

  @override
  String get fromJoining => '参加時点から閲覧可能';

  @override
  String get fromTheInvitation => '招待時点から閲覧可能';

  @override
  String get goToTheNewRoom => '新規ルームへ';

  @override
  String get group => 'グループ';

  @override
  String get groupDescription => 'グループの説明';

  @override
  String get groupDescriptionHasBeenChanged => 'グループの説明が変更されました';

  @override
  String get groupIsPublic => 'グループは公開されています';

  @override
  String get groups => 'グループ';

  @override
  String groupWith(Object displayname) {
    return '$displaynameとグループを作成する';
  }

  @override
  String get guestsAreForbidden => 'ゲストは許可されていません';

  @override
  String get guestsCanJoin => 'ゲストが許可されています';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$targetNameの招待を$usernameが取り下げました';
  }

  @override
  String get help => 'ヘルプ';

  @override
  String get hideRedactedEvents => '編集済みイベントを非表示にする';

  @override
  String get hideUnknownEvents => '不明なイベントを非表示にする';

  @override
  String get homeserverIsNotCompatible => 'このホームサーバーは互換性がありません';

  @override
  String get howOffensiveIsThisContent => 'どのくらい攻撃的でしたか？';

  @override
  String get id => 'ID';

  @override
  String get identity => 'アイデンティティ';

  @override
  String get ignore => '無視する';

  @override
  String get ignoredUsers => '無視されたユーザー';

  @override
  String get ignoreListDescription => 'ユーザーは無視することができます。無視したユーザーからのメッセージやルームの招待は受け取れません。';

  @override
  String get ignoreUsername => 'ユーザー名を無視する';

  @override
  String get iHaveClickedOnLink => 'リンクをクリックしました';

  @override
  String get incorrectPassphraseOrKey => 'パスフレーズかリカバリーキーが間違っています';

  @override
  String get inoffensive => '非攻撃的';

  @override
  String get invalidEmail => '無効なメールアドレス';

  @override
  String get inviteContact => '連絡先から招待する';

  @override
  String inviteContactToGroup(Object groupName) {
    return '連絡先から$groupNameに招待する';
  }

  @override
  String get invited => '招待されました';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$usernameが$targetNameを招待しました';
  }

  @override
  String get invitedUsersOnly => '招待されたユーザーのみ';

  @override
  String get inviteForMe => '自分への招待';

  @override
  String inviteText(Object username, Object link) {
    return '$usernameがFluffyChatにあなたを招待しました. \n1. FluffyChatをインストールしてください: https://fluffychat.im \n2. 新しくアカウントを作成するかサインインしてください\n3. 招待リンクを開いてください: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'このデバイスキーは正しいですか？';

  @override
  String get isTyping => 'が入力しています…';

  @override
  String joinedTheChat(Object username) {
    return '$usernameがチャットに参加しました';
  }

  @override
  String get joinRoom => '部屋に参加';

  @override
  String get keysCached => '鍵はキャッシュされたいます';

  @override
  String get keysMissing => '鍵がありません';

  @override
  String kicked(Object username, Object targetName) {
    return '$usernameは$targetNameをキックしました';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$usernameは$targetNameをキックしBANしました';
  }

  @override
  String get kickFromChat => 'チャットからキックする';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return '最終アクティブ: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => '最終IP';

  @override
  String get lastSeenLongTimeAgo => 'ずいぶん前';

  @override
  String get leave => '退室する';

  @override
  String get leftTheChat => '退室しました';

  @override
  String get license => 'ライセンス';

  @override
  String get lightTheme => 'ライト';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'あと$count名参加者を読み込む';
  }

  @override
  String get loadingPleaseWait => '読み込み中…お待ちください。';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => '更に読み込む…';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get login => 'ログイン';

  @override
  String logInTo(Object homeserver) {
    return '$homeserverにログインする';
  }

  @override
  String get loginWithOneClick => 'Sign in with one click';

  @override
  String get logout => 'ログアウト';

  @override
  String get makeAModerator => 'モデレータにする';

  @override
  String get makeAnAdmin => '管理者にする';

  @override
  String get makeSureTheIdentifierIsValid => '識別子が正しいか確認してください';

  @override
  String get memberChanges => 'メンバーの変更';

  @override
  String get mention => 'メンション';

  @override
  String get messages => 'メッセージ';

  @override
  String get messageWillBeRemovedWarning => 'メッセージはすべての参加者から消去されます';

  @override
  String get moderator => 'モデレータ';

  @override
  String get monday => '月曜日';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'もう1つのイベント',
      other: '$count個のイベント',
    );
  }

  @override
  String get muteChat => 'チャットのミュート';

  @override
  String get needPantalaimonWarning => '現時点では、エンドツーエンドの暗号化を使用するにはPantalaimonが必要であることに注意してください。';

  @override
  String get newChat => '新規チャット';

  @override
  String get newMessageInFluffyChat => 'FluffyChatに新しいメッセージがあります';

  @override
  String get newVerificationRequest => '認証リクエスト！';

  @override
  String get next => '次へ';

  @override
  String get no => 'いいえ';

  @override
  String get noConnectionToTheServer => 'サーバーに接続できません';

  @override
  String get noCrossSignBootstrap => 'FluffyChatは現在相互署名機能をサポートしていません。Elementから有効化してください。';

  @override
  String get noDescription => '説明がありません';

  @override
  String get noEmotesFound => 'Emoteは見つかりませんでした😕';

  @override
  String get noEncryptionForPublicRooms => 'ルームを非公開にした後暗号化を有効にできます。';

  @override
  String get noGoogleServicesWarning => 'あなたのスマホにはグーグルサービスがないようですね。プライバシーを保護するための良い選択です！Push通知を受け取るにはmicroGを使うことを推奨しています: https://microg.org/';

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
  String get noMegolmBootstrap => '鍵のオンラインバックアップはElementから有効化にしてください。';

  @override
  String get none => 'なし';

  @override
  String get newPasswordDescription => 'In order to be able to recover your password, you should later add an email address to your account.';

  @override
  String get newUsernameDescription => 'Your user ID will then have the format @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'パスワードを回復する方法をまだ追加していません。';

  @override
  String get noPermission => '権限がありません';

  @override
  String get noPublicRoomsFound => '公開ルームが見つかりませんでした…';

  @override
  String get noRoomsFound => '部屋は見つかりませんでした…';

  @override
  String get noStatusesFound => 'ステータスが見つかりませんでした。';

  @override
  String get notifications => '通知';

  @override
  String get notificationsEnabledForThisAccount => 'このアカウントでは通知が有効です';

  @override
  String get notSupportedInWeb => 'ウェブではサポートされていません';

  @override
  String numberSelected(Object number) {
    return '$number選択されています';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count人が入力中…';
  }

  @override
  String get obtainingLocation => 'Obtaining location…';

  @override
  String get offensive => '攻撃的';

  @override
  String get offline => 'オフライン';

  @override
  String get ok => 'OK';

  @override
  String get online => 'オンライン';

  @override
  String get onlineKeyBackupDisabled => 'オンライン鍵バックアップは使用されていません';

  @override
  String get onlineKeyBackupEnabled => 'オンライン鍵バックアップは使用されています';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => 'おっと、何かがうまくいきませんでした…';

  @override
  String get openAppToReadMessages => 'アプリを開いてメッセージを確認してください';

  @override
  String get openCamera => 'カメラを開く';

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
  String get optionalGroupName => '(任意)グループ名';

  @override
  String get or => 'Or';

  @override
  String get participant => '参加者';

  @override
  String get participatingUserDevices => 'ユーザーの使用しているデバイス';

  @override
  String get passphraseOrKey => 'パスフレーズかリカバリーキー';

  @override
  String get password => 'パスワード';

  @override
  String get passwordForgotten => 'パスワードを忘れた';

  @override
  String get passwordHasBeenChanged => 'パスワードが変更されました';

  @override
  String get passwordRecovery => 'パスワードリカバリー';

  @override
  String get people => '人々';

  @override
  String get pickImage => '画像を選択してください';

  @override
  String get pin => 'ピン';

  @override
  String play(Object fileName) {
    return '$fileNameを再生する';
  }

  @override
  String get pleaseChoose => 'Please choose';

  @override
  String get pleaseChooseAPasscode => 'パスコードを選んでください';

  @override
  String get pleaseChooseAUsername => 'ユーザー名を選択してください';

  @override
  String get pleaseClickOnLink => 'メールのリンクから進めてください。';

  @override
  String get pleaseEnter4Digits => 'アプリのロック用に4桁の数字を入力してください。空欄の場合は無効になります。';

  @override
  String get pleaseEnterAMatrixIdentifier => 'マトリックスIDを入力してください。';

  @override
  String get pleaseEnterSecurityKey => 'セキュリティーキーを入力してください：';

  @override
  String get pleaseEnterYourPassword => 'パスワードを入力してください';

  @override
  String get pleaseEnterYourPin => 'PINを入力してください';

  @override
  String get pleaseEnterYourUsername => 'ユーザー名を入力してください';

  @override
  String get pleaseFollowInstructionsOnWeb => 'ウェブサイトにあるやり方を見てから次をタップしてください。';

  @override
  String get privacy => 'プライバシー';

  @override
  String get publicGroups => '公開グループ';

  @override
  String get publicKey => '公開鍵';

  @override
  String get publicRooms => '公開された部屋';

  @override
  String get publicSpace => 'Public class';

  @override
  String get pushRules => 'ルールを追加する';

  @override
  String get reason => '理由';

  @override
  String get recording => '録音中';

  @override
  String redactedAnEvent(Object username) {
    return '$usernameがイベントを編集しました';
  }

  @override
  String get redactMessage => 'メッセージを書く';

  @override
  String get register => 'Register';

  @override
  String get reject => '拒否';

  @override
  String rejectedTheInvitation(Object username) {
    return '$usernameは招待を拒否しました';
  }

  @override
  String get rejoin => '再参加';

  @override
  String get remove => '消去';

  @override
  String get removeAllOtherDevices => '他のデバイスをすべて削除';

  @override
  String removedBy(Object username) {
    return '$usernameによって削除されました';
  }

  @override
  String get removeDevice => 'デバイスの削除';

  @override
  String get unbanFromChat => '追放を取り消し';

  @override
  String get removeMessage => 'メッセージを削除';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get renderRichContent => 'リッチメッセージをレンダリングする';

  @override
  String get replaceRoomWithNewerVersion => '部屋を新しいバージョンに変更する';

  @override
  String get reply => '返信';

  @override
  String get reportMessage => 'メッセージを通報';

  @override
  String get requestPermission => '権限を要求する';

  @override
  String get requestToReadOlderMessages => '過去のメッセージを読む権限を要求する';

  @override
  String get revokeAllPermissions => 'すべての権限を取り消す';

  @override
  String get roomHasBeenUpgraded => '部屋はアップグレードされました';

  @override
  String get roomVersion => 'ルームバージョン';

  @override
  String get saturday => '土曜日';

  @override
  String savedFileAs(Object filename) {
    return 'Saved file as $filename';
  }

  @override
  String get saveFile => 'Save file';

  @override
  String get saveFileToFolder => 'Save file to this folder';

  @override
  String get search => '検索';

  @override
  String get searchForAChat => 'チャットを検索する';

  @override
  String get security => 'セキュリティ';

  @override
  String get securityKey => 'セキュリティキー';

  @override
  String get securityKeyLost => 'セキュリティキーを紛失しましたか？';

  @override
  String seenByUser(Object username) {
    return '$usernameが既読';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$usernameと他$count名が既読',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return '$usernameと$username2が既読';
  }

  @override
  String get send => '送信';

  @override
  String get sendAMessage => 'メッセージを送信';

  @override
  String get sendAsText => 'Send as text';

  @override
  String get sendAudio => '音声の送信';

  @override
  String get sendBugReports => 'バグレポートをsentry.ioへ送信することを許可する';

  @override
  String get sendFile => 'ファイルを送信';

  @override
  String get sendImage => '画像の送信';

  @override
  String get sendMessages => 'メッセージを送る';

  @override
  String get sendOriginal => 'オリジナルの送信';

  @override
  String get sendSticker => 'Send sticker';

  @override
  String get sendVideo => '動画を送信';

  @override
  String sentAFile(Object username) {
    return '$usernameはファイルを送信しました';
  }

  @override
  String sentAnAudio(Object username) {
    return '$usernameは音声を送信しました';
  }

  @override
  String sentAPicture(Object username) {
    return '$usernameは画像を送信しました';
  }

  @override
  String sentASticker(Object username) {
    return '$usernameはステッカーを送信しました';
  }

  @override
  String sentAVideo(Object username) {
    return '$usernameは動画を送信しました';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderNameは通話情報を送信しました';
  }

  @override
  String get sentryInfo => 'プライバシーについての情報: https://sentry.io/security/';

  @override
  String get sessionVerified => 'セッションは確認済みです';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'プロフィール画像を設定する';

  @override
  String get setAsCanonicalAlias => 'メインエイリアスに設定';

  @override
  String get setCustomEmotes => 'カスタムエモートの設定';

  @override
  String get setGroupDescription => 'グループの説明を設定する';

  @override
  String get setInvitationLink => '招待リンクを設定する';

  @override
  String get setPermissionsLevel => '権限レベルをセット';

  @override
  String get setStatus => 'ステータスの設定';

  @override
  String get settings => '設定';

  @override
  String get share => '共有';

  @override
  String sharedTheLocation(Object username) {
    return '$usernameは現在地を共有しました';
  }

  @override
  String get shareLocation => 'Share location';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'パスワードを表示';

  @override
  String get signUp => 'サインアップ';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'スキップ';

  @override
  String get soundVibrationLedColor => '音、振動、カラーLED';

  @override
  String get sourceCode => 'ソースコード';

  @override
  String get spaceIsPublic => 'Class is public';

  @override
  String get spaceName => 'Class name';

  @override
  String startedACall(Object senderName) {
    return '$senderNameは通話を開始しました';
  }

  @override
  String get startYourFirstChat => '初めてのチャットを開始しましょう！🙂\n・＋をタップして\n・友達のユーザー名を入力してください\n・楽しんでください';

  @override
  String get status => 'ステータス';

  @override
  String get statusExampleMessage => 'お元気ですか？';

  @override
  String get submit => '送信';

  @override
  String get sunday => '日曜日';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String get systemTheme => 'システム';

  @override
  String get tapOnDeviceToVerify => 'デバイス上でタップして認証';

  @override
  String get tapToShowImage => 'Tap to show image';

  @override
  String get tapToShowMenu => 'メニューを表示するにはタップしてください';

  @override
  String get theyDontMatch => '違います';

  @override
  String get theyMatch => '一致しています';

  @override
  String get thisRoomHasBeenArchived => 'この部屋はアーカイブされています。';

  @override
  String get thursday => '木曜日';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24:$minutes $suffix';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'お気に入り切り替え';

  @override
  String get toggleMuted => 'ミュート切り替え';

  @override
  String get toggleUnread => '既読/未読にマーク';

  @override
  String get tooManyRequestsWarning => 'リクエストが多すぎます。また後で試してみてください！';

  @override
  String get transferFromAnotherDevice => '違うデバイスから移行する';

  @override
  String get tryToSendAgain => '送信し直してみる';

  @override
  String get tuesday => '火曜日';

  @override
  String get unavailable => '不在';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$usernameが$targetNameのBANを解除しました';
  }

  @override
  String get unblockDevice => 'デバイスをブロック解除する';

  @override
  String get unknownDevice => '未知デバイス';

  @override
  String get unknownEncryptionAlgorithm => '未知の暗号化アルゴリズム';

  @override
  String unknownEvent(Object type) {
    return '未知のイベント\'$type\'';
  }

  @override
  String get unknownSessionVerify => '不明なセッションです。再確認してください。';

  @override
  String get unlockChatBackup => 'チャットのバックアップを解錠する';

  @override
  String get unmuteChat => 'チャットをミュート解除する';

  @override
  String get unpin => 'ピンを外す';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCountの未読メッセージ',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      other: '$unreadEvents件の未読メッセージ',
    );
  }

  @override
  String get useAmoledTheme => '有機EL(AMOLED)対応の色にしますか？';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$usernameと他$count名が入力しています…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$usernameと$username2が入力しています…';
  }

  @override
  String userIsTyping(Object username) {
    return '$usernameが入力しています…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$usernameは退室しました';
  }

  @override
  String get username => 'ユーザー名';

  @override
  String get userNotVerified => 'ユーザーは認証されていません';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$usernameは$typeイベントを送信しました';
  }

  @override
  String get userUnknownVerification => 'ユーザーは不明な認証状態です';

  @override
  String get userVerified => 'ユーザーは認証されました';

  @override
  String get unverified => 'Unverified';

  @override
  String get verified => '検証済み';

  @override
  String get verifiedSession => 'セッションの確認ができました！';

  @override
  String get verify => '確認';

  @override
  String get verifyManual => '手動で確認';

  @override
  String get verifyStart => '確認を始める';

  @override
  String get verifySuccess => '確認が完了しました！';

  @override
  String get verifyTitle => '他のアカウントを確認中';

  @override
  String get verifyUser => 'ユーザーの認証';

  @override
  String get videoCall => '音声通話';

  @override
  String get visibilityOfTheChatHistory => 'チャット履歴の表示';

  @override
  String get visibleForAllParticipants => 'すべての参加者が閲覧可能';

  @override
  String get visibleForEveryone => 'すべての人が閲覧可能';

  @override
  String get voiceMessage => 'ボイスメッセージ';

  @override
  String get waitingPartnerAcceptRequest => 'パートナーのリクエスト承諾待ちです...';

  @override
  String get waitingPartnerEmoji => 'パートナーの絵文字承諾待ちです...';

  @override
  String get waitingPartnerNumbers => 'パートナーの数字承諾待ちです…';

  @override
  String get wallpaper => '壁紙';

  @override
  String get warning => '警告！';

  @override
  String get warningEncryptionInBeta => 'エンドツーエンド暗号化は現在ベータ版です！これは自分自身の責任で行ってください！';

  @override
  String get wednesday => '水曜日';

  @override
  String get welcomeText => 'Matrixネットワークで一番かわいいチャットアプリへようこそ。';

  @override
  String get weSentYouAnEmail => 'あなたにメールを送信しました';

  @override
  String get whoCanPerformWhichAction => '誰がどの操作を実行できるか';

  @override
  String get whoIsAllowedToJoinThisGroup => '誰がこのチャットに入れますか';

  @override
  String get whyDoYouWantToReportThis => 'なぜこれを通報したいのですか？';

  @override
  String get wipeChatBackup => '新しい秘密鍵を作るためにチャットのバックアップを消去しますか？';

  @override
  String get withTheseAddressesRecoveryDescription => 'これらのアドレスを使用すると、パスワードを回復することができます。';

  @override
  String get writeAMessage => 'メッセージを入力してください…';

  @override
  String get yes => 'はい';

  @override
  String get you => 'あなた';

  @override
  String get youAreInvitedToThisChat => 'チャットに招待されています';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'あなたはもうこのチャットの参加者ではありません';

  @override
  String get youCannotInviteYourself => '自分自身を招待することはできません';

  @override
  String get youHaveBeenBannedFromThisChat => 'チャットからBANされてしまいました';

  @override
  String get yourChatsAreBeingSynced => 'Your chats are being synced…';

  @override
  String get yourOwnUsername => 'あなたのユーザー名';

  @override
  String get yourPublicKey => 'あなたの公開鍵';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return '$homeserverに接続します';
  }

  @override
  String get zoomIn => '拡大';

  @override
  String get zoomOut => '縮小';

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
  String get addToStory => 'ストーリーに追加';

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
