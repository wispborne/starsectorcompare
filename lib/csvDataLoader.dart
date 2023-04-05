import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:fimber/fimber.dart';
import 'package:ktx/collections.dart';
import 'package:starsectorcompare/models/ship.dart';

import 'models/weapon.dart';

class CsvDataLoader {
  static Future<Map<String, Weapon>?> loadVanillaWeapons(String? gameDir) async {
    // var state = ref.watch(appSettings);
    // Fimber.d("Game dir: ${state.gameDir}");
    if (gameDir == null) return null;
    var file = File("$gameDir/data/weapons/weapon_data.csv");

    if (!file.existsSync()) {
      Fimber.d("$file doesn't exist");
      return null;
    }

    var csv = await file
        .openRead()
        .transform(utf8.decoder)
        .transform(const CsvToListConverter(
            shouldParseNumbers:
                false)) // Just treat everything as string until needed.
        .toList();

    Fimber.d("Loaded $file: ${csv.toString()}");
    var weapons = Weapon.fromCsv(csv);
    Fimber.i("Vanilla weapons: ${weapons.toString()}");
    return weapons.associateBy((weapon) => weapon.id);
  }

  static Future<Map<String, Ship>?> loadVanillaShips(String? gameDir) async {
    // var state = ref.watch(appSettings);
    // Fimber.d("Game dir: ${state.gameDir}");
    if (gameDir == null) return null;
    var file = File("$gameDir/data/hulls/ship_data.csv");

    if (!file.existsSync()) {
      Fimber.d("$file doesn't exist");
      return null;
    }

    var csv = await file
        .openRead()
        .transform(utf8.decoder)
        .transform(const CsvToListConverter(
            shouldParseNumbers:
                false)) // Just treat everything as string until needed.
        .toList();

    Fimber.d("Loaded $file: ${csv.toString()}");
    var ships = Ship.fromCsv(csv);
    Fimber.i("Vanilla ships: ${ships.toString()}");
    return ships.associateBy((ship) => ship.id);
  }
}
