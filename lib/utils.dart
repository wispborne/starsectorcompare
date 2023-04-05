import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}

Directory? defaultGamePath() {
  if (Platform.isWindows) {
    // todo read from registry
    return Directory("C:/Program Files (x86)/Fractal Softworks/Starsector");
  } else if (Platform.isMacOS) {
    return Directory("/Applications/Starsector.app");
  } else if (kIsWeb) {
    return null; // huh
  } else {
    return null;
  }
}

Directory? gameFilesPath(Directory gamePath) {
  if (Platform.isWindows) {
    return Directory(p.join(gamePath.path, "starsector-core"));
  } else if (Platform.isMacOS) {
    return Directory(p.join(gamePath.path, "Contents/Resources/Java"));
  } else if (kIsWeb) {
    return null; // huh
  } else {
    return null;
  }
}

Directory? modFolderPath(Directory gamePath) {
  if (Platform.isWindows || Platform.isMacOS) {
    return Directory(p.join(gamePath.path, "mods"));
  } else if (kIsWeb) {
    return null; // huh
  } else {
    return null;
  }
}
