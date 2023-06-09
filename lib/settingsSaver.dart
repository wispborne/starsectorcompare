import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ktx/collections.dart';
import 'package:path/path.dart' as path;
import 'package:starsectorcompare/loading/jsonDataLoader.dart';
import 'package:starsectorcompare/models/Weapon.dart';
import 'package:starsectorcompare/models/gameData.dart';
import 'package:starsectorcompare/models/ship.dart';

import '../appState.dart';
import 'loading/csvDataLoader.dart';
import 'views/main.dart';
import 'models/settings.dart';
import 'models/shipJson.dart';
import 'models/weaponJson.dart';

var settingsFile = File("starcompare.json");

class SettingSaver extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    if (provider == appSettings) {
      var settings = newValue as Settings;

      if (newValue == previousValue) {
        Fimber.d("No settings change: $settings");
        return;
      }

      Fimber.d("Updated settings: $settings");

      settingsFile.writeAsString(jsonEncode(settings.toJson()).toString());

      if (settings.gameDir == null) {
        return;
      }

      var gameDir = settings.gameDir!;

      try {
        compute(loadData, gameDir).then((result) {
          Map<String?, Map<String, Ship>> mergedShips = {};

          // Add all csv ships to the merged map.
          result.shipsInCsvByHullIdByModId.forEach((modFolder, shipsById) {
            mergedShips[modFolder] = (mergedShips[modFolder] ?? {})
              ..addAll(shipsById.map((key, value) => MapEntry(key,
                  Ship(id: key, shipCsv: value, shipJson: const ShipJson()))));
          });

          // Add all json ships to the existing csv entries.
          result.shipsInJsonByHullIIdByModId.forEach((modFolder, shipsById) {
            var currentShipsForMod = mergedShips[modFolder];
            if (currentShipsForMod == null) return;

            shipsById.forEach((key, value) {
              var currentShip = currentShipsForMod[key];
              if (currentShip == null) return;

              mergedShips[modFolder]![key] = currentShip..shipJson = value;
            });
          });

          container
              .read(AppState.shipsByHullIdByModId.notifier)
              .update((state) => mergedShips);

          Map<String?, Map<String, Weapon>> mergedWeapons = {};

          // Add all csv weapons to the merged map.
          result.weaponsInCsvByIdByModId.forEach((modFolder, weaponsById) {
            mergedWeapons[modFolder] = (mergedWeapons[modFolder] ?? {})
              ..addAll(weaponsById.map((key, value) => MapEntry(
                  key,
                  Weapon(
                      id: key, weaponCsv: value, weaponJson: WeaponJson()))));
          });

          // Add all json weapons to the existing csv entries.
          result.weaponsInJsonByIdByModId.forEach((modFolder, weaponsById) {
            var currentWeaponsForMod = mergedWeapons[modFolder];
            if (currentWeaponsForMod == null) return;

            weaponsById.forEach((key, value) {
              var currentWeapon = currentWeaponsForMod[key];
              if (currentWeapon == null) return;

              mergedWeapons[modFolder]![key] = currentWeapon
                ..weaponJson = value;
            });
          });

          container
              .read(AppState.weaponsByIdByModId.notifier)
              .update((state) => mergedWeapons);
        });
      } catch (e, s) {
        Fimber.e("Error loading data", ex: e, stacktrace: s);
      }
    }
  }
}

Future<GameData> loadData(String gameDir) async {
  configureLogging();
  Fimber.i("Loading vanilla and mod data from '$gameDir'.");
  var startTime = DateTime.now();
  var gameData = GameData(
      shipsInCsvByHullIdByModId: {},
      weaponsInCsvByIdByModId: {},
      shipsInJsonByHullIIdByModId: {},
      weaponsInJsonByIdByModId: {});

// Add null to the list of mod folders to load vanilla data
  List<String?> modFolderNames = [null, ...getModFolderNames(gameDir)];

  var futures = <Future>[];

  for (var modFolderName in modFolderNames) {
    futures.add(CsvDataLoader.loadWeapons(gameDir, modFolderName).then((value) {
      if (value != null && value.isNotEmpty) {
        gameData.weaponsInCsvByIdByModId[modFolderName] = value;
      }
    }));
    futures.add(CsvDataLoader.loadShips(gameDir, modFolderName).then((value) {
      if (value != null && value.isNotEmpty) {
        gameData.shipsInCsvByHullIdByModId[modFolderName] = value;
      }
    }));
    futures.add(loadJsonShipData(gameDir, modFolderName).then((value) {
      if (value.isNotEmpty) {
        gameData.shipsInJsonByHullIIdByModId[modFolderName] = value;
      }
    }));
    futures.add(loadJsonWeaponData(gameDir, modFolderName).then((value) {
      if (value.isNotEmpty) {
        gameData.weaponsInJsonByIdByModId[modFolderName] = value;
      }
    }));
  }

  // var shipsCount = shipsByMod.map((key, value) => MapEntry(key, value.length);

  await Future.wait(futures);
  Fimber.i(
      "Loading data complete, ${gameData.weaponsInCsvByIdByModId.values.sumBy((modItems) => modItems.length)} weapons "
      "& ${gameData.shipsInCsvByHullIdByModId.values.sumBy((modItems) => modItems.length)} ships "
      "from ${{
    ...gameData.weaponsInCsvByIdByModId.keys,
    ...gameData.shipsInCsvByHullIdByModId.keys
  }.length} mods "
      "in ${DateTime.now().difference(startTime).inMilliseconds}ms.");

  return gameData;
}

List<String> getModFolderNames(String gameDir) {
  var modsDir = "$gameDir/mods";
  return Directory(modsDir)
      .listSync()
      .whereType<Directory>()
      .map((e) => path.split(e.path).last)
      .toList();
}
