import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShortcutBindings {
  static getShortcuts(WidgetRef ref) {
    return Map.fromEntries([openDataShortcut(ref)].map((e) => MapEntry(e.key, e.action)));
  }

  static Shortcut openDataShortcut(WidgetRef ref) {
    return Shortcut(const SingleActivator(LogicalKeyboardKey.keyO, control: true), () => {});
  }
}

class Shortcut {
  final SingleActivator key;
  final Function() action;

  const Shortcut(this.key, this.action);
}

// class WaseShortcuts {
//   static Map<LogicalKeySet, OpenDataIntent> getShortcuts() {
//     return {LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyO): const OpenDataIntent()};
//   }
// }
//
// class OpenDataIntent extends Intent {
//   const OpenDataIntent();
// }
//
// class OpenDataAction extends Action<OpenDataIntent> {
//   @override
//   Object? invoke(OpenDataIntent intent) {
//     FilePickerResult? files = FilePicker.platform.pickFiles(
//       dialogTitle: "Choose file",
//
//       // initialDirectory: "C:\\Program Files (x86)\\Fractal Softworks\\Starsector\\mods",
//     );
//
//     print(files?.files);
//     return null;
//   }
// }
