

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Indonesian (`id`).
class L10nId extends L10n {
  L10nId([String locale = 'id']) : super(locale);

  @override
  String get passwordsDoNotMatch => 'Kata sandi tidak cocok!';

  @override
  String get pleaseEnterValidEmail => 'Mohon masukkan alamat email yang valid.';

  @override
  String get repeatPassword => 'Ulangi kata sandi';

  @override
  String pleaseChooseAtLeastChars(Object min) {
    return 'Mohon pilih minimal $min karakter.';
  }

  @override
  String get about => 'Tentang';

  @override
  String get accept => 'Terima';

  @override
  String acceptedTheInvitation(Object username) {
    return '$username menerima undangannya';
  }

  @override
  String get account => 'Akun';

  @override
  String get accountInformation => 'Informasi akun';

  @override
  String activatedEndToEndEncryption(Object username) {
    return '$username mengaktifkan enkripsi ujung ke ujung';
  }

  @override
  String get addEmail => 'Tambah email';

  @override
  String get addGroupDescription => 'Tambahkan deskripsi grup';

  @override
  String get addNewFriend => 'Tambah teman baru';

  @override
  String get addToSpace => 'Tambah ke class';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'alias';

  @override
  String get all => 'Semua';

  @override
  String get allChats => 'Semua obrolan';

  @override
  String get alreadyHaveAnAccount => 'Sudah memiliki akun?';

  @override
  String answeredTheCall(Object senderName) {
    return '$senderName menjawab panggilan';
  }

  @override
  String get anyoneCanJoin => 'Siapa saja dapat bergabung';

  @override
  String get appLock => 'Kunci aplikasi';

  @override
  String get archive => 'Arsip';

  @override
  String get archivedRoom => 'Ruangan yang Diarsipkan';

  @override
  String get areGuestsAllowedToJoin => 'Apakah pengguna tamu diizinkan untuk bergabung';

  @override
  String get areYouSure => 'Apakah kamu yakin?';

  @override
  String get areYouSureYouWantToLogout => 'Apakah kamu yakin ingin keluar?';

  @override
  String get askSSSSSign => 'Untuk dapat menandatangani orang lain, silakan masukkan frasa sandi atau kunci pemulihan penyimpanan aman kamu.';

  @override
  String get askSSSSVerify => 'Mohon masukkan frasa sandi atau kunci pemulihan penyimpanan aman kamu untuk memverifikasi sesimu.';

  @override
  String askVerificationRequest(Object username) {
    return 'Terima permintaan verifikasi dari $username?';
  }

  @override
  String get audioPlayerPause => 'Jeda';

  @override
  String get audioPlayerPlay => 'Main';

  @override
  String get authentication => 'Autentikasi';

  @override
  String get autoplayImages => 'Mainkan stiker beranimasi dan emote secara otomatis';

  @override
  String get avatarHasBeenChanged => 'Avatar diubah';

  @override
  String badServerLoginTypesException(Object serverVersions, Object supportedVersions) {
    return 'Homeserver ini mendukung tipe masuk ini:\n${serverVersions}\nTetapi aplikasi ini mendukung:\n${supportedVersions}';
  }

  @override
  String get sendOnEnter => 'Kirim dengan enter';

  @override
  String badServerVersionsException(Object serverVersions, Object supportedVersions) {
    return 'Homeserver ini mendukung versi Spec ini:\n${serverVersions}\nTetapi aplikasi ini hanya mendukung $supportedVersions';
  }

  @override
  String get banFromChat => 'Cekal dari chat';

  @override
  String get banned => 'Dicekal';

  @override
  String bannedUser(Object username, Object targetName) {
    return '$username mencekal $targetName';
  }

  @override
  String get blockDevice => 'Blokir Perangkat';

  @override
  String get blocked => 'Diblokir';

  @override
  String get botMessages => 'Pesan bot';

  @override
  String get bubbleSize => 'Ukuran gelembung';

  @override
  String get cachedKeys => 'Kunci dicache';

  @override
  String get cancel => 'Batal';

  @override
  String cantOpenUri(Object uri) {
    return 'Tidak bisa membuka URI ini $uri';
  }

  @override
  String get changeDeviceName => 'Ganti nama perangkat';

  @override
  String changedTheChatAvatar(Object username) {
    return '$username mengubah avatar chat';
  }

  @override
  String changedTheChatDescriptionTo(Object username, Object description) {
    return '$username mengubah deskripsi chat ke: \'$description\'';
  }

  @override
  String changedTheChatNameTo(Object username, Object chatname) {
    return '$username mengubah nama chat ke: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(Object username) {
    return '$username mengubah izin chat';
  }

  @override
  String changedTheDisplaynameTo(Object username, Object displayname) {
    return '$username mengubah nama tampilan ke: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(Object username) {
    return '$username mengubah aturan akses tamu';
  }

  @override
  String changedTheGuestAccessRulesTo(Object username, Object rules) {
    return '$username mengubah aturan akses tamu ke: $rules';
  }

  @override
  String changedTheHistoryVisibility(Object username) {
    return '$username mengubah visibilitas sejarah';
  }

  @override
  String changedTheHistoryVisibilityTo(Object username, Object rules) {
    return '$username mengubah visibilitas sejarah ke: $rules';
  }

  @override
  String changedTheJoinRules(Object username) {
    return '$username mengubah aturan bergabung';
  }

  @override
  String changedTheJoinRulesTo(Object username, Object joinRules) {
    return '$username mengubah aturan bergabung ke: $joinRules';
  }

  @override
  String changedTheProfileAvatar(Object username) {
    return '$username mengubah avatarnya';
  }

  @override
  String changedTheRoomAliases(Object username) {
    return '$username mengubah alias ruangan';
  }

  @override
  String changedTheRoomInvitationLink(Object username) {
    return '$username mengubah tautan undangan';
  }

  @override
  String get changelog => 'Changelog';

  @override
  String get changePassword => 'Ubah kata sandi';

