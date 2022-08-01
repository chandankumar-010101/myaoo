

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Hebrew (`he`).
class L10nHe extends L10n {
  L10nHe([String locale = 'he']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'הסיסמאות לא תואמות!';

  @override
  String get pleaseEnterValidEmail => 'אנא כתוב כתובת אימייל תקינה.';

  @override
  String get repeatPassword => 'כתוב שוב את הסיסמה';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'אנא כתוב לפחות $min תווים';
  }

  @override
  String get about => 'אודות';

  @override
  String get accept => 'קבל';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username קיבל את ההזמנה';
  }

  @override
  String get account => 'חשבון';

  @override
  String get accountInformation => 'פרטי חשבון';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username הפעיל הצפנה מקצה לקצה';
  }

  @override
  String get addEmail => 'הוסף מייל';

  @override
  String get addGroupDescription => 'הוספת תיאור קבוצה';

  @override
  String get addNewFriend => 'הוסף חבר חדש';

  @override
  String get addToSpace => 'הוסף לספייס';

  @override
  String get admin => 'מנהל';

  @override
  String get alias => 'כינוי';

  @override
  String get all => 'הכל';

  @override
  String get allChats => 'כל הצ\'אטים';

  @override
  String get alreadyHaveAnAccount => 'כבר יש לך חשבון?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName ענה לשיחה';
  }

  @override
  String get anyoneCanJoin => 'כל אחד יכול להצטרף';

  @override
  String get appLock => 'נעילת אפליקציה';

  @override
  String get archive => 'ארכיון';

  @override
  String get archivedRoom => 'חדר בארכיון';

  @override
  String get areGuestsAllowedToJoin => 'האם משתמשים אורחים מורשים להצטרף';

  @override
  String get areYouSure => 'האם אתה בטוח?';

  @override
  String get areYouSureYouWantToLogout => 'האם אתה בטוח שברצונך לצאת?';

  @override
  String get askSSSSSign => 'כדי שתוכל לחתום על משתמש אחר , הזן את הסיסמה שלך או את מפתח השחזור.';

  @override
  String get askSSSSVerify => 'אנא הזן את משפט הסיסמה המאובטח שלך או מפתח השחזור כדי לאמת את ההפעלה שלך.';

  @override
  String askVerificationRequest(Object username) {
    return 'לקבל בקשת אימות זו מ- $username?';
  }

  @override
  String get audioPlayerPause => 'השהה';

  @override
  String get audioPlayerPlay => 'הפעל';

  @override
  String get authentication => 'אימות';

  @override
  String get autoplayImages => 'הפעל אוטומטית מדבקות ואמוטים מונפשים';

  @override
  String get avatarHasBeenChanged => 'האווטאר השתנה';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'שרת הבית תומך בסוגי הכניסה:\n${serverVersions}\nאבל אפליקציה זו תומכת רק ב:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'שלח וכנס';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'שרת הבית תומך בגרסאות:\n${serverVersions}\nאבל האפליקציה הזו תומכת רק ב-$supportedVersions';
  }

  @override
  String get banFromChat => 'חסום מצ\'אט';

  @override
  String get banned => 'חסום';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username חסם את $targetName';
  }

  @override
  String get blockDevice => 'חסום מכשיר';

  @override
  String get blocked => 'חסום';

  @override
  String get botMessages => 'הודעות בוט';

  @override
  String get bubbleSize => 'Bubble size';

  @override
  String get cachedKeys => 'מפתחות מאוחסנים במטמון';

  @override
  String get cancel => 'ביטול';

  @override
  String cantOpenUri(Object uri) {
    return 'לא ניתן לפתוח את ה-URI $uri';
  }

  @override
  String get changeDeviceName => 'שנה את שם המכשיר';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username שינה את האווטאר של הצ\'אט';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username שינה את תיאור הצ\'אט ל: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username שינה את שם הצ\'אט ל: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username שינה את הרשאות הצ\'אט';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username שינה את שם התצוגה שלו ל: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username שינה את כללי הגישה לאורחים';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username שינה את כללי הגישה לאורחים ל: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username שינה את נראות ההיסטוריה';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username שינה את נראות ההיסטוריה ל: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username שינה את כללי ההצטרפות';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username שינה את כללי ההצטרפות ל: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username שינה את האווטאר שלו';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username שינה את כינוי החדר';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username שינה את קישור ההזמנה';
  }

  @override
  String get changelog => 'יומן שינויים';

  @override
  String get changePassword => 'שנה סיסמא';

  @override
  String get changesHaveBeenSaved => 'השינויים נשמרו';

  @override
  String get changeTheHomeserver => 'שנה את שרת הבית';

  @override
  String get changeTheme => 'שנה את הסגנון שלך';

  @override
  String get changeTheNameOfTheGroup => 'שנה את שם הקבוצה';

  @override
  String get changeTheServer => 'שנה את השרת';

  @override
  String get changeWallpaper => 'שנה טפט';

  @override
  String get changeYourAvatar => 'שינוי האווטאר שלך';

  @override
  String get channelCorruptedDecryptError => 'ההצפנה נפגמה';

  @override
  String get chat => 'צ׳אט';

  @override
  String get yourUserId => 'מזהה המשתמש שלך:';

  @override
  String get setupChatBackup => 'הגדר גיבוי צ\'אט';

  @override
  String get iWroteDownTheKey => 'רשמתי את המפתח';

  @override
  String get yourChatBackupHasBeenSetUp => 'גיבוי הצ\'אט שלך הוגדר.';

  @override
  String get chatBackup => 'גיבוי צ\'אט';

  @override
  String get setupChatBackupDescription => 'כדי להגן על ההודעות שלך, יצרנו מפתח אבטחה עבורך.\nאנא שמור אותו במקום בטוח, כגון מנהל סיסמאות.';

  @override
  String get chatBackupDescription => 'גיבוי הצ\'אט שלך מאובטח באמצעות מפתח אבטחה. אנא וודא שאתה לא מאבד אותו.';

  @override
  String get chatDetails => 'פרטי צ\'אט';

  @override
  String get chatHasBeenAddedToThisSpace => 'צ\'אט נוסף למרחב הזה';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'הצ\'אט הוסר מהמרחב הזה';

  @override
  String get chats => 'צ\'אטים';

  @override
  String get chooseAStrongPassword => 'בחר סיסמה חזקה';

  @override
  String get chooseAUsername => 'בחר שם משתמש';

  @override
  String get clearArchive => 'נקה ארכיון';

  @override
  String get clearText => 'נקה טקסט';

  @override
  String get close => 'סגור';

  @override
  String get commandHint_ban => 'חסום את המשתמש הנתון מהחדר הזה';

  @override
  String get commandHint_clearcache => 'נקה מטמון';

  @override
  String get commandHint_create => 'צור צ\'אט קבוצתי ריק\nהשתמש ב--no-encryption כדי להשבית את ההצפנה';

  @override
  String get commandHint_discardsession => 'התעלם מהסשן';

  @override
  String get commandHint_dm => 'התחל צ\'אט ישיר\nהשתמש ב--no-encryption כדי להשבית את ההצפנה';

  @override
  String get commandHint_html => 'שלח טקסט בתבנית HTML';

  @override
  String get commandHint_invite => 'הזמן את המשתמש הנתון לחדר זה';

  @override
  String get commandHint_join => 'הצטרף לחדר הנתון';

  @override
  String get commandHint_kick => 'הסר את המשתמש הנתון מהחדר הזה';

  @override
  String get commandHint_leave => 'עזוב את החדר הזה';

  @override
  String get commandHint_me => 'תאר את עצמך';

  @override
  String get commandHint_myroomavatar => 'הגדר את התמונה שלך לחדר זה (על ידי mxc-uri)';

  @override
  String get commandHint_myroomnick => 'הגדר את שם התצוגה שלך עבור חדר זה';

  @override
  String get commandHint_op => 'הגדרת רמת צריכת החשמל של המשתמש הנתון (ברירת מחדל: 50)';

  @override
  String get commandHint_plain => 'שלח טקסט לא מעוצב';

  @override
  String get commandHint_react => 'שלח תשובה כתגובה';

  @override
  String get commandHint_send => 'שלח טקסט';

  @override
  String get commandHint_unban => 'בטל את החסימה של המשתמש הנתון מהחדר הזה';

  @override
  String get commandInvalid => 'הפקודה אינה חוקית';

  @override
  String commandMissing(Object command) {
    return '$command אינו פקודה.';
  }

  @override
  String get compareEmojiMatch => 'השווה וודא שהאימוג\'י הבאים תואמים לאלו של המכשיר השני:';

  @override
  String get compareNumbersMatch => 'השווה וודא שהמספרים הבאים תואמים לאלה של המכשיר השני:';

  @override
  String get configureChat => 'קביעת תצורה של צ\'אט';

  @override
  String get confirm => 'לאשר';

  @override
  String get connect => 'התחבר';

  @override
  String get connectionAttemptFailed => 'ניסיון החיבור נכשל';

  @override
  String get contactHasBeenInvitedToTheGroup => 'איש הקשר הוזמן לקבוצה';

  @override
  String get containsDisplayName => 'מכיל שם תצוגה';

  @override
  String get containsUserName => 'מכיל שם משתמש';

  @override
  String get contentHasBeenReported => 'התוכן דווח למנהלי השרת';

  @override
  String get contentViewer => 'מציג התוכן';

  @override
  String get copiedToClipboard => 'הועתק ללוח הגזירים';

  @override
  String get copy => 'העתק';

  @override
  String get copyToClipboard => 'העתק ללוח';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'לא ניתן לפענח הודעה: $error';
  }

  @override
  String get couldNotSetAvatar => 'לא היתה אפשרות להגדיר אווטאר';

  @override
  String get couldNotSetDisplayname => 'לא היתה אפשרות להגדיר שם תצוגה';

  @override
  String countParticipants(Object count) {
    return '$count משתתפים';
  }

  @override
  String get create => 'צור';

  @override
  String get createAccountNow => 'צור חשבון עכשיו';

  @override
  String createdTheChat(Object username) {
    return '$username יצר את הצ\'אט';
  }

  @override
  String get createNewGroup => 'צור קבוצה חדשה';

  @override
  String get createNewSpace => 'חלל חדש';

  @override
  String get crossSigningDisabled => 'חתימה צולבת';

  @override
  String get crossSigningEnabled => 'חתימה צולבת על';

  @override
  String get currentlyActive => 'פעיל כעת';

  @override
  String get darkTheme => 'כהה';

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
  String get deactivateAccountWarning => 'פעולה זו תשבית את חשבון המשתמש שלך. אי אפשר לבטל את זה! האם אתה בטוח?';

  @override
  String get defaultPermissionLevel => 'רמת הרשאת ברירת מחדל';

  @override
  String get delete => 'מחיקה';

  @override
  String get deleteAccount => 'מחק חשבון';

  @override
  String get deleteMessage => 'מחק הודעה';

  @override
  String get deny => 'דחה';

  @override
  String get device => 'מכשיר';

  @override
  String get deviceId => 'מזהה מכשיר';

  @override
  String get devices => 'התקנים';

  @override
  String get deviceVerifyDescription => 'ההצפנה מאובטחת רק כאשר כל המכשירים אומתו.';

  @override
  String get directChats => 'צ\'אטים ישירים';

  @override
  String get discardPicture => 'התעלם מתמונה';

  @override
  String get discover => 'לגלות';

  @override
  String get discoverGroups => 'גלה קבוצות';

  @override
  String get displaynameHasBeenChanged => 'שם התצוגה השתנה';

  @override
  String get donate => 'תרם';

  @override
  String get dontAskAgain => 'בטל ואל תשאל שוב';

  @override
  String get downloadFile => 'הורד קובץ';

  @override
  String get edit => 'ערוך';

  @override
  String get editBlockedServers => 'ערוך שרתים חסומים';

  @override
  String get editChatPermissions => 'ערוך הרשאות צ\'אט';

  @override
  String get editDisplayname => 'ערוך את שם התצוגה';

  @override
  String get editJitsiInstance => 'ערוך מופע Jitsi';

  @override
  String get editRoomAliases => 'ערוך כינויים לחדר';

  @override
  String get editRoomAvatar => 'עריכת אווטאר של חדר';

  @override
  String get emoteExists => 'אימוט כבר קיים!';

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
  String get emptyChat => 'צ\'אט ריק';

  @override
  String get enableChatBackup => 'אפשר את גיבוי הצ\'אט כדי שלעולם לא תאבד גישה לצ\'אטים שלך.';

  @override
  String get enableEmotesGlobally => 'Enable emote pack globally';

  @override
  String get enableEncryption => 'אפשר הצפנה';

  @override
  String get enableEncryptionWarning => 'לא תוכל לבטל את ההצפנה יותר. האם אתה בטוח?';

  @override
  String get encrypted => 'מוצפן';

  @override
  String get encryption => 'הצפנה';

  @override
  String get encryptionAlgorithm => 'אלגוריתם הצפנה';

  @override
  String get encryptionNotEnabled => 'ההצפנה אינה מופעלת';

  @override
  String get end2endEncryptionSettings => 'הגדרות הצפנה מקצה לקצה';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName סיים את השיחה';
  }

  @override
  String get enterAGroupName => 'הזן שם קבוצה';

  @override
  String get enterAnEmailAddress => 'הזן כתובת דואר אלקטרוני';

  @override
  String get enterASpacepName => 'הזן שם חלל';

  @override
  String get enterAUsername => 'הזן שם משתמש';

  @override
  String get homeserver => 'שרת בית';

  @override
  String get enterYourHomeserver => 'הזן את שרת הבית שלך';

  @override
  String errorObtainingLocation(Object error) {
    return 'שגיאה בהשגת מיקום: $error';
  }

  @override
  String get everythingReady => 'הכל מוכן!';

  @override
  String get extremeOffensive => 'פוגעני ביותר';

  @override
  String get fileName => 'שם קובץ';

  @override
  String get fileSize => 'גודל הקובץ';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'גודל גופן';

  @override
  String get forward => 'העבר';

  @override
  String get friday => 'יום שישי';

  @override
  String get friends => 'חברים';

  @override
  String get fromJoining => 'מהצטרפות';

  @override
  String get fromTheInvitation => 'מההזמנה';

  @override
  String get goToTheNewRoom => 'עבור לחדר החדש';

  @override
  String get group => 'קבוצה';

  @override
  String get groupDescription => 'תיאור קבוצה';

  @override
  String get groupDescriptionHasBeenChanged => 'תיאור הקבוצה השתנה';

  @override
  String get groupIsPublic => 'הקבוצה ציבורית';

  @override
  String get groups => 'קבוצות';

  @override
  String groupWith(Object displayname) {
    return 'קבוצה עם $displayname';
  }

  @override
  String get guestsAreForbidden => 'אורחים אסורים';

  @override
  String get guestsCanJoin => 'אורחים יכולים להצטרף';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username ביטל את ההזמנה עבור $targetName';
  }

  @override
  String get help => 'עזרה';

  @override
  String get hideRedactedEvents => 'הסתר אירועים מצונזרים';

  @override
  String get hideUnknownEvents => 'הסתר אירועים לא ידועים';

  @override
  String get homeserverIsNotCompatible => 'שרת הבית אינו תואם';

  @override
  String get howOffensiveIsThisContent => 'עד כמה התוכן הזה פוגעני?';

  @override
  String get id => 'מזהה';

  @override
  String get identity => 'זהות';

  @override
  String get ignore => 'התעלם';

  @override
  String get ignoredUsers => 'משתמשים שהתעלמו מהם';

  @override
  String get ignoreListDescription => 'באפשרותך להתעלם ממשתמשים שמפריעים לך. לא תוכל לקבל הודעות או הזמנות לחדר מהמשתמשים ברשימת ההתעלם האישית שלך.';

  @override
  String get ignoreUsername => 'התעלם משם משתמש';

  @override
  String get iHaveClickedOnLink => 'לחצתי על הקישור';

  @override
  String get incorrectPassphraseOrKey => 'ביטוי סיסמה או מפתח שחזור שגויים';

  @override
  String get inoffensive => 'לֹא פּוֹגֵעַ';

  @override
  String get invalidEmail => 'דואר אלקטרוני לא חוקי';

  @override
  String get inviteContact => 'הזמן איש קשר';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'הזמן איש קשר אל $groupName';
  }

  @override
  String get invited => 'הזמין';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username הזמין את $targetName';
  }

  @override
  String get invitedUsersOnly => 'משתמשים מוזמנים בלבד';

  @override
  String get inviteForMe => 'הזמנה בשבילי';

  @override
  String inviteText(Object username, Object link) {
    return '$username הזמין אותך ל-FluffyChat.\n1. התקן את FluffyChat: https://fluffychat.im\n2. הירשם או היכנס\n3. פתח את קישור ההזמנה: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'האם מפתח המכשיר נכון?';

  @override
  String get isTyping => 'מקליד/ה…';

  @override
  String joinedTheChat(Object username) {
    return '$username הצטרף לצ\'אט';
  }

  @override
  String get joinRoom => 'הצטרף לחדר';

  @override
  String get keysCached => 'המפתחות נשמרים במטמון';

  @override
  String get keysMissing => 'המפתחות חסרים';

  @override
  String kicked(Object username, Object targetName) {
    return '$username בעט ב $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username בעט וחסם $targetName';
  }

  @override
  String get kickFromChat => 'בעיטה מהצ\'אט';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'פעילות אחרונה: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'IP שנראה לאחרונה';

  @override
  String get lastSeenLongTimeAgo => 'נראה לפני זמן רב';

  @override
  String get leave => 'לעזוב';

  @override
  String get leftTheChat => 'עזב את הצ\'אט';

  @override
  String get license => 'רשיון';

  @override
  String get lightTheme => 'בהיר';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'טען $count משתתפים נוספים';
  }

  @override
  String get loadingPleaseWait => 'טוען אנא המתן.';

  @override
  String get showSpaces => 'Show classes list';

  @override
  String get loadMore => 'טען עוד…';

  @override
  String get locationDisabledNotice => 'שירותי המיקום מושבתים. אנא הפעל אותם כדי לשתף את המיקום שלך.';

  @override
  String get locationPermissionDeniedNotice => 'הרשאת המיקום נדחתה. אנא אפשר את היכולת לשתף את מיקומך.';

  @override
  String get login => 'כניסה';

  @override
  String logInTo(Object homeserver) {
    return 'היכנס אל $homeserver';
  }

  @override
  String get loginWithOneClick => 'היכנס בלחיצה אחת';

  @override
  String get logout => 'יציאה';

  @override
  String get makeAModerator => 'הפוך למנחה';

  @override
  String get makeAnAdmin => 'הפוך למנהל מערכת';

  @override
  String get makeSureTheIdentifierIsValid => 'ודא שהמזהה חוקי';

  @override
  String get memberChanges => 'שינויים בחבר';

  @override
  String get mention => 'הזכיר';

  @override
  String get messages => 'הודעות';

  @override
  String get messageWillBeRemovedWarning => 'ההודעה תוסר עבור כל המשתתפים';

  @override
  String get moderator => 'מנחה';

  @override
  String get monday => 'יום שני';

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
  String get muteChat => 'השתקת הצ\'אט';

  @override
  String get needPantalaimonWarning => 'שים לב שאתה צריך Pantalaimon כדי להשתמש בהצפנה מקצה לקצה לעת עתה.';

  @override
  String get newChat => 'צ\'אט חדש';

  @override
  String get newMessageInFluffyChat => 'הודעה חדשה ב-FluffyChat';

  @override
  String get newVerificationRequest => 'בקשת אימות חדשה!';

  @override
  String get next => 'הבא';

  @override
  String get no => 'לא';

  @override
  String get noConnectionToTheServer => 'אין חיבור לשרת';

  @override
  String get noCrossSignBootstrap => 'Fluffychat אינו תומך כרגע בהפעלת חתימה צולבת. אנא הפעל אותו מתוך Element.';

  @override
  String get noDescription => 'אין תיאור';

  @override
  String get noEmotesFound => 'No emotes found. 😕';

  @override
  String get noEncryptionForPublicRooms => 'אתה יכול להפעיל הצפנה רק כשהחדר כבר לא נגיש לציבור.';

  @override
  String get noGoogleServicesWarning => 'נראה שאין לך שירותי גוגל בטלפון שלך. זו החלטה טובה לפרטיות שלך! כדי לקבל התרעות ב- FluffyChat אנו ממליצים להשתמש https://microg.org/ או https://unifiedpush.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 אינו שרת מטריקס, השתמש ב-$server2 במקום זאת?';
  }

  @override
  String get createNewChatExplaination => 'פשוט סרקו את קוד ה-QR או שתפו את קישור ההזמנה שלכם אם אינכם אחד ליד השני.';

  @override
  String get shareYourInviteLink => 'שתף את קישור ההזמנה שלך';

  @override
  String get typeInInviteLinkManually => 'הקלד את קישור ההזמנה באופן ידני...';

  @override
  String get scanQrCode => 'סרוק קוד QR';

  @override
  String get noMegolmBootstrap => 'הפעל במקום זאת גיבוי מפתח מקוון מתוך Element.';

  @override
  String get none => 'ללא';

  @override
  String get newPasswordDescription => 'על מנת שתוכל לשחזר את הסיסמה שלך, עליך להוסיף מאוחר יותר כתובת אימייל לחשבון שלך.';

  @override
  String get newUsernameDescription => 'מזהה המשתמש שלך יקבל את הפורמט @username:servername';

  @override
  String get noPasswordRecoveryDescription => 'עדיין לא הוספת דרך לשחזר את הסיסמה שלך.';

  @override
  String get noPermission => 'אין הרשאה';

  @override
  String get noPublicRoomsFound => 'לא נמצאו חדרים ציבוריים…';

  @override
  String get noRoomsFound => 'לא נמצאו חדרים…';

  @override
  String get noStatusesFound => 'לא נמצאו סטטוסים עד כה.';

  @override
  String get notifications => 'התראות';

  @override
  String get notificationsEnabledForThisAccount => 'התראות הופעלו עבור חשבון זה';

  @override
  String get notSupportedInWeb => 'לא נתמך בweb';

  @override
  String numberSelected(Object number) {
    return '$number נבחר';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count משתמשים מקלידים…';
  }

  @override
  String get obtainingLocation => 'משיג מיקום…';

  @override
  String get offensive => 'פוגעני';

  @override
  String get offline => 'לא מקוון';

  @override
  String get ok => 'Ok';

  @override
  String get online => 'מחובר/ת';

  @override
  String get onlineKeyBackupDisabled => 'גיבוי מפתח מקוון מושבת';

  @override
  String get onlineKeyBackupEnabled => 'גיבוי מפתח מקוון מופעל';

  @override
  String get oopsPushError => 'אופס! למרבה הצער, אירעה שגיאה בעת הגדרת התראות.';

  @override
  String get oopsSomethingWentWrong => 'אופס, משהו השתבש…';

  @override
  String get openAppToReadMessages => 'פתח את האפליקציה לקריאת הודעות';

  @override
  String get openCamera => 'פתח מצלמה';

  @override
  String get openVideoCamera => 'פתח את המצלמה לסרטון';

  @override
  String get oneClientLoggedOut => 'אחד מהמכשירים שלך התנתק';

  @override
  String get addAccount => 'הוסף חשבון';

  @override
  String get editBundlesForAccount => 'ערוך חבילות עבור חשבון זה';

  @override
  String get addToBundle => 'הוסף לחבילה';

  @override
  String get removeFromBundle => 'הסר מחבילה זו';

  @override
  String get bundleName => 'שם החבילה';

  @override
  String get enableMultiAccounts => '(בטא) אפשר ריבוי חשבונות במכשיר זה';

  @override
  String get openInMaps => 'פתיחה במפות';

  @override
  String get link => 'קישור';

  @override
  String get serverRequiresEmail => 'שרת זה צריך לאמת את כתובת הדואר האלקטרוני שלך לרישום.';

  @override
  String get optionalGroupName => '(אופציונלי) שם קבוצה';

  @override
  String get or => 'או';

  @override
  String get participant => 'משתתף';

  @override
  String get participatingUserDevices => 'מכשירי משתמש משתתפים';

  @override
  String get passphraseOrKey => 'ביטוי סיסמה או מפתח שחזור';

  @override
  String get password => 'סיסמה';

  @override
  String get passwordForgotten => 'שכחתי סיסמה';

  @override
  String get passwordHasBeenChanged => 'הסיסמה שונתה';

  @override
  String get passwordRecovery => 'שחזור סיסמה';

  @override
  String get people => 'אנשים';

  @override
  String get pickImage => 'בחר תמונה';

  @override
  String get pin => 'קוד pin';

  @override
  String play(Object fileName) {
    return 'הפעל $fileName';
  }

  @override
  String get pleaseChoose => 'אנא בחר';

  @override
  String get pleaseChooseAPasscode => 'אנא בחר קוד גישה';

  @override
  String get pleaseChooseAUsername => 'אנא בחר שם משתמש';

  @override
  String get pleaseClickOnLink => 'אנא לחץ על הקישור במייל ולאחר מכן המשך.';

  @override
  String get pleaseEnter4Digits => 'אנא הזן 4 ספרות או השאר ריק כדי להשבית את נעילת האפליקציה.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'אנא הזן Matrix ID.';

  @override
  String get pleaseEnterSecurityKey => 'נא הזן את מפתח האבטחה שלך:';

  @override
  String get pleaseEnterYourPassword => 'נא הזן את הסיסמה שלך';

  @override
  String get pleaseEnterYourPin => 'אנא הזן את קוד הpin שלך';

  @override
  String get pleaseEnterYourUsername => 'אנא הזן שם משתמש';

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
