import 'dart:io';

import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;

import 'utils.dart';

// const gameDataPath = "/Applications/Starsector.app/Contents/Resources/Java";
const gameDataPath = "C:/Program Files (x86)/Fractal Softworks/Starsector/starsector-core";

class FileChooser {
  Future<String?> openChooseDataDialog(WidgetRef ref) async {
    File? defaultPath = File(p.join(defaultGamePath()?.path ?? ""));
    if (!defaultPath.existsSync()) {
      defaultPath = null;
    }

    Directory? dir = (await FilePicker.platform.getDirectoryPath(
      dialogTitle: Platform.isMacOS ? "Choose Applications folder" : "Choose Starsector folder",
      initialDirectory: defaultPath?.path,
    ))
        ?.let((p) => Directory(p));

    Fimber.d(dir.toString());

    if (dir == null) {
      Fimber.i("No files? No directory selected.");
      return null;
    }

    if (Platform.isMacOS) {
      if (dir.path.endsWith("Applications") == true) {
        dir = Directory(p.join(dir.path ?? "", "Starsector.app"));
      }
    }

    // if (dir?.endsWith("mods") != true) {
    //   dir = p.join(dir ?? "", "mods");
    // }
    if (dir.existsSync()) {
      Fimber.d("Chose $dir}");
    } else {
      Fimber.w("Chose $dir but it doesn't exist");
    }

    return dir.path;
  }
}

List<Directory> listModsInGameFolder(Directory gameFolder) {
  var modFolder = Directory(p.join(gameFolder.path, "mods"));
  return modFolder.listSync().map((e) => Directory(e.path)).toList();
}

Directory getCoreFolderFromGameFolder(Directory gameFolder) {
  var dir = gameFolder;

  if (Platform.isMacOS) {
    if (dir.path.endsWith("Starsector.app") == true) {
      dir = Directory(p.join(dir.path ?? "", "Contents/Resources/Java"));
    }
  } else if (Platform.isWindows) {
    if (dir.path.endsWith("starsector-core") != true) {
      dir = Directory(p.join(dir.path ?? "", "starsector-core"));
    }
  }

  return dir;
}