  @override
  String get changesHaveBeenSaved => 'Perubahan telah disimpan';

  @override
  String get changeTheHomeserver => 'Ubah homeserver';

  @override
  String get changeTheme => 'Ubah tema';

  @override
  String get changeTheNameOfTheGroup => 'Ubah nama grup';

  @override
  String get changeTheServer => 'Ubah server';

  @override
  String get changeWallpaper => 'Ubah wallpaper';

  @override
  String get changeYourAvatar => 'Ubah avatarmu';

  @override
  String get channelCorruptedDecryptError => 'Enkripsi telah rusak';

  @override
  String get chat => 'Chat';

  @override
  String get yourUserId => 'ID penggunamu:';

  @override
  String get setupChatBackup => 'Siapkan cadangan pesan';

  @override
  String get iWroteDownTheKey => 'Saya telah menuliskan kuncinya';

  @override
  String get yourChatBackupHasBeenSetUp => 'Cadangan pesanmu telah disiapkan.';

  @override
  String get chatBackup => 'Cadangan chat';

  @override
  String get setupChatBackupDescription => 'Untuk melindungi pesanmu, kami telah membuat kunci keamanan untukmu.\nSilakan simpan kuncinya di tempat yang aman, seperti manajer kata sandi.';

  @override
  String get chatBackupDescription => 'Cadangan chatmu diamankan dengan kunci keamanan. Pastikan kamu tidak menghilangkannya.';

  @override
  String get chatDetails => 'Detail chat';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat telah ditambahkan ke class ini';

  @override
  String get chatHasBeenRemovedFromThisSpace => 'Chat telah dikeluarkan dari class ini';

  @override
  String get chats => 'Chat';

  @override
  String get chooseAStrongPassword => 'Pilih kata sandi yang kuat';

  @override
  String get chooseAUsername => 'Pilih username';

  @override
  String get clearArchive => 'Bersihkan arsip';

  @override
  String get clearText => 'Bersihkan teks';

  @override
  String get close => 'Tutup';

  @override
  String get commandHint_ban => 'Cekal pengguna yang dicantumkan dari ruangan ini';

  @override
  String get commandHint_clearcache => 'Bersihkan cache';

  @override
  String get commandHint_create => 'Buat sebuah chat grup kosong\nGunakan --no-encryption untuk menonaktifkan enkripsi';

  @override
  String get commandHint_discardsession => 'Buang sesi';

  @override
  String get commandHint_dm => 'Memulai sebuah chat langsung\nGunakan --no-encryption untuk menonaktifkan enkripsi';

  @override
  String get commandHint_html => 'Kirim teks yang diformat dengan HTML';

  @override
  String get commandHint_invite => 'Undang pengguna yang dicantum ke ruangan ini';

  @override
  String get commandHint_join => 'Gabung ke ruangan yang dicantum';

  @override
  String get commandHint_kick => 'Keluarkan pengguna yang dicantum dari ruangan ini';

  @override
  String get commandHint_leave => 'Tinggalkan ruangan ini';

  @override
  String get commandHint_me => 'Jelaskan dirimu';

  @override
  String get commandHint_myroomavatar => 'Tetapkan gambarmu untuk ruangan ini (oleh uri-mxc)';

  @override
  String get commandHint_myroomnick => 'Tetapkan nama tampilanmu untuk ruangan ini';

  @override
  String get commandHint_op => 'Tetapkan tingkat kekuatan pengguna yang dicantum (default: 50)';

  @override
  String get commandHint_plain => 'Kirim teks yang tidak diformat';

  @override
  String get commandHint_react => 'Kirim balasan sebagai reaksi';

  @override
  String get commandHint_send => 'Kirim teks';

  @override
  String get commandHint_unban => 'Hilangkan cekalan untuk pengguna yang dicantumkan dari ruangan ini';

  @override
  String get commandInvalid => 'Perintah tidak valid';

  @override
  String commandMissing(Object command) {
    return '$command bukan sebuah perintah.';
  }

  @override
  String get compareEmojiMatch => 'Bandingkan dan pastikan emoji cocok di perangkat lainnya:';

  @override
  String get compareNumbersMatch => 'Bandingkan dan pastikan angka cocok di perangkat lainnya:';

  @override
  String get configureChat => 'Konfigurasikan chat';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get connect => 'Hubungkan';

  @override
  String get connectionAttemptFailed => 'Upaya koneksi gagal';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Kontak telah diundang ke grup';

  @override
  String get containsDisplayName => 'Berisi nama tampilan';

  @override
  String get containsUserName => 'Berisi nama pengguna';

  @override
  String get contentHasBeenReported => 'Konten telah dilaporkan ke admin server';

  @override
  String get contentViewer => 'Tampilan konten';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get copy => 'Salin';

  @override
  String get copyToClipboard => 'Salin ke papan klip';

  @override
  String couldNotDecryptMessage(Object error) {
    return 'Tidak dapat mendekripsikan pesan: $error';
  }

  @override
  String get couldNotSetAvatar => 'Tidak dapat mengubah avatar';

  @override
  String get couldNotSetDisplayname => 'Tidak dapat mengubah nama tampilan';

  @override
  String countParticipants(Object count) {
    return '$count anggota';
  }

  @override
  String get create => 'Buat';

  @override
  String get createAccountNow => 'Buat akun sekarang';

  @override
  String createdTheChat(Object username) {
    return '$username membuat chat ini';
  }

  @override
  String get createNewGroup => 'Buat grup baru';

  @override
  String get createNewSpace => 'Class baru';

  @override
  String get crossSigningDisabled => 'Tanda tangan silang dimatikan';

  @override
  String get crossSigningEnabled => 'Tanda tangan silang dinyalakan';

  @override
  String get currentlyActive => 'Aktif';

  @override
  String get darkTheme => 'Gelap';

