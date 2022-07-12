import 'dart:io';

import 'package:flutter/material.dart';

import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:matrix/matrix.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import 'package:pangeachat/utils/platform_infos.dart';

extension MatrixFileExtension on MatrixFile {
  void save(BuildContext context) async {
    if (PlatformInfos.isIOS) {
      return share(context);
    }
    final fileName = name.split('/').last;

    final file = FilePickerCross(bytes);
    await file.exportToStorage(fileName: fileName, share: false);
  }

  void share(BuildContext context) async {
    final fileName = name.split('/').last;
    final tmpDirectory = await getTemporaryDirectory();
    final path = '${tmpDirectory.path}$fileName';
    await File(path).writeAsBytes(bytes);
    await Share.shareFiles([path]);
    return;
  }

  MatrixFile get detectFileType {
    if (msgType == MessageTypes.Image) {
      return MatrixImageFile(bytes: bytes, name: name);
    }
    if (msgType == MessageTypes.Video) {
      return MatrixVideoFile(bytes: bytes, name: name);
    }
    if (msgType == MessageTypes.Audio) {
      return MatrixAudioFile(bytes: bytes, name: name);
    }
    return this;
  }

  String get sizeString {
    var size = this.size.toDouble();
    if (size < 1000000) {
      size = size / 1000;
      size = (size * 10).round() / 10;
      return '${size.toString()} KB';
    } else if (size < 1000000000) {
      size = size / 1000000;
      size = (size * 10).round() / 10;
      return '${size.toString()} MB';
    } else {
      size = size / 1000000000;
      size = (size * 10).round() / 10;
      return '${size.toString()} GB';
    }
  }
}
