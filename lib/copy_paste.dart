import 'package:flutter/services.dart';

class CopyPaste {
  static const MethodChannel _channel = MethodChannel('copy_paste');

  static copyToClipboard(String text) async {
    Clipboard.setData(
      ClipboardData(
        text: text,
      ),
    );
  }
}