  @override
  String dateAndTimeOfDay(Object date, Object timeOfDay) {
    return '$timeOfDay, $date';
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
  String get deactivateAccountWarning => 'Ini akan menonaktifkan akun penggunamu. Ini tidak bisa dibatalkan! Apakah kamu yakin?';

  @override
  String get defaultPermissionLevel => 'Level izin default';

  @override
  String get delete => 'Hapus';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get deleteMessage => 'Hapus pesan';

  @override
  String get deny => 'Tolak';

  @override
  String get device => 'Perangkat';

  @override
  String get deviceId => 'ID Perangkat';

  @override
  String get devices => 'Perangkat';

  @override
  String get deviceVerifyDescription => 'Enkripsi hanya aman jika semua perangkat telah diverifikasi.';

  @override
  String get directChats => 'Chat Langsung';

  @override
  String get discardPicture => 'Buang gambar';

  @override
  String get discover => 'Temukan';

  @override
  String get discoverGroups => 'Temukan grup';

  @override
  String get displaynameHasBeenChanged => 'Nama tampilan telah diubah';

  @override
  String get donate => 'Beri Donasi';

  @override
  String get dontAskAgain => 'Batalkan dan jangan tanya lagi';

  @override
  String get downloadFile => 'Unduh berkas';

  @override
  String get edit => 'Edit';

  @override
  String get editBlockedServers => 'Edit server yang diblokir';

  @override
  String get editChatPermissions => 'Edit izin chat';

  @override
  String get editDisplayname => 'Edit nama tampilan';

  @override
  String get editJitsiInstance => 'Edit instansi Jitsi';

  @override
  String get editRoomAliases => 'Edit alias ruangan';

  @override
  String get editRoomAvatar => 'Edit avatar ruangan';

  @override
  String get emoteExists => 'Emote sudah ada!';

  @override
  String get emoteInvalid => 'Shortcode emote tidak valid!';

  @override
  String get emotePacks => 'Paket emote untuk ruangan';

  @override
  String get emoteSettings => 'Pengaturan Emote';

  @override
  String get emoteShortcode => 'Shortcode emote';

  @override
  String get emoteWarnNeedToPick => 'Kamu harus memilih shortcode emote dan gambar!';

  @override
  String get emptyChat => 'Chat kosong';

  @override
  String get enableChatBackup => 'Aktifkan cadangan chat untuk tidak kehilangan akses chatmu.';

  @override
  String get enableEmotesGlobally => 'Aktifkan paket emote secara global';

  @override
  String get enableEncryption => 'Aktifkan enkripsi';

  @override
  String get enableEncryptionWarning => 'Kamu tidak akan bisa menonaktifkan enkripsi. Apakah kamu yakin?';

  @override
  String get encrypted => 'Terenkripsi';

  @override
  String get encryption => 'Enkripsi';

  @override
  String get encryptionAlgorithm => 'Algoritma enkripsi';

  @override
  String get encryptionNotEnabled => 'Enkripsi tidak diaktifkan';

  @override
  String get end2endEncryptionSettings => 'Pengaturan enkripsi ujung-ke-ujung';

  @override
  String endedTheCall(Object senderName) {
    return '$senderName mengakhiri panggilan';
  }

  @override
  String get enterAGroupName => 'Masukkan nama grup';

  @override
  String get enterAnEmailAddress => 'Masukkan alamat email';

  @override
  String get enterASpacepName => 'Masukkan nama class';

  @override
  String get enterAUsername => 'Masukkan nama pengguna';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'Masukkan homeserver-mu';

  @override
  String errorObtainingLocation(Object error) {
    return 'Gagal mendapat lokasi: $error';
  }

  @override
  String get everythingReady => 'Semua siap!';

  @override
  String get extremeOffensive => 'Sangat menyinggung';

  @override
  String get fileName => 'Nama file';

  @override
  String get fileSize => 'Ukuran file';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Ukuran font';

  @override
  String get forward => 'Teruskan';

  @override
  String get friday => 'Jumat';

  @override
  String get friends => 'Teman';

  @override
  String get fromJoining => 'Dari bergabung';

  @override
  String get fromTheInvitation => 'Dari undangan';

  @override
  String get goToTheNewRoom => 'Pergi ke ruangan yang baru';

  @override
  String get group => 'Grup';

  @override
  String get groupDescription => 'Deskripsi grup';

  @override
  String get groupDescriptionHasBeenChanged => 'Deskripsi grup diubah';

  @override
  String get groupIsPublic => 'Grup bersifat publik';

  @override
  String get groups => 'Grup';

  @override
  String groupWith(Object displayname) {
    return 'Grup dengan $displayname';
  }

  @override
  String get guestsAreForbidden => 'Tamu dilarang';

  @override
  String get guestsCanJoin => 'Tamu bisa bergabung';

  @override
  String hasWithdrawnTheInvitationFor(Object username, Object targetName) {
    return '$username telah mencabut undangan untuk $targetName';
  }

  @override
  String get help => 'Bantuan';

  @override
  String get hideRedactedEvents => 'Sembunyikan peristiwa yang dihapus';

  @override
  String get hideUnknownEvents => 'Sembunyikan peristiwa tidak dikenal';

  @override
  String get homeserverIsNotCompatible => 'Homeserver tidak kompatibel';

  @override
  String get howOffensiveIsThisContent => 'Seberapa menyinggungnya konten ini?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identitas';

  @override
  String get ignore => 'Abaikan';

  @override
  String get ignoredUsers => 'Pengguna yang diabaikan';

  @override
  String get ignoreListDescription => 'Kamu bisa mengabaikan pengguna yang mengganggu. Kamu tidak akan dapat menerima pesan atau undangan ruang apa pun dari pengguna di daftar abaian pribadimu.';

  @override
  String get ignoreUsername => 'Abaikan nama pengguna';

  @override
  String get iHaveClickedOnLink => 'Saya sudah klik tautannya';

  @override
  String get incorrectPassphraseOrKey => 'Frasa sandi atau kunci pemulihan yang salah';

  @override
  String get inoffensive => 'Tidak menyinggung';

  @override
  String get invalidEmail => 'Email tidak valid';

  @override
  String get inviteContact => 'Undang kontak';

  @override
  String inviteContactToGroup(Object groupName) {
    return 'Undang kontak ke $groupName';
  }

  @override
  String get invited => 'Diundang';

  @override
  String invitedUser(Object username, Object targetName) {
    return '$username mengundang $targetName';
  }

  @override
  String get invitedUsersOnly => 'Pengguna yang diundang saja';

  @override
  String get inviteForMe => 'Undangan untuk saya';

  @override
  String inviteText(Object username, Object link) {
    return '$username mengundang kamu ke FluffyChat. \n1. Instal FluffyChat: https://fluffychat.im \n2. Daftar atau masuk \n3. Buka tautan undangan: $link';
  }

  @override
  String get isDeviceKeyCorrect => 'Apakah kunci perangkat berikut ini benar?';

  @override
  String get isTyping => 'sedang mengetik…';

  @override
  String joinedTheChat(Object username) {
    return '$username telah bergabung di chat';
  }

  @override
  String get joinRoom => 'Gabung ruangan';

  @override
  String get keysCached => 'Kunci telah dicache';

  @override
  String get keysMissing => 'Tidak ada kunci';

  @override
  String kicked(Object username, Object targetName) {
    return '$username mengeluarkan $targetName';
  }

  @override
  String kickedAndBanned(Object username, Object targetName) {
    return '$username mengeluarkan dan mencekal $targetName';
  }

  @override
  String get kickFromChat => 'Keluarkan dari chat';

  @override
  String lastActiveAgo(Object localizedTimeShort) {
    return 'Terakhir aktif: $localizedTimeShort';
  }

  @override
  String get lastSeenIp => 'IP terakhir dilihat';

  @override
  String get lastSeenLongTimeAgo => 'Terlihat beberapa waktu yang lalu';

  @override
  String get leave => 'Tinggalkan';

  @override
  String get leftTheChat => 'Keluar dari chat';

  @override
  String get license => 'Lisensi';

  @override
  String get lightTheme => 'Terang';

  @override
  String loadCountMoreParticipants(Object count) {
    return 'Muat $count anggota';
  }

  @override
  String get loadingPleaseWait => 'Memuat… Mohon tunggu.';

  @override
  String get showSpaces => 'Tampilkan daftar class';

  @override
  String get loadMore => 'Muat lebih banyak…';

  @override
  String get locationDisabledNotice => 'Layanan lokasi dinonaktifkan. Mohon diaktifkan untuk bisa membagikan lokasimu.';

  @override
  String get locationPermissionDeniedNotice => 'Izin lokasi ditolak. Mohon memberikan izin untuk bisa membagikan lokasimu.';

  @override
  String get login => 'Masuk';

  @override
  String logInTo(Object homeserver) {
    return 'Masuk ke $homeserver';
  }

  @override
  String get loginWithOneClick => 'Masuk dengan satu klik';

  @override
  String get logout => 'Keluar';

  @override
  String get makeAModerator => 'Jadikan moderator';

  @override
  String get makeAnAdmin => 'Jadikan admin';

  @override
  String get makeSureTheIdentifierIsValid => 'Pastikan pengenalnya valid';

  @override
  String get memberChanges => 'Perubahan anggota';

  @override
  String get mention => 'Sebutkan';

  @override
  String get messages => 'Pesan';

  @override
  String get messageWillBeRemovedWarning => 'Pesan akan dihapus untuk semua anggota';

  @override
  String get moderator => 'Moderator';

  @override
  String get monday => 'Senin';

  @override
  String moreEvents(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '1 peristiwa lebih',
      other: '$count peristiwa lebih',
    );
  }

