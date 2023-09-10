import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:text_search/text_search.dart';

import 'models/ship.dart';

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

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

/// https://stackoverflow.com/a/16348977/1622788
Color stringToColor(String str) {
  var hash = 0;
  for (var i = 0; i < str.length; i++) {
    hash = str.codeUnitAt(i) + ((hash << 5) - hash);
  }

  var colour = '#';

  for (var i = 0; i < 3; i++) {
    var value = (hash >> (i * 8)) & 0xFF;
    colour += (value.toRadixString(16)).padLeft(2, '0');
  }

  return HexColor.fromHex(colour);
}

// method to filter a list of ships by mod id and selected hull type
List<Ship> filterShips(
    Iterable<Ship> ships, Set<String?>? modIds, Set<String>? selectedHullTypes, Set<String>? selectedHints,
    {bool includeModules = false}) {
  return ships.where((ship) {
    if (includeModules == false && ship.shipCsv.tags?.containsIgnoreCase("MODULE") == true) return false;

    if (modIds != null && !modIds.contains(ship.modId)) return false;

    if (selectedHullTypes.isNotNullOrEmpty() && !selectedHullTypes!.contains(ship.shipJson.hullSize)) {
      return false;
    }

    if (selectedHints.isNotNullOrEmpty() &&
        selectedHints.countWhere((hint) => ship.hintsSplitUppercase().contains(hint)) == 0) {
      return false;
    }

    return true;
  }).toList();
}

///  Returns a list of ships that match the search text.
///  Note: returns results ordered by score.
List<Ship> searchShips(Iterable<Ship> ships, String searchText) {
  if (searchText.isEmpty) return ships.toList();

  if (searchText.isNotNullOrEmpty()) {
    var results = searchText
        .toLowerCase()
        .split(",")
        .map((it) => it.trim())
        .filter((it) => it.isNotNullOrEmpty())
        .map((queryPart) => TextSearch(ships
                .map(
                  (ship) => TextSearchItem(
                      ship,
                      [
                        ship.id,
                        ship.shipCsv.name,
                        ...?ship.shipCsv.tech_manufacturer?.split(' '),
                        ((ship.modName?.split("-").length ?? 0) > 0)
                            ? ship.modName!.split("-").where((element) => element.isNotEmpty).map((e) => e.substring(0, 1)).join()
                            : null,
                        ...ship.hintsSplitUppercase(),
                        ...ship.tagsSplitUppercase(),
                        ship.shipCsv.designation,
                        ship.shipJson.hullSize,
                        ship.shipJson.style
                      ].filterNotNull().map((e) => e?.trim().toLowerCase()).toList(growable: false).cast()),
                )
                .toList(growable: false))
            .search(queryPart)
            .sorted((a, b) => b.score.compareTo(a.score) * -1)
            .map((e) => e.object))
        .flattened;
    return results.toList();
    // .intersect()
    // .toList()
  }

  return [];
}
