import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

void rmvFocus() => FocusManager.instance.primaryFocus?.unfocus();

Future<void> copyClipboard(String data) async {
  try {
    Clipboard.setData(ClipboardData(text: data));

    ScaffoldUtilities.instance.key.currentState?.showSnackBar(
      const SnackBar(content: Text("Copied!")),
    );
  } catch (e, s) {
    log("#CopyClipboardError", error: e, stackTrace: s);
  }
}