  @override
  String get muteChat => 'Bisukan chat';

  @override
  String get needPantalaimonWarning => 'Perlu diketahui bahwa kamu memerlukan Pantalaimon untuk menggunakan enkripsi ujung-ke-ujung untuk saat ini.';

  @override
  String get newChat => 'Chat baru';

  @override
  String get newMessageInFluffyChat => 'Pesan baru di FluffyChat';

  @override
  String get newVerificationRequest => 'Permintaan verifikasi baru!';

  @override
  String get next => 'Lanjut';

  @override
  String get no => 'Tidak';

  @override
  String get noConnectionToTheServer => 'Tidak ada koneksi ke server';

  @override
  String get noCrossSignBootstrap => 'FluffyChat saat ini tidak mendukung penandatanganan silang. Mohon aktifkan di Element.';

  @override
  String get noDescription => 'Tidak ada deskripsi';

  @override
  String get noEmotesFound => 'Tidak ada emote yang ditemukan. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Kamu hanya bisa mengaktifkan enkripsi setelah ruangan tidak lagi dapat diakses secara publik.';

  @override
  String get noGoogleServicesWarning => 'Sepertinya kamu tidak memiliki layanan Google di ponselmu. Keputusan yang baik untuk privasimu! Untuk menerima pemberitahuan push di FluffyChat, sebaiknya kamu menggunakan https://microg.org/ atau https://unifiedpush.org/.';

  @override
  String noMatrixServer(Object server1, Object server2) {
    return '$server1 itu bukan server Matrix, gunakan $server2 saja?';
  }

  @override
  String get createNewChatExplaination => 'Cukup pindai kode QR atau bagikan tautan undanganmu jika kamu tidak bersebelahan.';

  @override
  String get shareYourInviteLink => 'Bagikan tautan undanganmu';

  @override
  String get typeInInviteLinkManually => 'Masukkan tautan undangan secara manual...';

  @override
  String get scanQrCode => 'Pindai kode QR';

  @override
  String get noMegolmBootstrap => 'Mohon menyalakan cadangan kunci online di Element.';

  @override
  String get none => 'Tidak Ada';

  @override
  String get newPasswordDescription => 'Untuk bisa memulihkan kata sandi, kamu nanti harus menambahkan alamat email ke akunmu.';

  @override
  String get newUsernameDescription => 'ID penggunamu akan memiliki format @namapengguna:namaserver';

