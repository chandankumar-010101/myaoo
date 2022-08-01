

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Korean (`ko`).
class L10nKo extends L10n {
  L10nKo([String locale = 'ko']) : super(locale);

  @override
  String get passwordsDoNotMatch => '비밀번호가 일치하지 않습니다!';

  @override
  String get pleaseEnterValidEmail => '유효한 이메일 주소를 입력해주세요.';

  @override
  String get repeatPassword => '비밀번호 다시 입력';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return '최소 $min자를 선택하세요.';
  }

  @override
  String get about => '소개';

  @override
  String get accept => '수락';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username가 초대를 수락함';
  }

  @override
  String get account => '계정';

  @override
  String get accountInformation => '계정 정보';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username가 종단간 암호화를 활성화함';
  }

  @override
  String get addEmail => '이메일 추가';

  @override
  String get addGroupDescription => '그룹 소개 추가';

  @override
  String get addNewFriend => '새 친구 추가';

  @override
  String get addToSpace => '스페이스에 추가';

  @override
  String get admin => '관리자';

  @override
  String get alias => '별명';

  @override
  String get all => '모두';

  @override
  String get allChats => '모든 채팅';

  @override
  String get alreadyHaveAnAccount => '이미 계정이 있나요?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName 가 전화에 응답했습니다';
  }

  @override
  String get anyoneCanJoin => '누구나 들어올 수 있음';

  @override
  String get appLock => '앱 잠금';

  @override
  String get archive => '저장';

  @override
  String get archivedRoom => '저장된 방';

  @override
  String get areGuestsAllowedToJoin => '게스트 유저가 참가 여부';

  @override
  String get areYouSure => '확실한가요?';

  @override
  String get areYouSureYouWantToLogout => '로그아웃하고 싶은 것이 확실한가요?';

  @override
  String get askSSSSSign => '다른 사람을 서명하기 위해서, 저장 비밀번호나 복구 키를 입력해주세요.';

  @override
  String get askSSSSVerify => '당신의 세션을 인증하기 위해 저장 비밀번호나 복구 키를 입력해주세요.';

  @override
  String askVerificationRequest(Object username) {
    return '$username의 인증 요청을 수락할까요?';
  }

  @override
  String get audioPlayerPause => '일시정지';

  @override
  String get audioPlayerPlay => '재생';

  @override
  String get authentication => '인증';

  @override
  String get autoplayImages => '자동으로 움직이는 스티커와 이모트 재생';

  @override
  String get avatarHasBeenChanged => '아바타 바뀜';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return '홈서버가 지원하는 로그인 유형:\n${serverVersions}\n하지만 이 앱에서 지원하는 것은:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => '엔터로 보내기';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return '이 홈서버가 지원하는 Spec 버전:\n${serverVersions}\n하지만 이 앱은 $supportedVersions만 지원합니다';
  }

  @override
  String get banFromChat => '채팅에서 밴';

  @override
  String get banned => '밴됨';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username이 $targetName 밴함';
  }

  @override
  String get blockDevice => '기기 차단';

  @override
  String get blocked => '차단됨';

  @override
  String get botMessages => '봇 메시지';

  @override
  String get bubbleSize => '버블 크기';

  @override
  String get cachedKeys => '키 캐시됨';

  @override
  String get cancel => '취소';

  @override
  String cantOpenUri(Object uri) {
    return 'URI $uri를 열 수 없습니다';
  }

  @override
  String get changeDeviceName => '기기 이름 바꾸기';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username이 채팅 아바타 바꿈';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username이 채팅 설명을 \'$description\' 으로 변경함';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username이 채팅 이름을 \'$chatname\' 으로 바꿈';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username이 채팅 권한을 바꿈';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username이 닉네임을 \'$displayname\' 으로 바꿈';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username이 게스트 접근 규칙을 변경함';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username이 게스트 접근 규칙을 $rules 로 변경함';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username이 대화 기록 설정을 변경함';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username이 대화 기록 설정을 $rules 로 바꿈';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username이 참가 규칙을 바꿈';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username이 참가 규칙을 $joinRules 로 바꿈';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username이 자신의 아바타를 바꿈';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username이 방 별명을 바꿈';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username이 초대 링크 바꿈';
  }

  @override
  String get changelog => '변경 기록';

  @override
  String get changePassword => '비밀번호 바꾸기';

  @override
  String get changesHaveBeenSaved => '변경들이 저장되었습니다';

  @override
  String get changeTheHomeserver => '홈서버 바꾸기';

  @override
  String get changeTheme => '스타일 바꾸기';

  @override
  String get changeTheNameOfTheGroup => '그룹의 이름 바꾸기';

  @override
  String get changeTheServer => '서버 바꾸기';

  @override
  String get changeWallpaper => '배경 바꾸기';

  @override
  String get changeYourAvatar => '아바타 바꾸기';

  @override
  String get channelCorruptedDecryptError => '암호화가 손상되었습니다';

  @override
  String get chat => '채팅';

  @override
  String get yourUserId => '당신의 유저 ID:';

  @override
  String get setupChatBackup => '채팅 백업 설정';

  @override
  String get iWroteDownTheKey => '키를 적었습니다';

  @override
  String get yourChatBackupHasBeenSetUp => '당신의 채팅 백업이 설정되었습니다.';

  @override
  String get chatBackup => '채팅 백업';

  @override
  String get setupChatBackupDescription => '당신의 메시지를 보호하기 위해서, 보안 키를 생성했습니다.\n비밀번호 관리자와 같이 안전한 곳에 저장해주세요.';

  @override
  String get chatBackupDescription => '당신의 채팅 백업은 보안 키로 암호화됩니다. 이 키를 잃어버리지 마세요.';

  @override
  String get chatDetails => '채팅 정보';

  @override
  String get chatHasBeenAddedToThisSpace => '이 스페이스에 채팅이 추가되었습니다';

  @override
  String get chatHasBeenRemovedFromThisSpace => '이 스페이스에서 채팅이 삭제되었습니다';

  @override
  String get chats => '채팅';

  @override
  String get chooseAStrongPassword => '안전한 비밀번호를 설정하세요';

  @override
  String get chooseAUsername => '닉네임 고르기';

  @override
  String get clearArchive => '저장 지우기';

  @override
  String get clearText => '문자 지우기';

  @override
  String get close => '닫기';

  @override
  String get commandHint_ban => '이 룸에서 주어진 유저 밴하기';

  @override
  String get commandHint_clearcache => '캐시 지우기';

  @override
  String get commandHint_create => '빈 그룹 채팅을 생성\t\n--no-encryption을 사용해 암호화를 비활성화';

  @override
  String get commandHint_discardsession => '세션 삭제';

  @override
  String get commandHint_dm => '다이렉트 채팅 시작\t\n--no-encryption을 사용해 암호화 비활성화';

  @override
  String get commandHint_html => 'HTML 형식의 문자 보내기';

  @override
  String get commandHint_invite => '주어진 유저 이 룸에 초대하기';

  @override
  String get commandHint_join => '주어진 방 들어가기';

  @override
  String get commandHint_kick => '주어진 유저 방에서 삭제하기';

  @override
  String get commandHint_leave => '이 룸 나가기';

  @override
  String get commandHint_me => '자신을 소개하세요';

  @override
  String get commandHint_myroomavatar => '이 방의 사진 설정하기 (by mxc-uri)';

  @override
  String get commandHint_myroomnick => '이 방의 표시 이름 설정하기';

  @override
  String get commandHint_op => '주어진 유저의 권한 레벨 설정 (기본:50)';

  @override
  String get commandHint_plain => '형식이 지정되지 않은 문자 보내기';

  @override
  String get commandHint_react => '답장 반응으로 보내기';

  @override
  String get commandHint_send => '문자 보내기';

  @override
  String get commandHint_unban => '주어진 유저 이 룸에서 밴 해제하기';

  @override
  String get commandInvalid => '잘못된 명령어';

  @override
  String commandMissing(Object command) {
    return '$command 는 명령어가 아닙니다.';
  }

  @override
  String get compareEmojiMatch => '다른 기기에서도 아래의 이모지가 일치하는지 비교하세요:';

  @override
  String get compareNumbersMatch => '다른 기기에서도 아래의 숫자가 일치하는지 비교하세요:';

  @override
  String get configureChat => '채팅 설정';

  @override
  String get confirm => '확인';

  @override
  String get connect => '연결';

  @override
  String get connectionAttemptFailed => '연결 시도 실패';

  @override
  String get contactHasBeenInvitedToTheGroup => '연락처가 그룹에 초대되었습니다';

  @override
  String get containsDisplayName => '표시 이름 포함';

  @override
  String get containsUserName => '유저 이름 포함';

  @override
  String get contentHasBeenReported => '콘텐츠가 서버 운영자에게 신고되었습니다';

  @override
  String get contentViewer => '콘텐츠 뷰어';

  @override
  String get copiedToClipboard => '클립보드에 복사됨';

  @override
  String get copy => '복사';

  @override
  String get copyToClipboard => '클립보드에 복사';

  @override
  String couldNotDecryptMessage(Object error) {
    return '메시지 복호화할 수 없음: $error';
  }

  @override
  String get couldNotSetAvatar => '아바타 설정할 수 없음';

  @override
  String get couldNotSetDisplayname => '표시 이름 설정할 수 없음`';

  @override
  String countParticipants(Object count) {
    return '$count 참여자';
  }

  @override
  String get create => '생성';

  @override
  String get createAccountNow => '지금 계정 생성하기';

  @override
  String createdTheChat(Object username) {
    return '$username이 채팅을 생성함';
  }

  @override
  String get createNewGroup => '새로운 그룹';

  @override
  String get createNewSpace => '새로운 스페이스';

  @override
  String get crossSigningDisabled => '교차 서명 꺼짐';

  @override
  String get crossSigningEnabled => '교차 서명 켜짐';

  @override
  String get currentlyActive => '현재 활동 중';

  @override
  String get darkTheme => '다크';

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
  String get deactivateAccountWarning => '이것은 당신의 계정을 비활성화할 것입니다. 이것은 되돌릴 수 없습니다! 확실한가요?';

  @override
  String get defaultPermissionLevel => '기본 권한 레벨';

  @override
  String get delete => '삭제';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get deleteMessage => '메시지 삭제';

  @override
  String get deny => '거부';

  @override
  String get device => '기기';

  @override
  String get deviceId => '기기 ID';

  @override
  String get devices => '기기';

  @override
  String get deviceVerifyDescription => '암호화는 모든 기기들이 확인되었을 때만 안전합니다.';

  @override
  String get directChats => '다이렉트 채팅';

  @override
  String get discardPicture => '사진 삭제';

  @override
  String get discover => '발견';

  @override
  String get discoverGroups => '그룹 발견';

  @override
  String get displaynameHasBeenChanged => '표시 이름이 변경되었습니다';

  @override
  String get donate => '후원';

  @override
  String get dontAskAgain => '취소하고 다시 묻지 않기';

  @override
  String get downloadFile => '파일 다운로드';

  @override
  String get edit => '수정';

  @override
  String get editBlockedServers => '차단된 서버 수정';

  @override
  String get editChatPermissions => '채팅 권한 수정';

  @override
  String get editDisplayname => '표시 이름 수정';

  @override
  String get editJitsiInstance => 'Jitsi 인스턴스 수정';

  @override
  String get editRoomAliases => '방 별명 수정';

  @override
  String get editRoomAvatar => '방 아바타 수정';

  @override
  String get emoteExists => '이모트가 이미 존재합니다!';

  @override
  String get emoteInvalid => '올바르지 않은 이모트 단축키!';

  @override
  String get emotePacks => '방을 위한 이모트 팩';

  @override
  String get emoteSettings => '이모트 설정';

  @override
  String get emoteShortcode => '이모트 단축키';

  @override
  String get emoteWarnNeedToPick => '이모트 단축키와 이미지를 골라야 합니다!';

  @override
  String get emptyChat => '빈 채팅';

  @override
  String get enableChatBackup => '채팅을 잃지 않으려면 채팅 백업을 켜세요.';

  @override
  String get enableEmotesGlobally => '이모트 팩 항상 사용하기';

  @override
  String get enableEncryption => '암호화 켜기';

  @override
  String get enableEncryptionWarning => '당신은 다시 암호화를 비활성화할 수 없습니다. 확실한가요?';

  @override
  String get encrypted => '암호화됨';

  @override
  String get encryption => '암호화';

  @override
  String get encryptionAlgorithm => '암호화 알고리즘';

  @override
  String get encryptionNotEnabled => '암호화가 비활성화됨';

  @override
  String get end2endEncryptionSettings => '종단간 암호화 설정`';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName 이 통화를 종료했습니다';
  }

  @override
  String get enterAGroupName => '그룹 이름 입력';

  @override
  String get enterAnEmailAddress => '이메일 주소 입력';

  @override
  String get enterASpacepName => '스페이스 이름 입력';

  @override
  String get enterAUsername => '유저 이름 입력';

  @override
  String get homeserver => '홈서버';

  @override
  String get enterYourHomeserver => '당신의 홈서버를 입력하세요';

  @override
  String errorObtainingLocation(Object error) {
    return '위치 얻는 중 오류: $error';
  }

  @override
  String get everythingReady => '모든 것이 준비됐어요!';

  @override
  String get extremeOffensive => '매우 공격적임';

  @override
  String get fileName => '파일 이름';

  @override
  String get fileSize => '파일 크기';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => '폰트 크기';

  @override
  String get forward => '전달';

  @override
  String get friday => '금요일';

  @override
  String get friends => '친구';

  @override
  String get fromJoining => '들어온 후부터';

  @override
  String get fromTheInvitation => '초대받은 후부터';

  @override
  String get goToTheNewRoom => '새로운 방 가기';

  @override
  String get group => '그룹';

  @override
  String get groupDescription => '그룹 설명';

  @override
  String get groupDescriptionHasBeenChanged => '그룹 설명 바뀜';

  @override
  String get groupIsPublic => '그룸 공개됨';

  @override
  String get groups => '그룹';

  @override
  String groupWith(Object displayname) {
    return '$displayname 과의 그룹';
  }

  @override
  String get guestsAreForbidden => '게스트는 금지되어 있습니다';

  @override
  String get guestsCanJoin => '게스트가 들어올 수 있음';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username이 $targetName에 대한 초대를 철회함';
  }

  @override
  String get help => '도움';

  @override
  String get hideRedactedEvents => '지워진 이벤트 숨기기';

  @override
  String get hideUnknownEvents => '알 수 없는 이벤트 숨기기';

  @override
  String get homeserverIsNotCompatible => '홈서버가 호환되지 않음';

  @override
  String get howOffensiveIsThisContent => '이 콘텐츠가 얼마나 모욕적인가요?';

  @override
  String get id => 'ID';

  @override
  String get identity => '신원';

  @override
  String get ignore => '무시';

  @override
  String get ignoredUsers => '무시된 사용자';

  @override
  String get ignoreListDescription => '당신을 방해하는 사용자들을 무시할 수 있습니다. 당신의 개인 무시 리스트에 있는 사용자들에게서 메시지나 방 초대를 수신할 수 없습니다.';

  @override
  String get ignoreUsername => '유저 이름 무시';

  @override
  String get iHaveClickedOnLink => '링크를 클릭했어요';

  @override
  String get incorrectPassphraseOrKey => '올바르지 않은 복구 키나 비밀번호';

  @override
  String get inoffensive => '모욕적이지 않음';

  @override
  String get invalidEmail => '올바르지 않은 이메일';

  @override
  String get inviteContact => '연락처 초대';

  @override
  String inviteContactToGroup(Object groupName) {
    return '연락처 $groupName 에 초대';
  }

  @override
  String get invited => '초대됨';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username이 $targetName을 초대함';
  }

  @override
  String get invitedUsersOnly => '초대한 사용자만';

  @override
  String get inviteForMe => '나를 위해 초대';

  @override
  String inviteText(Object username, Object link) {
    return '$username이 당신을 FluffyChat에 초대했습니다.\n1. FluffyChat 설치: https://fluffychat.im\n2. 가입하거나 로그인\n3. 초대 링크 열기: $link';
  }

  @override
  String get isDeviceKeyCorrect => '아래 기기 키가 맞습니까?';

  @override
  String get isTyping => '가 입력 중…';

  @override
  String joinedTheChat(Object username) {
    return '$username이 채팅에 참가함';
  }

  @override
  String get joinRoom => '방 들어가기';

  @override
  String get keysCached => '키가 캐시됨';

  @override
  String get keysMissing => '키가 없음';

  @override
  String kicked(Object username, Object targetName) {
    return '$username이 $targetName을 추방함';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username이 $targetName을 추방하고 밴함';
  }

  @override
  String get kickFromChat => '채팅에서 추방';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return '마지막 활동: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => '마지막 활동 IP';

  @override
  String get lastSeenLongTimeAgo => '오래 전 접속';

  @override
  String get leave => '나가기';

  @override
  String get leftTheChat => '채팅을 나갔습니다';

  @override
  String get license => '라이선스';

  @override
  String get lightTheme => '라이트';

  @override
  String loadCountMoreParticipants(Object count) {
    return '$count명의 참가자 더 표시';
  }

  @override
  String get loadingPleaseWait => '로딩 중... 기다려 주세요.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => '더 불러오기…';

  @override
  String get locationDisabledNotice => '위치 서비스가 비활성화되었습니다. 위치를 공유하려면 활성화시켜주세요.';

  @override
  String get locationPermissionDeniedNotice => '위치 권한이 거부되었습니다. 위치를 공유하기 위해서 허용해주세요.';

  @override
  String get login => '로그인';

  @override
  String logInTo(Object homeserver) {
    return '$homeserver 에 로그인';
  }

  @override
  String get loginWithOneClick => '클릭 한 번으로 로그인';

  @override
  String get logout => '로그아웃';

  @override
  String get makeAModerator => '관리자로 만들기';

  @override
  String get makeAnAdmin => '운영자 만들기';

  @override
  String get makeSureTheIdentifierIsValid => '식별자가 유효한지 확인하세요';

  @override
  String get memberChanges => '참가자 변경';

  @override
  String get mention => '멘션';

  @override
  String get messages => '메시지';

  @override
  String get messageWillBeRemovedWarning => '모든 참여자에게서 메시지가 지워집니다';

  @override
  String get moderator => '관리자';

  @override
  String get monday => '월요일';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1개 이상 이벤트',
      other: '$count 이벤트',
    );
  }

  @override
  String get muteChat => '채팅 음소거';

  @override
  String get needPantalaimonWarning => '지금 종단간 암호화를 사용하기 위해서는 Pantalaimon이 필요하다는 것을 알아주세요.';

  @override
  String get newChat => '새로운 채팅';

  @override
  String get newMessageInFluffyChat => 'FluffyChat에서 새로운 메시지';

  @override
  String get newVerificationRequest => '새로운 확인 요청!';

  @override
  String get next => '다음';

  @override
  String get no => '아니요';

  @override
  String get noConnectionToTheServer => '서버에 연결 없음';

  @override
  String get noCrossSignBootstrap => 'Fluffychat은 현재 교차 서명을 활성화하는 것을 지원하지 않습니다. Element에서 활성화해주세요.';

  @override
  String get noDescription => '설명 없음';

  @override
  String get noEmotesFound => '이모트 발견되지 않음. 😕';

  @override
  String get noEncryptionForPublicRooms => '당신은 방이 공개적으로 접근 가능하지 않을 때만 암호화를 켤 수 있습니다.';

  @override
  String get noGoogleServicesWarning => '이 휴대폰에 Google 서비스가 없는 것 같습니다. 프라이버시를 위해 좋은 결정이죠! FluffyChat에서 푸시 알림을 받으려면 https://microg.org/ 이나 https://unifiedpush.org/ 을 사용하는 것을 권장합니다.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1은 matrix 서버가 아닙니다, $server2를 대신 사용할까요?';
  }

  @override
  String get createNewChatExplaination => '서로 가깝지 않다면 초대 링크를 공유하거나 QR 코드를 스캔하세요.';

  @override
  String get shareYourInviteLink => '당신의 초대 링크 공유';

  @override
  String get typeInInviteLinkManually => '초대 링크 직접 입력...';

  @override
  String get scanQrCode => 'QR 코드 스캔';

  @override
  String get noMegolmBootstrap => '온라인 키 백업을 Element에서 켜주세요.';

  @override
  String get none => '없음';

  @override
  String get newPasswordDescription => '비밀번호를 복구하기 위해서는, 당신의 계정에 이메일 주소를 추가해야합니다.';

  @override
  String get newUsernameDescription => '당신의 사용자 ID는 @사용자 이름:서버 이름 의 형식을 가질 것입니다';

  @override
  String get noPasswordRecoveryDescription => '당신은 비밀번호를 복구할 방법을 추가하지 않았습니다.';

  @override
  String get noPermission => '권한 없음';

  @override
  String get noPublicRoomsFound => '아무 공개 방도 발견되지 않았어요…';

  @override
  String get noRoomsFound => '아무 방도 발견되지 않았어요…';

  @override
  String get noStatusesFound => '아무 상태도 발견되지 않음.';

  @override
  String get notifications => '알림';

  @override
  String get notificationsEnabledForThisAccount => '이 계정에서 알림이 활성화되었습니다';

  @override
  String get notSupportedInWeb => '웹에서 지원되지 않음';

  @override
  String numberSelected(Object number) {
    return '$number 선택됨';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count명이 입력 중…';
  }

  @override
  String get obtainingLocation => '위치 얻는 중…';

  @override
  String get offensive => '모욕적임';

  @override
  String get offline => '오프라인';

  @override
  String get ok => '확인';

  @override
  String get online => '온라인';

  @override
  String get onlineKeyBackupDisabled => '온라인 키 백업이 비활성화됨';

  @override
  String get onlineKeyBackupEnabled => '온라인 키 백업이 활성화됨';

  @override
  String get oopsPushError => '앗! 안타깝게도, 푸시 알림을 설정하는 중 오류가 발생했습니다.';

  @override
  String get oopsSomethingWentWrong => '앗, 무언가가 잘못되었습니다…';

  @override
  String get openAppToReadMessages => '앱을 열어서 메시지를 읽으세요';

  @override
  String get openCamera => '카메라 열기';

  @override
  String get openVideoCamera => '영상용 카메라 열기';

  @override
  String get oneClientLoggedOut => '당신의 클라이언트 중 하나가 로그아웃 됨';

  @override
  String get addAccount => '계정 추가';

  @override
  String get editBundlesForAccount => '이 계정의 번들 수정';

  @override
  String get addToBundle => '번들에 추가';

  @override
  String get removeFromBundle => '이 번들에서 삭제';

  @override
  String get bundleName => '번들 이름';

  @override
  String get enableMultiAccounts => '(베타) 이 기기에서 다중 계정 활성화';

  @override
  String get openInMaps => '지도에서 열기';

  @override
  String get link => '링크';

  @override
  String get serverRequiresEmail => '이 서버는 가입을 위해 당신의 이메일을 확인해야 합니다.';

  @override
  String get optionalGroupName => '(선택) 그룹 이름';

  @override
  String get or => '이나';

  @override
  String get participant => '참여자';

  @override
  String get participatingUserDevices => '참여한 사용자 기기';

  @override
  String get passphraseOrKey => '비밀번호나 복구 키';

  @override
  String get password => '비밀번호';

  @override
  String get passwordForgotten => '비밀번호 까먹음';

  @override
  String get passwordHasBeenChanged => '비밀번호가 변경됨';

  @override
  String get passwordRecovery => '비밀번호 복구';

  @override
  String get people => '사람들';

  @override
  String get pickImage => '이미지 고르기';

  @override
  String get pin => '고정';

  @override
  String play(Object fileName) {
    return '$fileName 재생';
  }

  @override
  String get pleaseChoose => '선택해주세요';

  @override
  String get pleaseChooseAPasscode => '비밀번호를 골라주세요';

  @override
  String get pleaseChooseAUsername => '유저 이름을 골라주세요';

  @override
  String get pleaseClickOnLink => '이메일의 링크를 클릭하고 진행해주세요.';

  @override
  String get pleaseEnter4Digits => '4자리 숫자를 입력하거나 앱 잠금을 사용하지 않도록 하려면 비워두세요.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Matrix ID를 입력해주세요.';

  @override
  String get pleaseEnterSecurityKey => '보안 키를 입력해주세요:';

  @override
  String get pleaseEnterYourPassword => '비밀번호를 입력해주세요';

  @override
  String get pleaseEnterYourPin => 'PIN을 입력해주세요';

  @override
  String get pleaseEnterYourUsername => '유저 이름을 입력해주세요';

  @override
  String get pleaseFollowInstructionsOnWeb => '웹사이트의 가이드를 따르고 다음 버튼을 눌러주세요.';

  @override
  String get privacy => '프라이버시';

  @override
  String get publicGroups => '공개 그룹';

  @override
  String get publicKey => '공개 키';

  @override
  String get publicRooms => '공개 방';

  @override
  String get publicSpace => '공개 스페이스';

  @override
  String get pushRules => '푸시 규칙';

  @override
  String get reason => '이유';

  @override
  String get recording => '녹음';

  @override
  String redactedAnEvent(Object username) {
    return '$username이 이벤트를 지움';
  }

  @override
  String get redactMessage => '메시지 지우기';

  @override
  String get register => '가입';

  @override
  String get reject => '거절';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username이 초대를 거절함';
  }

  @override
  String get rejoin => '다시 가입';

  @override
  String get remove => '지우기';

  @override
  String get removeAllOtherDevices => '모든 다른 기기에서 지우기';

  @override
  String removedBy(Object username) {
    return '$username에 의해 지워짐';
  }

  @override
  String get removeDevice => '기기 삭제';

  @override
  String get unbanFromChat => '채팅에서 밴 해제';

  @override
  String get removeMessage => '메시지 지우기';

  @override
  String get removeYourAvatar => '아바타 지우기';

  @override
  String get renderRichContent => '풍부한 메시지 콘텐츠 렌더링';

  @override
  String get replaceRoomWithNewerVersion => '방 새로운 버전으로 대체하기';

  @override
  String get reply => '답장';

  @override
  String get reportMessage => '메시지 신고';

  @override
  String get requestPermission => '권한 요청';

  @override
  String get requestToReadOlderMessages => '오래된 메시지 읽도록 요청';

  @override
  String get revokeAllPermissions => '모든 권한 취소';

  @override
  String get roomHasBeenUpgraded => '방이 업그레이드되었습니다';

  @override
  String get roomVersion => '방 버전';

  @override
  String get saturday => '토요일';

  @override
  String savedFileAs(Object filename) {
    return '파일 $filename 으로 저장함';
  }

  @override
  String get saveFile => '파일 저장';

  @override
  String get saveFileToFolder => '파일 이 폴더에 저장';

  @override
  String get search => '검색';

  @override
  String get searchForAChat => '채팅 검색';

  @override
  String get security => '보안';

  @override
  String get securityKey => '보안 키';

  @override
  String get securityKeyLost => '보안 키를 잃어버렸나요?';

  @override
  String seenByUser(Object username) {
    return '$username이 읽음';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$username과 이외 $count명이 읽음',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return '$username, $username2가 읽음';
  }

  @override
  String get send => '보내기';

  @override
  String get sendAMessage => '메시지 보내기';

  @override
  String get sendAsText => '텍스트로 보내기';

  @override
  String get sendAudio => '오디오 보내기';

  @override
  String get sendBugReports => 'sentry.io로 버그 제보 허용';

  @override
  String get sendFile => '파일 보내기';

  @override
  String get sendImage => '이미지 보내기';

  @override
  String get sendMessages => '메시지 보내기';

  @override
  String get sendOriginal => '원본 보내기';

  @override
  String get sendSticker => '스티커 보내기';

  @override
  String get sendVideo => '영상 보내기';

  @override
  String sentAFile(Object username) {
    return '$username이 파일 보냄';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username이 오디오 보냄';
  }

  @override
  String sentAPicture(Object username) {
    return '$username이 사진 보냄';
  }

  @override
  String sentASticker(Object username) {
    return '$username이 스티커 보냄';
  }

  @override
  String sentAVideo(Object username) {
    return '$username이 영상 보냄';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName 이 통화 정보 보냄';
  }

  @override
  String get sentryInfo => '당신의 프라이버시에 대한 정보: https://sentry.io/security/';

  @override
  String get sessionVerified => '세션이 확인됨';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => '프로필 사진 설정';

  @override
  String get setAsCanonicalAlias => '주 별명으로 설정';

  @override
  String get setCustomEmotes => '맞춤 이모트 설정';

  @override
  String get setGroupDescription => '그룹 설명 설정';

  @override
  String get setInvitationLink => '초대 링크 설정';

  @override
  String get setPermissionsLevel => '권한 레벨 설정';

  @override
  String get setStatus => '상태 설정';

  @override
  String get settings => '설정';

  @override
  String get share => '공유';

  @override
  String sharedTheLocation(Object username) {
    return '$username이 위치 공유함';
  }

  @override
  String get shareLocation => '위치 보내기';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => '비밀번호 보이기';

  @override
  String get signUp => '가입';

  @override
  String get singlesignon => '단일 계정 로그인(SSO)';

  @override
  String get skip => '스킵';

  @override
  String get soundVibrationLedColor => '소리, 진동 LED-색';

  @override
  String get sourceCode => '소스 코드';

  @override
  String get spaceIsPublic => '스페이스가 공개됨';

  @override
  String get spaceName => '스페이스 이름';

  @override
  String startedACall(Object senderName) {
    return '$senderName 가 통화 시작함';
  }

  @override
  String get startYourFirstChat => '당신의 처음 채팅을 바로 시작하세요! 🙂\n- \'새로운 채팅\' 버튼을 누르고\n- 친구의 유저 이름 입력\n- 채팅을 즐기세요';

  @override
  String get status => '상태';

  @override
  String get statusExampleMessage => '오늘은 어떤 기분인가요?';

  @override
  String get submit => '제출';

  @override
  String get sunday => '일요일';

  @override
  String get synchronizingPleaseWait => '동기화 중... 기다려주세요.';

  @override
  String get systemTheme => '시스템';

  @override
  String get tapOnDeviceToVerify => '확인할 기기를 탭하세요';

  @override
  String get tapToShowImage => '탭하여 이미지 표시';

  @override
  String get tapToShowMenu => '탭하여 메뉴 표시';

  @override
  String get theyDontMatch => '일치하지 않습니다';

  @override
  String get theyMatch => '일치합니다';

  @override
  String get thisRoomHasBeenArchived => '이 방은 보관되었습니다.';

  @override
  String get thursday => '목요일';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours24시 $minutes분';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => '즐겨찾기 토글';

  @override
  String get toggleMuted => '음소거 토글';

  @override
  String get toggleUnread => '메시지 안/읽음 으로 표시';

  @override
  String get tooManyRequestsWarning => '너무 많은 요청. 잠시 후에 다시 시도해주세요!';

  @override
  String get transferFromAnotherDevice => '다른 기기에서 가져오기';

  @override
  String get tryToSendAgain => '다시 보내도록 시도';

  @override
  String get tuesday => '화요일';

  @override
  String get unavailable => '사용할 수 없음';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username이 $targetName 밴 해제함';
  }

  @override
  String get unblockDevice => '기기 차단 해제';

  @override
  String get unknownDevice => '알 수 없는 기기';

  @override
  String get unknownEncryptionAlgorithm => '알 수 없는 암호화 알고리즘';

  @override
  String unknownEvent(Object type) {
    return '알 수 없는 이벤트 \'$type\'';
  }

  @override
  String get unknownSessionVerify => '알 수 없는 세션, 확인해주세요';

  @override
  String get unlockChatBackup => '채팅 백업 잠금 해제';

  @override
  String get unmuteChat => '음소거 해제';

  @override
  String get unpin => '고정 해제';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '읽지 않은 채팅 1',
      other: '$unreadCount 개',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1개의 읽지 않은 메시지',
      other: '$unreadEvents 개',
    );
  }

  @override
  String get useAmoledTheme => 'AMOLED 호환 색을 사용할까요?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username과 $count명이 입력 중…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username과 $username2가 입력 중…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username이 입력 중…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username이 채팅을 나감';
  }

  @override
  String get username => '유저 이름';

  @override
  String get userNotVerified => '유저가 확인되지 않음';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username이 $type 이벤트 보냄';
  }

  @override
  String get userUnknownVerification => '사용자가 알 수 없는 확인 상태를 가짐';

  @override
  String get userVerified => '유저가 확인됨';

  @override
  String get unverified => '확인되지 않음';

  @override
  String get verified => '확인됨';

  @override
  String get verifiedSession => '세션을 성공적으로 확인했어요!';

  @override
  String get verify => '확인';

  @override
  String get verifyManual => '직접 확인';

  @override
  String get verifyStart => '확인 시작';

  @override
  String get verifySuccess => '성공적으로 확인했어요!';

  @override
  String get verifyTitle => '다른 계정 확인 중';

  @override
  String get verifyUser => '유저 확인';

  @override
  String get videoCall => '영상 통화';

  @override
  String get visibilityOfTheChatHistory => '대화 기록 설정';

  @override
  String get visibleForAllParticipants => '모든 참가자에게 보임';

  @override
  String get visibleForEveryone => '모두에게 보임';

  @override
  String get voiceMessage => '음성 메시지';

  @override
  String get waitingPartnerAcceptRequest => '상대가 요청을 수락하길 기다리는 중…';

  @override
  String get waitingPartnerEmoji => '상대가 이모지를 수락하길 기다리는 중…';

  @override
  String get waitingPartnerNumbers => '상대가 숫자를 수락하길 기다리는 중…';

  @override
  String get wallpaper => '배경';

  @override
  String get warning => '경고!';

  @override
  String get warningEncryptionInBeta => '종단간 암호화는 현재 베타입니다! 주의하여 사용하십시오!';

  @override
  String get wednesday => '수요일';

  @override
  String get welcomeText => 'Matrix 네트워크에서 가장 귀여운 인스턴트 메신저에 오신 걸 환영해요.';

  @override
  String get weSentYouAnEmail => '우리가 당신에게 이메일을 보냈습니다';

  @override
  String get whoCanPerformWhichAction => '누가 어떤 행동을 할 수 있는지';

  @override
  String get whoIsAllowedToJoinThisGroup => '누가 이 그룹에 들어오도록 허용할지';

  @override
  String get whyDoYouWantToReportThis => '왜 이것을 신고하려고 하나요?';

  @override
  String get wipeChatBackup => '새로운 보안 키를 생성하기 위해 채팅 백업을 초기화할까요?';

  @override
  String get withTheseAddressesRecoveryDescription => '이 주소로 당신의 비밀번호를 복구할 수 있습니다.';

  @override
  String get writeAMessage => '메시지 작성…';

  @override
  String get yes => '확인';

  @override
  String get you => '당신';

  @override
  String get youAreInvitedToThisChat => '당신은 이 채팅에 초대되었습니다';

  @override
  String get youAreNoLongerParticipatingInThisChat => '당신은 더 이상 이 채팅에 참여하지 않습니다';

  @override
  String get youCannotInviteYourself => '자신을 초대할 수 없습니다';

  @override
  String get youHaveBeenBannedFromThisChat => '당신은 이 채팅에서 밴되었습니다';

  @override
  String get yourChatsAreBeingSynced => '당신의 채팅이 동기화되는 중…';

  @override
  String get yourOwnUsername => '당신의 유저 이름';

  @override
  String get yourPublicKey => '당신의 공개 키';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return '$homeserver 에 연결됩니다';
  }

  @override
  String get zoomIn => '확대';

  @override
  String get zoomOut => '축소';

  @override
  String get messageInfo => '메시지 정보';

  @override
  String get time => '시간';

  @override
  String get messageType => '메시지 유형';

  @override
  String get sender => '발신자';

  @override
  String get openGallery => '갤러리 열기';

  @override
  String get removeFromSpace => '스페이스에서 삭제';

  @override
  String get removeFromSpaceDescription => '이것은 현재 채팅을 현재 스페이스로부터 지웁니다. 여전히 \'모든 채팅\'에서 접근할 수 있습니다.';

  @override
  String get addToSpaceDescription => '이 채팅을 추가할 스페이스를 선택하세요.';

  @override
  String get start => '시작';

  @override
  String get setupChatBackupNow => '당신의 채팅 백업을 지금 설정하세요';

  @override
  String get pleaseEnterSecurityKeyDescription => '채팅 백업을 잠금 해제하려면, 이전 세션에서 생성된 보안 키를 입력해주세요. 보안 키는 비밀번호가 아닙니다.';

  @override
  String get saveTheSecurityKeyNow => '보안 키를 지금 저장';

  @override
  String get addToStory => '스토리에 추가';

  @override
  String get publish => '공개';

  @override
  String get whoCanSeeMyStories => '누가 내 스토리를 볼 수 있나요?';

  @override
  String get unsubscribeStories => '스토리 구독 해제';

  @override
  String get thisUserHasNotPostedAnythingYet => '이 유저는 스토리에 아무것도 올리지 않았습니다';

  @override
  String get yourStory => '내 스토리';

  @override
  String get replyHasBeenSent => '답장을 보냈습니다';

  @override
  String videoWithSize(Object size) {
    return '영상 ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return '$date의 스토리:\n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => '스토리에서 사람들이 서로를 보고 연락할 수 있다는 점에 유의하십시오.';

  @override
  String get whatIsGoingOn => '무슨 일이 일어나고 있나요?';

  @override
  String get addDescription => '설명 추가';

  @override
  String get storyPrivacyWarning => '사람들이 서로를 보고 연락할 수 있다는 점에 유의해주세요. 스토리는 24시간 동안 보이지만 모든 기기와 서버에서 삭제된다는 보장은 없습니다.';

  @override
  String get iUnderstand => '동의합니다';

  @override
  String get openChat => '채팅 열기';

  @override
  String get markAsRead => '읽음으로 표시하기';

  @override
  String get reportUser => '사용자 신고';

  @override
  String get dismiss => '닫기';

  @override
  String get matrixWidgets => 'Matrix 위젯';

  @override
  String get integrationsNotImplemented => '아직 위젯과 통합을 편집하는 것은 가능하지 않습니다.';

  @override
  String get editIntegrations => '위젯과 통합 편집';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender가 $reaction로 반응함';
  }

  @override
  String get pinMessage => '방에 고정';

  @override
  String get pinnedEventsError => '고정된 메시지 불러오는 중 오류';

  @override
  String get confirmEventUnpin => '이벤트를 영구적으로 고정 해제할 것이 확실한가요?';

  @override
  String get emojis => '이모지';

  @override
  String get placeCall => '전화 걸기';

  @override
  String get voiceCall => '음성 통화';

  @override
  String get unsupportedAndroidVersion => '지원되지 않는 안드로이드 버전';

  @override
  String get unsupportedAndroidVersionLong => '이 기능은 새로운 안드로이드 버전을 요구합니다. Lineage OS 지원이나 업데이트를 확인해주세요.';

  @override
  String get videoCallsBetaWarning => '영상 통화는 베타임을 확인해주세요. 의도한 대로 작동하지 않거나 모든 플랫폼에서 작동하지 않을 수 있습니다.';

  @override
  String get experimentalVideoCalls => '실험적인 영상 통화';

  @override
  String get emailOrUsername => '이메일이나 유저 이름';

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
