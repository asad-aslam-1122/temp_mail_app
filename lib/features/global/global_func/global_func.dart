import 'package:flutter/services.dart';

class GlobalFunc {
  static copyText({required String copyText}) {
    ClipboardData clipboardData = ClipboardData(text: copyText);
    Clipboard.setData(clipboardData);
  }
}