  @override
  String get noPasswordRecoveryDescription => 'Kamu belum menambahkan cara untuk memulihkan kata sandimu.';

  @override
  String get noPermission => 'Tidak ada izin';

  @override
  String get noPublicRoomsFound => 'Tidak menemukan ruangan publik…';

  @override
  String get noRoomsFound => 'Tidak ada ruangan yang ditemukan…';

  @override
  String get noStatusesFound => 'Tidak ada status yang ditemukan sejauh ini.';

  @override
  String get notifications => 'Notifikasi';

  @override
  String get notificationsEnabledForThisAccount => 'Notifikasi diaktifkan untuk akun ini';

  @override
  String get notSupportedInWeb => 'Tidak didukung di web';

  @override
  String numberSelected(Object number) {
    return '$number terpilih';
  }

  @override
  String numUsersTyping(Object count) {
    return '$count pengguna sedang mengetik…';
  }

  @override
  String get obtainingLocation => 'Mendapatkan lokasi…';

  @override
  String get offensive => 'Menyinggung';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'Ok';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupDisabled => 'Cadangan Kunci Online dimatikan';

  @override
  String get onlineKeyBackupEnabled => 'Cadangan Kunci Online dinyalakan';

  @override
  String get oopsPushError => 'Ups! Sayangnya, terjadi kesalahan saat mengatur pemberitahuan push.';

  @override
  String get oopsSomethingWentWrong => 'Ups, ada yang salah…';

  @override
  String get openAppToReadMessages => 'Buka aplikasi untuk membaca pesan';

  @override
  String get openCamera => 'Buka kamera';

  @override
  String get openVideoCamera => 'Buka kamera untuk merekam video';

  @override
  String get oneClientLoggedOut => 'Salah satu klienmu telah keluar';

  @override
  String get addAccount => 'Tambah akun';

  @override
  String get editBundlesForAccount => 'Edit bundel untuk akun ini';

  @override
  String get addToBundle => 'Tambah ke bundel';

  @override
  String get removeFromBundle => 'Hilangkan dari bundel ini';

  @override
  String get bundleName => 'Nama bundel';

  @override
  String get enableMultiAccounts => '(BETA) Aktifkan multi-akun di perangkat ini';

  @override
  String get openInMaps => 'Buka di peta';

  @override
  String get link => 'Tautan';

  @override
  String get serverRequiresEmail => 'Server ini harus memvalidasi alamat email kamu untuk registrasi.';

  @override
  String get optionalGroupName => '(Opsional) Nama grup';

  @override
  String get or => 'Atau';

  @override
  String get participant => 'Peserta';

  @override
  String get participatingUserDevices => 'Perangkat pengguna yang disertai';

  @override
  String get passphraseOrKey => 'frasa sandi atau kunci pemulihan';

  @override
  String get password => 'Kata sandi';

  @override
  String get passwordForgotten => 'Lupa kata sandi';

  @override
  String get passwordHasBeenChanged => 'Kata sandi telah diubah';

  @override
  String get passwordRecovery => 'Pemulihan kata sandi';

  @override
  String get people => 'Orang-orang';

  @override
  String get pickImage => 'Pilih gambar';

  @override
  String get pin => 'Pin';

  @override
  String play(Object fileName) {
    return 'Mainkan $fileName';
  }

  @override
  String get pleaseChoose => 'Mohon pilih';

  @override
  String get pleaseChooseAPasscode => 'Mohon pilih kode sandi';

  @override
  String get pleaseChooseAUsername => 'Mohon pilih nama pengguna';

  @override
  String get pleaseClickOnLink => 'Mohon klik tautan di email dan lanjut.';

  @override
  String get pleaseEnter4Digits => 'Mohon masukkan 4 digit atau tinggalkan kosong untuk menonaktifkan kunci aplikasi.';

  @override
  String get pleaseEnterAMatrixIdentifier => 'Mohon masukkan ID Matrix.';

  @override
  String get pleaseEnterSecurityKey => 'Mohon masukkan kunci keamananmu:';

  @override
  String get pleaseEnterYourPassword => 'Mohon masukkan kata sandimu';

  @override
  String get pleaseEnterYourPin => 'Masukkan pin';

  @override
  String get pleaseEnterYourUsername => 'Mohon masukkan nama penggunamu';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Mohon ikuti petunjuk di situs web dan tekan lanjut.';

  @override
  String get privacy => 'Privasi';

  @override
  String get publicGroups => 'Grup-grup Publik';

  @override
  String get publicKey => 'Kunci Publik';

  @override
  String get publicRooms => 'Ruangan Publik';

  @override
  String get publicSpace => 'Class publik';

  @override
  String get pushRules => 'Aturan push';

  @override
  String get reason => 'Alasan';

  @override
  String get recording => 'Merekam';

  @override
  String redactedAnEvent(Object username) {
    return '$username menghapus sebuah peristiwa';
  }

  @override
  String get redactMessage => 'Hapus pesan';

  @override
  String get register => 'Daftar';

  @override
  String get reject => 'Tolak';

  @override
  String rejectedTheInvitation(Object username) {
    return '$username menolak undangannya';
  }

  @override
  String get rejoin => 'Gabung kembali';

  @override
  String get remove => 'Hapus';

  @override
  String get removeAllOtherDevices => 'Hapus semua perangkat lain';

  @override
  String removedBy(Object username) {
    return 'Dihapus oleh $username';
  }

  @override
  String get removeDevice => 'Hapus perangkat';

  @override
  String get unbanFromChat => 'Hilangkan cekalan dari chat';

  @override
  String get removeMessage => 'Hapus pesan';

  @override
  String get removeYourAvatar => 'Hapus avatarmu';

  @override
  String get renderRichContent => 'Render konten pesan kaya';

  @override
  String get replaceRoomWithNewerVersion => 'Menggantikan ruangan dengan versi baru';

  @override
  String get reply => 'Balas';

