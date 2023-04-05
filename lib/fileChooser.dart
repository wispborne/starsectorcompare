import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'utils.dart';

// const gameDataPath = "/Applications/Starsector.app/Contents/Resources/Java";
const gameDataPath =
    "C:/Program Files (x86)/Fractal Softworks/Starsector/starsector-core";

class FileChooser {
  Future<String?> openChooseDataDialog(WidgetRef ref) async {
    String? dir = await FilePicker.platform.getDirectoryPath(
      dialogTitle: "Choose Starsector folder",
      initialDirectory: "$defaultGamePath()\\mods",
    );

    Fimber.d(dir.toString() ?? "");

    if (dir == null) {
      Fimber.i("No files?");
    } else if (Directory(dir).existsSync()) {
      Fimber.d("Chose $dir}");
    } else {
      Fimber.w("Chose $dir but it doesn't exist");
    }

    var file = File(dir!);
    return file.path;
  }
}
