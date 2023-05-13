import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:fimber/fimber.dart';
import 'package:ktx/collections.dart';
import 'package:path/path.dart' as p;
import 'package:starsectorcompare/models/ship.dart';
import 'package:starsectorcompare/utils.dart';

import 'models/weapon.dart';

class CsvDataLoader {
  static Future<Map<String, Weapon>?> loadWeapons(
      String gameDir, String? modDirName) async {
    if (gameDir == null) return null;

    // If modDirName is null, use vanilla
    var file = File(p.join(
        gameDir,
        modDirName?.let((it) => "mods/$it") ?? gameFilesPath(Directory(gameDir))?.path,
        "data/weapons/weapon_data.csv"));
    Fimber.d("Loading '${file.path}'.");

    if (!file.existsSync()) {
      if (modDirName == null) {
        Fimber.w("File doesn't exist: '$file'.");
      } else {
        Fimber.d("File doesn't exist: '$file'.");
      }
      return null;
    }

    List<List> csv;
    try {
      csv = await file
          .openRead()
          .transform(utf8.decoder)
          .transform(const CsvToListConverter(
              shouldParseNumbers:
                  false)) // Just treat everything as string until needed.
          .toList();
    } catch (e) {
      Fimber.w("Error loading '$file'.", ex: e);
      return null;
    }

    var weapons = Weapon.fromCsv(csv);
    Fimber.i("Loaded '${file.path}'.");
    Fimber.d("'$modDirName' weapons: ${weapons.length.toString()}");
    return weapons.associateBy((weapon) => weapon.id);
  }

  static Future<Map<String, Ship>?> loadShips(
      String gameDir, String? modDirName) async {
    if (gameDir == null) return null;
    // If modDirName is null, use vanilla
    var file = File(p.join(
        gameDir,
        modDirName?.let((it) => "mods/$it") ?? gameFilesPath(Directory(gameDir))?.path,
        "data/hulls/ship_data.csv"));
    Fimber.d("Loading '${file.path}'.");

    if (!file.existsSync()) {
      if (modDirName == null) {
        Fimber.w("File doesn't exist: '$file'.");
      } else {
        Fimber.d("File doesn't exist: '$file'.");
      }
      return null;
    }

    List<List> csv;
    try {
      csv = await file
          .openRead()
          .transform(utf8.decoder)
          .transform(const CsvToListConverter(
              shouldParseNumbers:
                  false)) // Just treat everything as string until needed.
          .toList();
    } catch (e) {
      Fimber.w("Error loading '$file'.", ex: e);
      return null;
    }

    var ships = Ship.fromCsv(csv);
    Fimber.i("Loaded '${file.path}'.");
    Fimber.d("'$modDirName' ships: ${ships.length.toString()}");
    return ships.associateBy((ship) => ship.id);
  }
}
