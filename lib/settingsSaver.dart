import 'dart:convert';
import 'dart:io';

import 'package:StarCompare/utils.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ktx/collections.dart';
import 'package:ktx/ktx.dart';
import 'package:path/path.dart' as path;

import '../appState.dart';
import '../loading/jsonDataLoader.dart';
import 'json_parser/relaxed-json.dart';
import 'loading/csvDataLoader.dart';
import 'main.dart';
import 'models/ModInfo.dart';
import 'models/ModInfoJson.dart';
import 'models/Weapon.dart';
import 'models/gameData.dart';
import 'models/settings.dart';
import 'models/ship.dart';
import 'models/shipJson.dart';
import 'models/weaponJson.dart';

var settingsFile = File("starcompare.json");

class SettingSaver extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue, Object? newValue, ProviderContainer container) {
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
        container.read(AppState.isPerformingInitialLoad.notifier).update((state) => true);
        compute(loadData, gameDir).then((result) {
          Map<String, Ship> mergedShips = {};
          var modInfoByModId = result.modInfoByModId;

          // Add all csv ships to the merged map.
          result.shipsInCsvByHullIdByModId.forEach((modFolder, shipsById) {
            var modInfo = modInfoByModId.values.firstWhereOrNull((element) => element.folderName == modFolder);

            shipsById.forEach((key, value) {
              mergedShips[key] =
                  Ship(id: key,
                      shipCsv: value,
                      shipJson: const ShipJson(),
                      modId: modInfo?.json.id,
                      modName: modInfo?.json.name,);
            });
          });

          // Add all json ships to the existing csv entries.
          result.shipsInJsonByHullIIdByModId.forEach((modFolder, shipsById) {
            shipsById.forEach((key, value) {
              var currentShip = mergedShips[key];
              if (currentShip == null) return;

              mergedShips[key] = currentShip..shipJson = value;
            });
          });

          container.read(AppState.shipsByHullId.notifier).update((state) => mergedShips);

          Map<String, Weapon> mergedWeapons = {};

          // Add all csv weapons to the merged map.
          result.weaponsInCsvByIdByModId.forEach((modFolder, weaponsById) {
            weaponsById.forEach((key, value) {
              mergedWeapons[key] = Weapon(id: key, weaponCsv: value, weaponJson: WeaponJson(), modId: modFolder);
            });
          });

          // Add all json weapons to the existing csv entries.
          result.weaponsInJsonByIdByModId.forEach((modFolder, weaponsById) {
            weaponsById.forEach((key, value) {
              var currentWeapon = mergedWeapons[key];
              if (currentWeapon == null) return;

              mergedWeapons[key] = currentWeapon..weaponJson = value;
            });
          });

          container.read(AppState.weaponsById.notifier).update((state) => mergedWeapons);
        });
      } catch (e, s) {
        Fimber.e("Error loading data", ex: e, stacktrace: s);
      } finally {
        container.read(AppState.isPerformingInitialLoad.notifier).update((state) => false);
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
      weaponsInJsonByIdByModId: {},
      modInfoByModId: {});

// Add null to the list of mod folders to load vanilla data
  List<String?> modFolderNames = [null, ...getModFolderNames(gameDir)];

  var futures = <Future>[];

  for (var modFolderName in modFolderNames) {
    if (modFolderName.isNotNullOrEmpty()) {
      futures.add(loadModInfo(gameDir, modFolderName!).then((value) {
        if (value != null) {
          gameData.modInfoByModId[value.json.id] = value;
          Fimber.d("Loaded mod info for '${value.folderName}'");
        }
      }));
    }

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
          "from ${{...gameData.weaponsInCsvByIdByModId.keys, ...gameData.shipsInCsvByHullIdByModId.keys}.length} mods "
          "in ${DateTime
          .now()
          .difference(startTime)
          .inMilliseconds}ms.");

  return gameData;
}

Future<ModInfo?> loadModInfo(String gameDir, String modFolderName) async {
  var modInfoFile = File(path.join(gameDir, "mods", modFolderName, "mod_info.json"));
  try {
    Fimber.d("Loading '${modInfoFile.path}'.");
    if (!modInfoFile.existsSync()) {
      Fimber.d("File doesn't exist: '$modInfoFile'.");
      return null;
    }

    var modInfoJson = parseRjson(modInfoFile.readAsStringSync()) as Map<String, dynamic>;
    var modInfo = ModInfo(folderName: modFolderName, json: ModInfoJson.fromJson(modInfoJson));
        Fimber.i("Loaded '${modInfoFile.path}'.");
    return modInfo;
  } catch (e, s) {
    Fimber.e("Error loading mod info from file ${modInfoFile.absolute}", ex: e, stacktrace: s);
    return null;
  }
}

List<String> getModFolderNames(String gameDir) {
  var modsDir = "$gameDir/mods";
  return Directory(modsDir).listSync().whereType<Directory>().map((e) =>
  path
      .split(e.path)
      .last).toList();
}