  @override
  String get reportMessage => 'Laporkan pesan';

  @override
  String get requestPermission => 'Minta izin';

  @override
  String get requestToReadOlderMessages => 'Minta membaca pesan lama';

  @override
  String get revokeAllPermissions => 'Hilangkan semua izin';

  @override
  String get roomHasBeenUpgraded => 'Ruangan telah ditingkatkan';

  @override
  String get roomVersion => 'Versi ruangan';

  @override
  String get saturday => 'Sabtu';

  @override
  String savedFileAs(Object filename) {
    return 'File disimpan sebagai $filename';
  }

  @override
  String get saveFile => 'Simpan file';

  @override
  String get saveFileToFolder => 'Simpan file ke folder ini';

  @override
  String get search => 'Cari';

  @override
  String get searchForAChat => 'Cari chat';

  @override
  String get security => 'Keamanan';

  @override
  String get securityKey => 'Kunci keamanan';

  @override
  String get securityKeyLost => 'Kunci keamanan hilang?';

  @override
  String seenByUser(Object username) {
    return 'Dilihat oleh $username';
  }

  @override
  String seenByUserAndCountOthers(Object username, num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dilihat oleh $username dan $count lainnya',
    );
  }

  @override
  String seenByUserAndUser(Object username, Object username2) {
    return 'Dilihat oleh $username dan $username2';
  }

  @override
  String get send => 'Kirim';

  @override
  String get sendAMessage => 'Kirim pesan';

  @override
  String get sendAsText => 'Kirim sebagai teks';

  @override
  String get sendAudio => 'Kirim suara';

  @override
  String get sendBugReports => 'Izinkan mengirim laporan bug dengan sentry.io';

  @override
  String get sendFile => 'Kirim file';

  @override
  String get sendImage => 'Kirim gambar';

  @override
  String get sendMessages => 'Kirim pesan';

  @override
  String get sendOriginal => 'Kirim yang asli';

  @override
  String get sendSticker => 'Kirim stiker';

  @override
  String get sendVideo => 'Kirim video';

  @override
  String sentAFile(Object username) {
    return '$username mengirim file';
  }

  @override
  String sentAnAudio(Object username) {
    return '$username mengirim suara';
  }

  @override
  String sentAPicture(Object username) {
    return '$username mengirim gambar';
  }

  @override
  String sentASticker(Object username) {
    return '$username mengirim stiker';
  }

  @override
  String sentAVideo(Object username) {
    return '$username mengirim video';
  }

  @override
  String sentCallInformations(Object senderName) {
    return '$senderName mengirim informasi panggilan';
  }

  @override
  String get sentryInfo => 'Informasi tentang privasimu: https://sentry.io/security/';

  @override
  String get sessionVerified => 'Sesi telah diverifikasi';

  @override
  String get separateChatTypes => 'Pisahkan Pesan Langsung, Grup, dan Class';

  @override
  String get setAProfilePicture => 'Tetapkan gambar profil';

  @override
  String get setAsCanonicalAlias => 'Atur sebagai alias utama';

  @override
  String get setCustomEmotes => 'Tetapkan emote kustom';

  @override
  String get setGroupDescription => 'Tetapkan deskripsi grup';

  @override
  String get setInvitationLink => 'Tetapkan tautan undangan';

  @override
  String get setPermissionsLevel => 'Tetapkan level izin';

  @override
  String get setStatus => 'Tetapkan status';

  @override
  String get settings => 'Pengaturan';

  @override
  String get share => 'Bagikan';

  @override
  String sharedTheLocation(Object username) {
    return '$username membagikan lokasinya';
  }

  @override
  String get shareLocation => 'Bagikan lokasi';

  @override
  String get showDirectChatsInSpaces => 'Tampilkan Pesan Langsung yang berkait di Class';

  @override
  String get showPassword => 'Tampilkan kata sandi';

  @override
  String get signUp => 'Daftar';

  @override
  String get singlesignon => 'Login Masuk Tunggal';

  @override
  String get skip => 'Lewat';

  @override
  String get soundVibrationLedColor => 'Suara, getaran warna LED';

  @override
  String get sourceCode => 'Kode sumber';

  @override
  String get spaceIsPublic => 'Class publik';

  @override
  String get spaceName => 'Nama class';

  @override
  String startedACall(Object senderName) {
    return '$senderName memulai panggilan';
  }

  @override
  String get startYourFirstChat => 'Mulai chat pertamamu sekarang juga! 🙂\n- Ketuk \'Chat baru\'\n- Pindai kode QR temanmu\n- Selamat bersenang-senang chattingan';

  @override
  String get status => 'Status';

  @override
  String get statusExampleMessage => 'Apa kabar hari ini?';

  @override
  String get submit => 'Kirim';

  @override
  String get sunday => 'Minggu';

  @override
  String get synchronizingPleaseWait => 'Menyinkronkan... Mohon tunggu.';

  @override
  String get systemTheme => 'Sistem';

  @override
  String get tapOnDeviceToVerify => 'Ketuk perangkat untuk memverifikasi';

  @override
  String get tapToShowImage => 'Ketuk untuk menampilkan gambar';

  @override
  String get tapToShowMenu => 'Ketuk untuk menampilkan menu';

  @override
  String get theyDontMatch => 'Tidak Cocok';

  @override
  String get theyMatch => 'Cocok';

  @override
  String get thisRoomHasBeenArchived => 'Ruangan ini telah diarsipkan.';

  @override
  String get thursday => 'Kamis';

  @override
  String timeOfDay(Object hours12, Object hours24, Object minutes, Object suffix) {
    return '$hours12.$minutes $suffix';
  }

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Beralih Favorit';

  @override
  String get toggleMuted => 'Beralih Bisuan';

  @override
  String get toggleUnread => 'Tandai Baca/Belum Dibaca';

  @override
  String get tooManyRequestsWarning => 'Terlalu banyak permintaan. Coba lagi nanti!';

  @override
  String get transferFromAnotherDevice => 'Transfer dari perangkat lain';

  @override
  String get tryToSendAgain => 'Coba kirim lagi';

  @override
  String get tuesday => 'Selasa';

  @override
  String get unavailable => 'Tidak tersedia';

  @override
  String unbannedUser(Object username, Object targetName) {
    return '$username menghilangkan cekalan $targetName';
  }

  @override
  String get unblockDevice => 'Hilangkan Pemblokiran Perangkat';

  @override
  String get unknownDevice => 'Perangkat tidak dikenal';

  @override
  String get unknownEncryptionAlgorithm => 'Algoritma enkripsi tidak dikenal';

  @override
  String unknownEvent(Object type) {
    return 'Peristiwa tidak dikenal \'$type\'';
  }

  @override
  String get unknownSessionVerify => 'Sesi tidak dikenal, mohon verifikasi';

  @override
  String get unlockChatBackup => 'Buka cadangan chat';

  @override
  String get unmuteChat => 'Bunyikan chat';

  @override
  String get unpin => 'Lepaskan pin';

  @override
  String unreadChats(num unreadCount) {
    return intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      one: '1 chat belum dibaca',
      other: '$unreadCount chat belum dibaca',
    );
  }

  @override
  String unreadMessages(num unreadEvents) {
    return intl.Intl.pluralLogic(
      unreadEvents,
      locale: localeName,
      one: '1 pesan belum dibaca',
      other: '$unreadEvents pesan belum dibaca',
    );
  }

  @override
  String get useAmoledTheme => 'Gunakan warna yang kompatibel dengan AMOLED?';

  @override
  String userAndOthersAreTyping(Object username, Object count) {
    return '$username dan $count lainnya sedang mengetik…';
  }

  @override
  String userAndUserAreTyping(Object username, Object username2) {
    return '$username dan $username2 sedang mengetik…';
  }

  @override
  String userIsTyping(Object username) {
    return '$username sedang mengetik…';
  }

  @override
  String userLeftTheChat(Object username) {
    return '$username keluar dari chat';
  }

  @override
  String get username => 'Nama Pengguna';

  @override
  String get userNotVerified => 'Pengguna tidak diverifikasi';

  @override
  String userSentUnknownEvent(Object username, Object type) {
    return '$username mengirim peristiwa $type';
  }

  @override
  String get userUnknownVerification => 'Pengguna memiliki status verifikasi yang tidak dikenal';

  @override
  String get userVerified => 'Pengguna terverifikasi';

  @override
  String get unverified => 'Tidak terverifikasi';

  @override
  String get verified => 'Terverifikasi';

  @override
  String get verifiedSession => 'Berhasil memverifikasi sesi!';

  @override
  String get verify => 'Verifikasi';

  @override
  String get verifyManual => 'Verifikasi Secara Manual';

  @override
  String get verifyStart => 'Mulai Verifikasi';

  @override
  String get verifySuccess => 'Kamu berhasil memverifikasi!';

  @override
  String get verifyTitle => 'Memverifikasi akun lain';

  @override
  String get verifyUser => 'Verifikasi Pengguna';

  @override
  String get videoCall => 'Panggilan video';

  @override
  String get visibilityOfTheChatHistory => 'Visibilitas sejarah chat';

  @override
  String get visibleForAllParticipants => 'Terlihat untuk semua anggota';

  @override
  String get visibleForEveryone => 'Terlihat untuk semua orang';

  @override
  String get voiceMessage => 'Pesan suara';

  @override
  String get waitingPartnerAcceptRequest => 'Menunggu pengguna untuk menerima permintaan…';

  @override
  String get waitingPartnerEmoji => 'Menunggu pengguna untuk menerima emoji…';

  @override
  String get waitingPartnerNumbers => 'Menunggu pengguna untuk menerima angka…';

  @override
  String get wallpaper => 'Latar belakang';

  @override
  String get warning => 'Peringatan!';

  @override
  String get warningEncryptionInBeta => 'Enkripsi ujung-ke-ujung saat ini masih dalam beta! Gunakan dengan risikomu sendiri!';

  @override
  String get wednesday => 'Rabu';

  @override
  String get welcomeText => 'Selamat datang ke perpesanan instan yang paling lucu di jaringan Matrix.';

  @override
  String get weSentYouAnEmail => 'Kami mengirim kamu sebuah email';

  @override
  String get whoCanPerformWhichAction => 'Siapa yang dapat melakukan tindakan apa';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Siapa yang dapat bergabung ke grup ini';

  @override
  String get whyDoYouWantToReportThis => 'Kenapa kamu ingin melaporkannya?';

  @override
  String get wipeChatBackup => 'Hapus cadangan chat untuk membuat kunci keamanan baru?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Dengan alamat ini kamu bisa memulihkan kata sandimu.';

  @override
  String get writeAMessage => 'Tulis pesan…';

  @override
  String get yes => 'Ya';

  @override
  String get you => 'Kamu';

  @override
  String get youAreInvitedToThisChat => 'Kamu diundang ke chat ini';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Kamu tidak berpartisipasi lagi di chat ini';

  @override
  String get youCannotInviteYourself => 'Kamu tidak bisa mengundang kamu sendiri';

  @override
  String get youHaveBeenBannedFromThisChat => 'Kamu telah dicekal dari chat ini';

  @override
  String get yourChatsAreBeingSynced => 'Chatmu sedang disinkronasikan…';

  @override
  String get yourOwnUsername => 'Nama penggunamu sendiri';

  @override
  String get yourPublicKey => 'Kunci publikmu';

  @override
  String youWillBeConnectedTo(Object homeserver) {
    return 'Kamu akan dihubungkan ke $homeserver';
  }

  @override
  String get zoomIn => 'Perbesar';

  @override
  String get zoomOut => 'Perkecil';

  @override
  String get messageInfo => 'Informasi pesan';

  @override
  String get time => 'Waktu';

  @override
  String get messageType => 'Tipe Pesan';

  @override
  String get sender => 'Pengirim';

  @override
  String get openGallery => 'Buka galeri';

  @override
  String get removeFromSpace => 'Hilangkan dari class';

  @override
  String get removeFromSpaceDescription => 'Ini akan menghilangkan chat ini dari class saat ini. Ini juga masih ada di \"Semua chat\".';

  @override
  String get addToSpaceDescription => 'Pilih sebuah class untuk menambahkan chat ke spacenya.';

  @override
  String get start => 'Mulai';

  @override
  String get setupChatBackupNow => 'Mulai menyiapkan cadangan chatmu';

  @override
  String get pleaseEnterSecurityKeyDescription => 'Untuk mengakses cadangan chatmu, mohon masukkan kunci keamanan kamu yang telah dibuat di sesi sebelumnya. Kunci keamananmu BUKAN kata sandimu.';

  @override
  String get saveTheSecurityKeyNow => 'Simpan kunci keamanannya';

  @override
  String get addToStory => 'Tambahkan ke cerita';

  @override
  String get publish => 'Publikasi';

  @override
  String get whoCanSeeMyStories => 'Siapa saja yang dapat melihat cerita saya?';

  @override
  String get unsubscribeStories => 'Batalkan langganan cerita';

  @override
  String get thisUserHasNotPostedAnythingYet => 'Pengguna ini belum memposting apa pun di cerita mereka';

  @override
  String get yourStory => 'Ceritamu';

  @override
  String get replyHasBeenSent => 'Balasan telah dikirim';

  @override
  String videoWithSize(Object size) {
    return 'Video ($size)';
  }

  @override
  String storyFrom(Object date, Object body) {
    return 'Cerita dari $date:\n${body}';
  }

  @override
  String get whoCanSeeMyStoriesDesc => 'Diingat bahwa orang-orang dapat melihat dan kontak sesama di ceritamu.';

  @override
  String get whatIsGoingOn => 'Apa yang sedang terjadi?';

  @override
  String get addDescription => 'Tambahkan deskripsi';

  @override
  String get storyPrivacyWarning => 'Diingat bahwa orang-orang dapat melihat dan kontak satu bersama di ceritamu. Ceritamu akan terlihat selama 24 jam tetapi tidak ada jaminan bahwa itu akan dihapus oleh semua perangkat dan server.';

  @override
  String get iUnderstand => 'Saya mengerti';

  @override
  String get openChat => 'Buka Chat';

  @override
  String get markAsRead => 'Tandai sebagai dibaca';

  @override
  String get reportUser => 'Laporkan pengguna';

  @override
  String get dismiss => 'Abaikan';

  @override
  String get matrixWidgets => 'Widget Matrix';

  @override
  String get integrationsNotImplemented => 'Mengedit widget dan integrasi belum dapat dilakukan.';

  @override
  String get editIntegrations => 'Edit widget dan integrasi';

  @override
  String reactedWith(Object sender, Object reaction) {
    return '$sender bereaksi dengan $reaction';
  }

  @override
  String get pinMessage => 'Sematkan ke ruangan';

  @override
  String get pinnedEventsError => 'Terjadi kesalahan memuat pesan-pesan yang disematkan';

  @override
  String get confirmEventUnpin => 'Apakah kamu yakin untuk melepaskan pin peristiwa ini secara permanen?';

  @override
  String get emojis => 'Emoji';

  @override
  String get placeCall => 'Lakukan panggilan';

  @override
  String get voiceCall => 'Panggilan suara';

  @override
  String get unsupportedAndroidVersion => 'Versi Android tidak didukung';

  @override
  String get unsupportedAndroidVersionLong => 'Fitur ini memerlukan versi Android yang baru. Mohon periksa untuk pembaruan atau dukungan LineageOS.';

  @override
  String get videoCallsBetaWarning => 'Dicatat bahwa panggilan video sedang dalam beta. Fitur ini mungkin tidak berkerja dengan benar atau tidak berkerja sama sekali pada semua platform.';

  @override
  String get experimentalVideoCalls => 'Panggilan video eksperimental';

  @override
  String get emailOrUsername => 'Email atau nama pengguna';

  @override
  String switchToAccount(Object number) {
    return 'Ganti ke akun $number';
  }

  @override
  String get nextAccount => 'Akun berikutnya';

  @override
  String get previousAccount => 'Akun sebelumnya';

  @override
  String get editWidgets => 'Edit widget';

  @override
  String get addWidget => 'Tambahkan widget';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Catatan teks';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Kustom';

  @override
  String get widgetName => 'Nama';

  @override
  String get widgetUrlError => 'Ini bukan URL yang valid.';

  @override
  String get widgetNameError => 'Mohon sediakan sebuah nama tampilan.';

  @override
  String get errorAddingWidget => 'Terjadi kesalahan menambahkan widget.';

  @override
  String get youRejectedTheInvitation => 'Kamu menolak undangannya';

  @override
  String get youJoinedTheChat => 'Kamu bergabung ke obrolan';

  @override
  String get youAcceptedTheInvitation => 'Kamu menerima undangannya';

  @override
  String youBannedUser(Object user) {
    return 'Kamu mencekal $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(Object user) {
    return 'Kamu telah membatalkan undangan untuk $user';
  }

  @override
  String youInvitedBy(Object user) {
    return 'Kamu telah diundang oleh $user';
  }

  @override
  String youInvitedUser(Object user) {
    return 'Kamu mengundang $user';
  }

  @override
  String youKicked(Object user) {
    return 'Kamu mengeluarkan $user';
  }

  @override
  String youKickedAndBanned(Object user) {
    return 'Kamu mengeluarkan dan mencekal $user';
  }

  @override
  String youUnbannedUser(Object user) {
    return 'Kamu membatalkan cekalan $user';
  }

  @override
  String get noEmailWarning => 'Mohon tambahkan sebuah alamat email. Atau kamu tidak akan dapat mengatur ulang kata sandimu. Jika kamu tidak ingin, ketuk lagi untuk melanjitkan.';
}
