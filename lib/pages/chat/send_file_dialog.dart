import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:matrix/matrix.dart';

import '../../utils/matrix_sdk_extensions.dart/matrix_file_extension.dart';
import '../../utils/resize_image.dart';

class SendFileDialog extends StatefulWidget {
  final Room room;
  final MatrixFile file;

  const SendFileDialog({
    required this.room,
    required this.file,
    Key? key,
  }) : super(key: key);

  @override
  _SendFileDialogState createState() => _SendFileDialogState();
}

class _SendFileDialogState extends State<SendFileDialog> {
  bool origImage = false;

  /// Images smaller than 20kb don't need compression.
  static const int minSizeToCompress = 20 * 1024;

  Future<void> _send() async {
    var file = widget.file;
    MatrixImageFile? thumbnail;
    if (file is MatrixVideoFile && file.bytes.length > minSizeToCompress) {
      await showFutureLoadingDialog(
          context: context,
          future: () async {
            file = await file.resizeVideo();
            thumbnail = await file.getVideoThumbnail();
          });
    }
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    widget.room
        .sendFileEvent(
      file,
      thumbnail: thumbnail,
      shrinkImageMaxDimension: origImage ? null : 1600,
    )
        .catchError((e) {
      scaffoldMessenger.showSnackBar(
        SnackBar(content: Text(e.toLocalizedString())),
      );
    });

    Navigator.of(context, rootNavigator: false).pop();
    return;
  }

  @override
  Widget build(BuildContext context) {
    var sendStr = L10n.of(context)!.sendFile;
    if (widget.file is MatrixImageFile) {
      sendStr = L10n.of(context)!.sendImage;
    } else if (widget.file is MatrixAudioFile) {
      sendStr = L10n.of(context)!.sendAudio;
    } else if (widget.file is MatrixVideoFile) {
      sendStr = L10n.of(context)!.sendVideo;
    }
    Widget contentWidget;
    if (widget.file is MatrixImageFile) {
      contentWidget = Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Flexible(
          child: Image.memory(
            widget.file.bytes,
            fit: BoxFit.contain,
          ),
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: origImage,
              onChanged: (v) => setState(() => origImage = v ?? false),
            ),
            InkWell(
              onTap: () => setState(() => origImage = !origImage),
              child: Text(L10n.of(context)!.sendOriginal +
                  ' (${widget.file.sizeString})'),
            ),
          ],
        )
      ]);
    } else {
      contentWidget = Text('${widget.file.name} (${widget.file.sizeString})');
    }
    return AlertDialog(
      title: Text(sendStr),
      content: contentWidget,
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // just close the dialog
            Navigator.of(context, rootNavigator: false).pop();
          },
          child: Text(L10n.of(context)!.cancel),
        ),
        TextButton(
          onPressed: _send,
          child: Text(L10n.of(context)!.send),
        ),
      ],
    );
  }
}
