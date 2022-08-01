

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Arabic (`ar`).
class L10nAr extends L10n {
  L10nAr([String locale = 'ar']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'كلمتا السر لا تتطبقان!';

  @override
  String get pleaseEnterValidEmail => 'رجاءً أدخل بيردًا إلكترونيًا صالحًا.';

  @override
  String get repeatPassword => 'كرّر كلمة السر';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'رجاءً اختر ما لا يقل عن $min محرف.';
  }

  @override
  String get about => 'حول';

  @override
  String get accept => 'أقبل';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username قبل الدعوة';
  }

  @override
  String get account => 'الحساب';

  @override
  String get accountInformation => 'معلومات الحساب';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username فعَّل تشفير طرف لطرف';
  }

  @override
  String get addEmail => 'أضف بريدًا إلكترونيًا';

  @override
  String get addGroupDescription => 'أضف وصف للمجموعة';

  @override
  String get addNewFriend => 'أضف صديقًا جديدًا';

  @override
  String get addToSpace => 'أضفه لفضاء';

  @override
  String get admin => 'المدير';

  @override
  String get alias => 'اللقب';

  @override
  String get all => 'الكل';

  @override
  String get allChats => 'كل المحادثات';

  @override
  String get alreadyHaveAnAccount => 'عندك حساب؟';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName أجاب على المكالمة';
  }

  @override
  String get anyoneCanJoin => 'يمكن لأي أحد الدخول';

  @override
  String get appLock => 'قفل التطبيق';

  @override
  String get archive => 'الأرشيف';

  @override
  String get archivedRoom => 'غرفة مؤرشفة';

  @override
  String get areGuestsAllowedToJoin => 'هل يُسمح للزوار الدخول';

  @override
  String get areYouSure => 'أمتأكد؟';

  @override
  String get areYouSureYouWantToLogout => 'أمتأكد من الخروج؟';

  @override
  String get askSSSSSign => 'لتتمكن من التأكد من الشخص الآخر، يرجى إدخال عبارة المرور أو مفتاح الاسترداد.';

  @override
  String get askSSSSVerify => 'يرجى إدخال عبارة المرور أو مفتاح الاسترداد للتحقق من جلستك.';

  @override
  String askVerificationRequest(Object username) {
    return 'أتقبل طلب تحقق $username؟';
  }

  @override
  String get audioPlayerPause => 'ألبث';

  @override
  String get audioPlayerPlay => 'شغّل';

  @override
  String get authentication => 'الاستيثاق';

  @override
  String get autoplayImages => 'شغِّل الملصقات والوجوه المتحركة تلقائيا';

  @override
  String get avatarHasBeenChanged => 'غُيّرت الصورة الشخصية';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'يدعم الخادم المستخدم أنواع تسجيل الدخول التالية:\n${serverVersions}\nلكن هذا التطبيق يدعم فقط:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'أرسل عند الدخول';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'يدعم الخادم الرئيسي المستخدم إصدارات المواصفات:\n${serverVersions}\nلكن هذا التطبيق يدعم فقط:\n${supportedVersions}';
  }

  @override
  String get banFromChat => 'حظر من المحادثة';

  @override
  String get banned => 'محظور';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username حظر $targetName';
  }

  @override
  String get blockDevice => 'أُحظر الجهاز';

  @override
  String get blocked => 'محجوب';

  @override
  String get botMessages => 'رسائل البوت';

  @override
  String get bubbleSize => 'حجم الفقاعة';

  @override
  String get cachedKeys => 'المفاتيح المخزنة على الذاكرة المؤقتة';

  @override
  String get cancel => 'ألغِ';

  @override
  String cantOpenUri(Object uri) {
    return 'تعذر فتح المسار $uri';
  }

  @override
  String get changeDeviceName => 'غيّر اسم الجهاز';

  @override
  String changedTheChatAvatar(Object username) {
    return 'غيَّر $username صورة المحادثة';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return 'غيَّر $username وصف المحادثة الى: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return 'غيَّر $username اسم المحادثة الى: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return 'غيَّر $username أذون المحادثة';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username غير إسمه العلني إلى: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return 'غيّر $username قواعد وصول الزوار';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return 'غيّر $username قواعد وصول الزوار الى: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return 'غيَّر $username مرئية التأريخ';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return 'غيَّر $username مرئية التأريخ الى: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return 'غيَّر $username قواعد الانضمام';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return 'غيَّر $username قواعد الانضمام الى: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return 'غيّر $username صورته الشخصية';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return 'غيّر $username ألقاب الغرف';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return 'غيّر $username رابط الدعوة';
  }

  @override
  String get changelog => 'سجل التغييرات';

  @override
  String get changePassword => 'غيّر كلمة السر';

  @override
  String get changesHaveBeenSaved => 'حُفظت التغييرات';

  @override
  String get changeTheHomeserver => 'غيّر الخادم';

  @override
  String get changeTheme => 'غيّر أسلوبك';

  @override
  String get changeTheNameOfTheGroup => 'غيِّر اسم المجموعة';

  @override
  String get changeTheServer => 'غيِّر الخادم';

  @override
  String get changeWallpaper => 'غيِّر الخلفية';

  @override
  String get changeYourAvatar => 'غيّر الصورة الرمزية';

  @override
  String get channelCorruptedDecryptError => 'فسُد التشفير';

  @override
  String get chat => 'محادثة';

  @override
  String get yourUserId => 'معرّف المستخدم:';

  @override
  String get setupChatBackup => 'إعداد النسخ الاحتياطي للمحادثة';

  @override
  String get iWroteDownTheKey => 'كتبتُ المفتاح';

  @override
  String get yourChatBackupHasBeenSetUp => 'تم إعداد النسخ الاحتياطي لمحادثاتك.';

  @override
  String get chatBackup => 'انسخ احتياطيًا المحادثة';

  @override
  String get setupChatBackupDescription => 'لحماية رسائلك، أنشأنا مفتاح أمان لك.\nيرجى الاحتفاظ به في مكان آمن، كمدير لكلمات السر.';

  @override
  String get chatBackupDescription => 'النسخ الاحتياطي لمحادثاتك مأمن بمفتاح، تأكد ألّا تفقده.';

  @override
  String get chatDetails => 'تفاصيل المحادثة';

  @override
  String get chatHasBeenAddedToThisSpace => 'أُضيفت المحادثة الى هذا الفضاء';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'أُزيلت المحادثة من هذا الفضاء';

  @override
  String get chats => 'المحادثات';

  @override
  String get chooseAStrongPassword => 'اختر كلمة سر قوية';

  @override
  String get chooseAUsername => 'اختر اسم المستخدم';

  @override
  String get clearArchive => 'امسح الأرشيف';

  @override
  String get clearText => 'امسح النص';

  @override
  String get close => 'اغلق';

  @override
  String get commandHint_ban => 'يحظر المستخدم المذكور من هذه الغرفة';

  @override
  String get commandHint_clearcache => 'مسح الذاكرة المؤقتة';

  @override
  String get commandHint_create => 'أنشأ محادثة جماعية فارغة\nاستخدم --لا-تشفير لتعطيل التشفير';

  @override
  String get commandHint_discardsession => 'إنهاء الجلسة';

  @override
  String get commandHint_dm => 'إبدأ محادثة مباشرة\nاستخدم --لا-تشفير لتعطيل التشفير';

  @override
  String get commandHint_html => 'أرسل نصًا بتنسيق HTML';

  @override
  String get commandHint_invite => 'يدعو المستخدم المذكور الى الغرفة';

  @override
  String get commandHint_join => 'تنضم الى الغرفة المذكورة';

  @override
  String get commandHint_kick => 'يزيل المستخدم المذكور من الغرفة';

  @override
  String get commandHint_leave => 'تغادر هذه الغرفة';

  @override
  String get commandHint_me => 'صف نفسك';

  @override
  String get commandHint_myroomavatar => 'حدد صورتك لهذه الغرفة (عن طريق mxc-uri)';

  @override
  String get commandHint_myroomnick => 'عين اسمًا لك مخصص لهذه الغرفة';

  @override
  String get commandHint_op => 'عين مستوى نفوذ المستخدم في هذه الغرفة (الافتراضي: 50)';

  @override
  String get commandHint_plain => 'أرسل نصًا غير منسق';

  @override
  String get commandHint_react => 'أرسل ردًا كتفاعل';

  @override
  String get commandHint_send => 'أرسل نصًا';

  @override
  String get commandHint_unban => 'فك الحظر عن المستخدم المذكور في هذه الغرفة';

  @override
  String get commandInvalid => 'أمر غير صالح';

  @override
  String commandMissing(Object command) {
    return '$command ليس بأمر.';
  }

  @override
  String get compareEmojiMatch => 'تأكد من أن هذه الإيموجي تطابق الموجودة على الأجهزة الأخرى:';

  @override
  String get compareNumbersMatch => 'تأكد من أن هذه الأرقام تطابق الموجودة على الأجهزة الأخرى:';

  @override
  String get configureChat => 'ضبط المحادثة';

  @override
  String get confirm => 'أكّد';

  @override
  String get connect => 'اتصل';

  @override
  String get connectionAttemptFailed => 'فشلت محاولة الاتصال';

  @override
  String get contactHasBeenInvitedToTheGroup => 'دعيَ المراسل للمجموعة';

  @override
  String get containsDisplayName => 'يحوي الاسم العلني';

  @override
  String get containsUserName => 'يحوي اسم المستخدم';

  @override
  String get contentHasBeenReported => 'أّرسل الابلاغ الى مدير الخادم';

  @override
  String get contentViewer => 'عارض المحتوى';

  @override
  String get copiedToClipboard => 'نُسخ للحافظة';

  @override
  String get copy => 'انسخ';

  @override
  String get copyToClipboard => 'انسخ الى الحافظة';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'تعذر فك تشفير الرسالة: $error';
  }

  @override
  String get couldNotSetAvatar => 'تعذر تعيين الصورة الشخصية';

  @override
  String get couldNotSetDisplayname => 'تعذر تعيين الاسم العلني';

  @override
  String countParticipants(Object count) {
    return '$count منتسبا';
  }

  @override
  String get create => 'أنشئ';

  @override
  String get createAccountNow => 'أنشئ حسابًا الآن';

  @override
  String createdTheChat(Object username) {
    return 'أنشأ $username المحادثة';
  }

  @override
  String get createNewGroup => 'أنشئ مجموعة جديدة';

  @override
  String get createNewSpace => 'فضاء جديد';

  @override
  String get crossSigningDisabled => 'التأكد المتبادل متوقف';

  @override
  String get crossSigningEnabled => 'التأكد المتبادل مفعل';

  @override
  String get currentlyActive => 'نشطٌ حاليا';

  @override
  String get darkTheme => 'داكن';

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
    return '$day/$month/$year';
  }

  @override
  String get deactivateAccountWarning => 'لا مجال للعودة، أتأكد تعطيل حسابك؟';

  @override
  String get defaultPermissionLevel => 'مستوى الأذونات الإفتراضي';

  @override
  String get delete => 'احذف';

  @override
  String get deleteAccount => 'احذف الحساب';

  @override
  String get deleteMessage => 'حذف الرسالة';

  @override
  String get deny => 'رفض';

  @override
  String get device => 'جهاز';

  @override
  String get deviceId => 'معرّف الجهاز';

  @override
  String get devices => 'الأجهزة';

  @override
  String get deviceVerifyDescription => 'لن يكون التشفير آمنا إلا بعد التحقق من جميع الأجهزة.';

  @override
  String get directChats => 'محادثات مباشرة';

  @override
  String get discardPicture => 'أهمل الصورة';

  @override
  String get discover => 'اكتشف';

  @override
  String get discoverGroups => 'اكتشف مجموعات';

  @override
  String get displaynameHasBeenChanged => 'غُيِّر الاسم العلني';

  @override
  String get donate => 'تبرع';

  @override
  String get dontAskAgain => 'ألغ ولاتسأل مجددًا';

  @override
  String get downloadFile => 'نزِّل الملف';

  @override
  String get edit => 'عدّل';

  @override
  String get editBlockedServers => 'عدّل الخوادم المحجوبة';

  @override
  String get editChatPermissions => 'عدّل تصاريح المحادثة';

  @override
  String get editDisplayname => 'حرر الاسم العلني';

  @override
  String get editJitsiInstance => 'غيِّر خادم جيتسي';

  @override
  String get editRoomAliases => 'عدّل الاسم المميز للغرفة';

  @override
  String get editRoomAvatar => 'عدّل الصورة الرمزية للغرفة';

  @override
  String get emoteExists => 'الانفعالة موجودة مسبقا!';

  @override
  String get emoteInvalid => 'رمز الانفعالة غير صالح!';

  @override
  String get emotePacks => 'حزمة الوجوه التعبيرية للغرفة';

  @override
  String get emoteSettings => 'اعدادات الانفعالات';

  @override
  String get emoteShortcode => 'رمز الانفعالة';

  @override
  String get emoteWarnNeedToPick => 'اختر صورة ورمزا للانفعالة!';

  @override
  String get emptyChat => 'محادثة فارغة';

  @override
  String get enableChatBackup => 'فعّل النسخ الاحتياطي للمحادثة كي لا تخسر الوصول إليها.';

  @override
  String get enableEmotesGlobally => 'تفعيل حزمة التعبيرات بشكل عام';

  @override
  String get enableEncryption => 'فعّل التشفير';

  @override
  String get enableEncryptionWarning => 'لن يمكنك تعطيل التشفير أبدا، أمتأكد؟';

  @override
  String get encrypted => 'مشفر';

  @override
  String get encryption => 'التشفير';

  @override
  String get encryptionAlgorithm => 'خوارزمية التشفير';

  @override
  String get encryptionNotEnabled => 'التشفير معطل';

  @override
  String get end2endEncryptionSettings => 'إعدادات تشفير الطرف لطرف';

  @override
  String endedTheCall(Object senderName) {
    return 'أنهى $senderName المكالمة';
  }

  @override
  String get enterAGroupName => 'أدخل اسم المجموعة';

  @override
  String get enterAnEmailAddress => 'أدخل عنوان بريد إلكتروني';

  @override
  String get enterASpacepName => 'أدخل اسم الفضاء';

  @override
  String get enterAUsername => 'أدخل اسم المستخدم';

  @override
  String get homeserver => 'الخادم';

  @override
  String get enterYourHomeserver => 'أدخل الخادم';

  @override
  String errorObtainingLocation(Object error) {
    return 'خطأ أثناء الحصول على الموقع: $error';
  }

  @override
  String get everythingReady => 'كل شيء جاهز!';

  @override
  String get extremeOffensive => 'مسيئة للغاية';

  @override
  String get fileName => 'اسم الملف';

  @override
  String get fileSize => 'حجم الملف';

  @override
  String get fluffychat => 'فلافي-شات';

  @override
  String get fontSize => 'حجم الخط';

  @override
  String get forward => 'أعد التوجيه';

  @override
  String get friday => 'الجمعة';

  @override
  String get friends => 'الأصدقاء';

  @override
  String get fromJoining => 'من بعد الانضمام';

  @override
  String get fromTheInvitation => 'من بعد الدعوة';

  @override
  String get goToTheNewRoom => 'انتقل للغرفة الجديدة';

  @override
  String get group => 'المجموعة';

  @override
  String get groupDescription => 'وصف المجموعة';

  @override
  String get groupDescriptionHasBeenChanged => 'غُيِّر وصف المجموعة';

  @override
  String get groupIsPublic => 'المجموعة عامة';

  @override
  String get groups => 'المجموعات';

  @override
  String groupWith(Object displayname) {
    return 'في مجموعة مع $displayname';
  }

  @override
  String get guestsAreForbidden => 'يمنع الزوار';

  @override
  String get guestsCanJoin => 'يمكن للزوار الانضمام';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return 'سحب $username دعوة $targetName';
  }

  @override
  String get help => 'المساعدة';

  @override
  String get hideRedactedEvents => 'إخفاء الأحداث المنقحة';

  @override
  String get hideUnknownEvents => 'اخف الأحداث المجهولة';

  @override
  String get homeserverIsNotCompatible => 'الخادم ليس متوافقًا';

  @override
  String get howOffensiveIsThisContent => 'ما مدى سوء هذا المحتوى؟';

  @override
  String get id => 'المعرّف';

  @override
  String get identity => 'المُعرّف';

  @override
  String get ignore => 'تجاهل';

  @override
  String get ignoredUsers => 'المستخدمون المتجاهلون';

  @override
  String get ignoreListDescription => 'يمكنك تجاهل المستخدمين المزعجين، لن يتمكنوا من مراسلتك أو دعوتك لغرفة ما داموا في قائمة التجاهل.';

  @override
  String get ignoreUsername => 'تجاهل اسم المستخدم';

  @override
  String get iHaveClickedOnLink => 'نقرت على الرابط';

  @override
  String get incorrectPassphraseOrKey => 'عبارة مرور أو مفتاح استرداد خطأ';

  @override
  String get inoffensive => 'غير مسيء';

  @override
  String get invalidEmail => 'بريد إلكتروني غير صالح';

  @override
  String get inviteContact => 'دعوة مراسل';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'أدعو مراسلا الى $groupName';
  }

  @override
  String get invited => 'دُعيَ';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username دعى $targetName';
  }

  @override
  String get invitedUsersOnly => 'المستخدمون المدعوون فقط';

  @override
  String get inviteForMe => 'دعوات لي';

  @override
  String inviteText(Object username, Object link) {
    return 'دعاك $username لاستخدام فلافي-شات. \n1. ثبت فلافي-شات: https://fluffychat.im \n2. لج أو سجل\n3. افتح رابط الدعوة: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'هل مفتاح الجهاز صحيح؟';

  @override
  String get isTyping => 'يكتب…';

  @override
  String joinedTheChat(Object username) {
    return 'انضم $username للمحادثة';
  }

  @override
  String get joinRoom => 'انضم للمحادثة';

  @override
  String get keysCached => 'المفاتيح محفوظة على ذاكرة التخزين المؤقتة';

  @override
  String get keysMissing => 'المفاتيح مفقودة';

  @override
  String kicked(Object username, Object targetName) {
    return '$username طرد $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username طرد وحظر $targetName';
  }

  @override
  String get kickFromChat => 'طرد من المحادثة';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'آخر نشاط: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'آخر عنوان IP مسجل';

  @override
  String get lastSeenLongTimeAgo => 'آخر ظهور كان منذ زمن طويل';

  @override
  String get leave => 'غادر';

  @override
  String get leftTheChat => 'غادر المحادثة';

  @override
  String get license => 'الرخصة';

  @override
  String get lightTheme => 'فاتح';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'حمِّل $count منتسبًا إضافيًا';
  }

  @override
  String get loadingPleaseWait => 'يحمّل… يرجى الانتظار.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'حمِّل المزيد…';

  @override
  String get locationDisabledNotice => 'خدمات الموقع معطلة. مكنها لتتمكن من مشاركة موقعك.';

  @override
  String get locationPermissionDeniedNotice => 'تم رفض إذن الموقع. الرجاء منح الإذن للقدرة على مشاركة موقعك.';

  @override
  String get login => 'لِج';

  @override
  String logInTo(Object homeserver) {
    return 'لِج ل $homeserver';
  }

  @override
  String get loginWithOneClick => 'تسجيل الدخول بكبسة واحدة';

  @override
  String get logout => 'اخرج';

  @override
  String get makeAModerator => 'اجعله مشرفًا';

  @override
  String get makeAnAdmin => 'اجعله مديرًا';

  @override
  String get makeSureTheIdentifierIsValid => 'تأكد من صحة المعرّف';

  @override
  String get memberChanges => 'تغييرات تخص الأعضاء';

  @override
  String get mention => 'اذكر';

  @override
  String get messages => 'الرسائل';

  @override
  String get messageWillBeRemovedWarning => 'ستحذف الرسالة عند كل المنتسبين';

  @override
  String get moderator => 'مشرف';

  @override
  String get monday => 'الثلاثاء';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 حدث إضافي',
      other: '$count أحداث إضافية',
    );
  }

  @override
  String get muteChat => 'أكتم الماحدثة';

  @override
  String get needPantalaimonWarning => 'اعلم أننا نستخدم بانتاليمون للتشفير طرفا لطرف.';

  @override
  String get newChat => 'محادثة جديدة';

  @override
  String get newMessageInFluffyChat => 'رسالة جديدة في فلافي-شات';

  @override
  String get newVerificationRequest => 'طلب تحقق جديد!';

  @override
  String get next => 'التالي';

  @override
  String get no => 'لا';

  @override
  String get noConnectionToTheServer => 'انقطع الاتصال بالخادم';

  @override
  String get noCrossSignBootstrap => 'Fluffychat حالياً لا يدعم تفعيل التأكد المتبادل. الرجاء تفعيله من خلال تطبيق Element.';

  @override
  String get noDescription => 'بدون وصف';

  @override
  String get noEmotesFound => 'لم يُعثر على انفعالة. 😕';

  @override
  String get noEncryptionForPublicRooms => 'يمكنك فقط تفعيل التشفير عندما تصبح الغرفة غير متاحة للعامة.';

  @override
  String get noGoogleServicesWarning => 'يبدو أنك لا تستخدم خدمات غوغل على هاتفك. هذا قرار جيد للحفاظ على خصوصيتك! من أجل استلام الإشعارات في FluffyChat نقترح استخدام https://microg.org أو https://unifiedpush.org.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 ليس خادم ماتريكس، بدلًا منه أتريد استخدام $server2؟';
  }

  @override
  String get createNewChatExplaination => 'اطلب من أصدقائك مسح رمز الاستجابة السريعة أو أرسل لهم رابط الدعوة.';

  @override
  String get shareYourInviteLink => 'شارك رابط الدعوة';

  @override
  String get typeInInviteLinkManually => 'اكتب رابط الدعوة...';

  @override
  String get scanQrCode => 'امسح رمز الاستجابة السريعة';

  @override
  String get noMegolmBootstrap => 'يرجى تشغيل النسخ الاحتياطي عبر الإنترنت من داخل تطبيق Element بدلاً من ذلك.';

  @override
  String get none => 'بدون';

  @override
  String get newPasswordDescription => 'لتتمكن من استعادة كلمة السر في حالة فقدانها أضف عنوان بريد إلكتروني لاحقًا.';

  @override
  String get newUsernameDescription => 'سيكون معرفك على شكل @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'لم تضف أي طريقة لاستعادة كلمة السر.';

  @override
  String get noPermission => 'بدون اذن';

  @override
  String get noPublicRoomsFound => 'لم يّعثر على أي غرف عمومية…';

  @override
  String get noRoomsFound => 'لم يُعثر على غرف…';

  @override
  String get noStatusesFound => 'لم يتم العثور على حالات حتى الآن.';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get notificationsEnabledForThisAccount => 'الإشعارات مفعلة لهذا الحساب';

  @override
  String get notSupportedInWeb => 'غير مدعوم في الويب';

  @override
  String numberSelected(Object number) {
    return 'حُدد $number';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count يكتبون…';
  }

  @override
  String get obtainingLocation => 'يحصل على الموقع…';

  @override
  String get offensive => 'عدواني';

  @override
  String get offline => 'غير متصل';

  @override
  String get ok => 'موافق';

  @override
  String get online => 'متصل';

  @override
  String get onlineKeyBackupDisabled => 'تم تعطيل النسخ الاحتياطي للمفاتيح عبر الإنترنت';

  @override
  String get onlineKeyBackupEnabled => 'تم تفعيل النسخ الاحتياطي للمفاتيح عبر الإنترنت';

  @override
  String get oopsPushError => 'عذراً! للأسف، حدث خطأ أثناء إعداد الإشعارات.';

  @override
  String get oopsSomethingWentWrong => 'عذراً، هناك خطأ ما…';

  @override
  String get openAppToReadMessages => 'افتح التطبيق لقراءة الرسائل';

  @override
  String get openCamera => 'افتح الكميرا';

  @override
  String get openVideoCamera => 'افتح الكاميرا لمقطع فيديو';

  @override
  String get oneClientLoggedOut => 'أُ خرج أحد العملاء الذي تسختدمها';

  @override
  String get addAccount => 'أضف حسابًا';

  @override
  String get editBundlesForAccount => 'عدّل حزم هذا الحساب';

  @override
  String get addToBundle => 'أضفه الى حزمة';

  @override
  String get removeFromBundle => 'أزله من الحزمة';

  @override
  String get bundleName => 'اسم الحزمة';

  @override
  String get enableMultiAccounts => '(ميزة تجربية) فعّل تعدد الحسابات';

  @override
  String get openInMaps => 'افتح في الخريطة';

  @override
  String get link => 'رابط';

  @override
  String get serverRequiresEmail => 'يتطلب هذا الخادم التحقق من بريدك الإلكتروني.';

  @override
  String get optionalGroupName => 'اسم المجموعة (اختياري)';

  @override
  String get or => 'أو';

  @override
  String get participant => 'منتسب';

  @override
  String get participatingUserDevices => 'أجهزة المنتسبين';

  @override
  String get passphraseOrKey => 'عبارة المرور أو مفتاح الاستعادة';

  @override
  String get password => 'كلمة السر';

  @override
  String get passwordForgotten => 'نسيتَ كلمة السر';

  @override
  String get passwordHasBeenChanged => 'غُيّرت كلمة السر';

  @override
  String get passwordRecovery => 'استعادة كلمة السر';

  @override
  String get people => 'أشخاص';

  @override
  String get pickImage => 'اختر صورة';

  @override
  String get pin => 'ثبِّت';

  @override
  String play(Object fileName) {
    return 'شغّل $fileName';
  }

  @override
  String get pleaseChoose => 'اختر رجاء';

  @override
  String get pleaseChooseAPasscode => 'اختر رمز المرور';

  @override
  String get pleaseChooseAUsername => 'اختر اسم المستخدم';

  @override
  String get pleaseClickOnLink => 'يرجى النقر على الرابط الموجود في البريد الإلكتروني ثم المتابعة.';

  @override
  String get pleaseEnter4Digits => 'أدخل 4 أرقام أو أتركه فارغ لتعطيل القفل.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'أدخل معرف Matrix.';

  @override
  String get pleaseEnterSecurityKey => 'أدخل مفتاح الأمان:';

  @override
  String get pleaseEnterYourPassword => 'أدخل كلمة السر';

  @override
  String get pleaseEnterYourPin => 'الرجاء إدخال رقم التعريف الشخصي الخاص بك';

  @override
  String get pleaseEnterYourUsername => 'أدخل اسم المستخدم';

  @override
  String get pleaseFollowInstructionsOnWeb => 'يرجى اتباع التعليمات الموجودة على الموقع والنقر على التالي.';

  @override
  String get privacy => 'الخصوصية';

  @override
  String get publicGroups => 'مجموعات عمومية';

  @override
  String get publicKey => 'المفتاح العمومي';

  @override
  String get publicRooms => 'الغرف العامة';

  @override
  String get publicSpace => 'فضاء عام';

  @override
  String get pushRules => 'قواعد الإشعارات';

  @override
  String get reason => 'السبب';

  @override
  String get recording => 'يسجل';

  @override
  String redactedAnEvent(Object username) {
    return 'حذف $username حدثًا';
  }

  @override
  String get redactMessage => 'احذف رسالة';

  @override
  String get register => 'سجّل';

  @override
  String get reject => 'رفض';

  @override
  String rejectedTheInvitation(Object username) {
    return 'رفض $username الدعوة';
  }

  @override
  String get rejoin => 'أعد الانضمام';

  @override
  String get remove => 'أزِل';

  @override
  String get removeAllOtherDevices => 'أزِل كل الأجهزة الأخرى';

  @override
  String removedBy(Object username) {
    return 'أزاله $username';
  }

  @override
  String get removeDevice => 'أزل جهازا';

  @override
  String get unbanFromChat => 'فك حجبه من المحادثة';

  @override
  String get removeMessage => 'أزل رسالة';

  @override
  String get removeYourAvatar => 'أزل الصورة الرمزية';

  @override
  String get renderRichContent => 'صيّر الرسائل ذات المحتوى الكبير';

  @override
  String get replaceRoomWithNewerVersion => 'استبدل الغرفة باصدار أحدث';

  @override
  String get reply => 'ردّ';

  @override
  String get reportMessage => 'أبلغ عن الرسالة';

  @override
  String get requestPermission => 'أطلب إذنا';

  @override
  String get requestToReadOlderMessages => 'أطلب السماح بقراءة الرسائل القديمة';

  @override
  String get revokeAllPermissions => 'أبطل كل الأذون';

  @override
  String get roomHasBeenUpgraded => 'رُقيّت الغرفة';

  @override
  String get roomVersion => 'إصدار الغرفة';

  @override
  String get saturday => 'السبت';

  @override
  String savedFileAs(Object filename) {
    return 'حُفظ الملف كـ $filename';
  }

  @override
  String get saveFile => 'احفظ الملف';

  @override
  String get saveFileToFolder => 'احفظ الملف في هذا المجلد';

  @override
  String get search => 'ابحث';

  @override
  String get searchForAChat => 'ابحث عن محادثة';

  @override
  String get security => 'الأمان';

  @override
  String get securityKey => 'مفتاح الأمان';

  @override
  String get securityKeyLost => 'فقدت مفتاح الأمان؟';

  @override
  String seenByUser(Object username) {
    return 'رآه $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'رآه $username و $count أخرون',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'رآه $username و $username2';
  }

  @override
  String get send => 'أرسل';

  @override
  String get sendAMessage => 'أرسل رسالة';

  @override
  String get sendAsText => 'أرسل نصًا';

  @override
  String get sendAudio => 'أرسل ملفًا صوتيًا';

  @override
  String get sendBugReports => 'اسمح بإرسال تقريرات عن العلل باستخدام sentry.io';

  @override
  String get sendFile => 'أرسل ملف';

  @override
  String get sendImage => 'أرسل صورة';

  @override
  String get sendMessages => 'إرسال رسائل';

  @override
  String get sendOriginal => 'أرسل الملف الأصلي';

  @override
  String get sendSticker => 'أرسل ملصقًا';

  @override
  String get sendVideo => 'أرسل فيديو';

  @override
  String sentAFile(Object username) {
    return 'أرسلَ $username ملفًا';
  }

  @override
  String sentAnAudio(Object username) {
    return 'أرسلَ $username ملفًا صوتيًا';
  }

  @override
  String sentAPicture(Object username) {
    return 'أرسلَ $username صورة';
  }

  @override
  String sentASticker(Object username) {
    return 'أرسلَ $username ملصقا';
  }

  @override
  String sentAVideo(Object username) {
    return 'أرسلَ $username فيديو';
  }

  @override
  String sentCallInformations(Object senderName) {
    return 'أرسل $senderName معلومات مكالمة';
  }

  @override
  String get sentryInfo => 'معلومات عن خصوصيتك: https://sentry.io/security/';

  @override
  String get sessionVerified => 'تُحقق من الجلسة';

  @override
  String get separateChatTypes => 'Separate Direct Chats, Groups, and Classes';

  @override
  String get setAProfilePicture => 'عيّن صورة ملف شخصي';

  @override
  String get setAsCanonicalAlias => 'تعيين كاسم مستعار رئيسي';

  @override
  String get setCustomEmotes => 'عيّن وجوهًا تعبيرية مخصصة';

  @override
  String get setGroupDescription => 'عيّن وصفا للمجموعة';

  @override
  String get setInvitationLink => 'عيّن رابط الدعوة';

  @override
  String get setPermissionsLevel => 'تعيين مستوى الأذونات';

  @override
  String get setStatus => 'عيّن الحالة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get share => 'شارك';

  @override
  String sharedTheLocation(Object username) {
    return 'شارك $username موقعه';
  }

  @override
  String get shareLocation => 'شارك الموقع';

  @override
  String get showDirectChatsInSpaces => 'Show related Direct Chats in Classes';

  @override
  String get showPassword => 'أظهر كلمة السر';

  @override
  String get signUp => 'سجّل';

  @override
  String get singlesignon => 'تسجيل دخول أحادي';

  @override
  String get skip => 'تخط';

  @override
  String get soundVibrationLedColor => 'الصوت والاهتزاز ولون ضوء الإشعار';

  @override
  String get sourceCode => 'الشفرة المصدرية';

  @override
  String get spaceIsPublic => 'الفضاء عمومي';

  @override
  String get spaceName => 'اسم الفضاء';

  @override
  String startedACall(Object senderName) {
    return 'بدأ $senderName مكالمة';
  }

  @override
  String get startYourFirstChat => 'ابدأ محادثتك الأولى! 🙂\n- أنقر زر \'رسالة جديدة\'\n- اسمح رمز الاستجابة السريعة لصديقك\n- اكتب ما يحلو لك';

  @override
  String get status => 'الحالة';

  @override
  String get statusExampleMessage => 'ماهو وضعك؟';

  @override
  String get submit => 'أرسل';

  @override
  String get sunday => 'الأحد';

  @override
  String get synchronizingPleaseWait => 'يُزامن… يرجى الانتظار.';

  @override
  String get systemTheme => 'النظام';

  @override
  String get tapOnDeviceToVerify => 'انقر على الجهاز لتوثيقه';

  @override
  String get tapToShowImage => 'انقر على صورة لإظهارها';

  @override
  String get tapToShowMenu => 'اضغط لعرض القائمة';

  @override
  String get theyDontMatch => 'لا يتطبقان';

  @override
  String get theyMatch => 'متطبقان';

  @override
  String get thisRoomHasBeenArchived => 'أُرشِفت هته الغرفة.';

  @override
  String get thursday => 'الخميس';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours12:$minutes $suffix';
  }

  @override
  String get title => 'فلافي-شات';

  @override
  String get toggleFavorite => 'بدّل حالة التفضيل';

  @override
  String get toggleMuted => 'بدّل حالة الكتم';

  @override
  String get toggleUnread => 'علّمه كمقروء/غير مقروء';

  @override
  String get tooManyRequestsWarning => 'طابات كثيرة. حاول مجددًا لاحقًا!';

  @override
  String get transferFromAnotherDevice => 'أنقله من جهاز آخر';

  @override
  String get tryToSendAgain => 'حاول إعادة الارسال';

  @override
  String get tuesday => 'الثلاثاء';

  @override
  String get unavailable => 'غير متوفر';

  @override
  String unbannedUser(Object username, Object targetName) {
    return 'ألغى $username حظر $targetName';
  }

  @override
  String get unblockDevice => 'ألغ حظر الجهاز';

  @override
  String get unknownDevice => 'جهز مجهول';

  @override
  String get unknownEncryptionAlgorithm => 'خوارزمية تشفير مجهولة';

  @override
  String unknownEvent(Object type) {
    return 'حدث مجهول \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'الجلسة مجهولة، تحقق منها';

  @override
  String get unlockChatBackup => 'فك قفل النسخ الاحتياطي للمحادثة';

  @override
  String get unmuteChat => 'ألغِ كتم المحادثة';

  @override
  String get unpin => 'ألغِ التثبيت';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 محادثة غير مقروءة',
      other: '$unreadCount محادثات غير مقروءة',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 رسالة غير مقروءة',
      other: '$unreadEvents رسائل غير مقروءة',
    );
  }

  @override
  String get useAmoledTheme => 'هل تريد استخدم ألوان متوافقة مع AMOLED؟';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username و $count أخرون يكتبون…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username و $username2 يكتبان…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username يكتب…';
  }

  @override
  String userLeftTheChat(Object username) {
    return 'غادر $username المحادثة';
  }

  @override
  String get username => 'اسم المستخدم';

  @override
  String get userNotVerified => 'المستخدم غير موثّق';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return 'أرسل $username حدث $type';
  }

  @override
  String get userUnknownVerification => 'حالة توثيق المستخدم مجهولة';

  @override
  String get userVerified => 'المستخدم موثّق';

  @override
  String get unverified => 'غير مؤكد';

  @override
  String get verified => 'موثّق';

  @override
  String get verifiedSession => 'تُحقق من الجلسة بنجاح!';

  @override
  String get verify => 'تحقق';

  @override
  String get verifyManual => 'تحقق يدويا';

  @override
  String get verifyStart => 'ابدأ التحقق';

  @override
  String get verifySuccess => 'تُحقق منك بنجاح!';

  @override
  String get verifyTitle => 'يتحقق من الحساب الآخر';

  @override
  String get verifyUser => 'تحقق من مستخدم';

  @override
  String get videoCall => 'مكالمة فيديو';

  @override
  String get visibilityOfTheChatHistory => 'مرئية تأريخ المحادثة';

  @override
  String get visibleForAllParticipants => 'مرئي لكل المنتسبين';

  @override
  String get visibleForEveryone => 'مرئي للجميع';

  @override
  String get voiceMessage => 'رسالة صوتية';

  @override
  String get waitingPartnerAcceptRequest => 'ينتظر قبول الشريك للطلب…';

  @override
  String get waitingPartnerEmoji => 'ينتظر قبول الشريك لإيموجي…';

  @override
  String get waitingPartnerNumbers => 'ينتظر قبول الشريك للأرقام…';

  @override
  String get wallpaper => 'الخلفية';

  @override
  String get warning => 'تحذير!';

  @override
  String get warningEncryptionInBeta => 'التشفير طرفا لطرف لا يزال في مرحلة البيتا! استخدمه تحت مسؤوليتك!';

  @override
  String get wednesday => 'الأربعاء';

  @override
  String get welcomeText => 'مرحبا بك في أظرف مراسل فروري لمايتركس.';

  @override
  String get weSentYouAnEmail => 'أرسلنا لك رسالة بالبريد الإلكتروني';

  @override
  String get whoCanPerformWhichAction => 'من يستطيع القيام بأي عمل';

  @override
  String get whoIsAllowedToJoinThisGroup => 'من يسمح له الانضمام للمجموعة';

  @override
  String get whyDoYouWantToReportThis => 'لماذا تريد الإبلاغ عنه؟';

  @override
  String get wipeChatBackup => 'أتريد حذف النسخ الاحتياطي للمحادثة لإنشاء مفتاح أمان جديد؟';

  @override
  String get withTheseAddressesRecoveryDescription => 'يمكنك استعادة كلمة السر بهذه العناوين.';

  @override
  String get writeAMessage => 'اكتب رسالة…';

  @override
  String get yes => 'نعم';

  @override
  String get you => 'انت';

  @override
  String get youAreInvitedToThisChat => 'دُعيتَ لهذه المحادثة';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'لم تعد منتسبا لهذه المحادثة';

  @override
  String get youCannotInviteYourself => 'لا يمكنك دعوة نفسك';

  @override
  String get youHaveBeenBannedFromThisChat => 'حُظرت من هذه المحادثة';

  @override
  String get yourChatsAreBeingSynced => 'يُزامن محادثاتك…';

  @override
  String get yourOwnUsername => 'اسم المستخدم الخاص بك';

  @override
  String get yourPublicKey => 'مفتاحك العمومي';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'سيتم وصلك بـ $homeserver';
  }

  @override
  String get zoomIn => 'كبّر';

  @override
  String get zoomOut => 'صغّر';

  @override
  String get messageInfo => 'معلومات الرسالة';

  @override
  String get time => 'الوقت';

  @override
  String get messageType => 'نوع الرسالة';

  @override
  String get sender => 'المرسل';

  @override
  String get openGallery => 'افتخ المعرض';

  @override
  String get removeFromSpace => 'أزل من الفضاء';

  @override
  String get removeFromSpaceDescription => 'هذا يزيل هذه المحادثة من الفضاء الحالي. ستبقى بعد ذلك موجودة ضمن \"جميع الدردشات\".';

  @override
  String get addToSpaceDescription => 'إختر فضاء لإضافة هذه المحادثة إليه.';

  @override
  String get start => 'إبدأ';

  @override
  String get setupChatBackupNow => 'قم بإعداد النسخة الاحتياطية للمحادثة الآن';

  @override
  String get pleaseEnterSecurityKeyDescription => 'لإلغاء قفل النسخة الاحتياطية للمحادثة، يرجى إدخال مفتاح الأمان الذي تم إنشاؤه في جلسة سابقة. مفتاح الأمان الخاص بك ليس كلمة مرورك.';

  @override
  String get saveTheSecurityKeyNow => 'احفظ مفتاح الأمان الآن';

  @override
  String get addToStory => 'إضافة للقصة';

  @override
  String get publish => 'انشر';

  @override
  String get whoCanSeeMyStories => 'من يمكنه رؤية قصصي؟';

  @override
  String get unsubscribeStories => 'إلغاء الإشتراك بالقصص';

  @override
  String get thisUserHasNotPostedAnythingYet => 'هذا المستخدم لم ينشر أي شيء في قصته حتى الآن';

  @override
  String get yourStory => 'قصتك';

  @override
  String get replyHasBeenSent => 'تم إرسال الرد';

  @override
  String videoWithSize(Object size) {
    return 'فيديو ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'رسالة من $date: \n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'يرجى ملاحظة أنه يمكن للأشخاص رؤية بعضهم البعض والتواصل مع بعضهم البعض في قصتك.';

  @override
  String get whatIsGoingOn => 'ما الذي يحصل؟';

  @override
  String get addDescription => 'إضافة وصف';

  @override
  String get storyPrivacyWarning => 'يرجى ملاحظة أنه يمكن للأشخاص رؤية بعضهم البعض والتواصل مع بعضهم البعض في قصتك. ستكون قصصك مرئية لمدة 24 ساعة ولكن ليس هناك ما يضمن حذفها من جميع الأجهزة والخوادم.';

  @override
  String get iUnderstand => 'أنا أتفهم';

  @override
  String get openChat => 'فتح المحادثة';

  @override
  String get markAsRead => 'حدد كمقروء';

  @override
  String get reportUser => 'التبيلغ عن المستخدم';

  @override
  String get dismiss => 'رفض';

  @override
  String get matrixWidgets => 'إضافات ماتريكس';

  @override
  String get integrationsNotImplemented => 'تعديل الإضافات والتكاملات ليس ممكنا حتى الآن.';

  @override
  String get editIntegrations => 'تعديل الإضافات والتكاملات';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender تفاعل ب $reaction';
  }

  @override
  String get pinMessage => 'تثبيت في الغرفة';

  @override
  String get pinnedEventsError => 'خطأ في تحميل الرسائل المثبتة';

  @override
  String get confirmEventUnpin => 'هل أنت متأكد من إلغاء تثبيت الحدث بشكل دائم؟';

  @override
  String get emojis => 'إيموجي';

  @override
  String get placeCall => 'إجراء مكالمة';

  @override
  String get voiceCall => 'مكالمة صوتية';

  @override
  String get unsupportedAndroidVersion => 'نسخة أندرويد غير مدعومة';

  @override
  String get unsupportedAndroidVersionLong => 'تتطلب هذه الميزة إصدار Android أحدث. يرجى التحقق من وجود تحديثات أو دعم Lineage OS.';

  @override
  String get videoCallsBetaWarning => 'يرجى ملاحظة أن مكالمات الفيديو حالياً في مرحلة تجريبية. قد لا تعمل كما هو متوقع أو تعمل على الإطلاق على جميع المنصات.';

  @override
  String get experimentalVideoCalls => 'مكالمات الفيديو التجريبية';

  @override
  String get emailOrUsername => 'البريد الإلكتروني أو اسم المستخدم';

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
