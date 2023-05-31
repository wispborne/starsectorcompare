import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ktx/collections.dart';
import 'package:path/path.dart' as path;
import 'package:starsectorcompare/loading/loadVanilla.dart';
import 'package:starsectorcompare/models/shipCsv.dart';
import 'package:starsectorcompare/models/weaponCsv.dart';

import '../appState.dart';
import 'loading/csvDataLoader.dart';
import '../main.dart';
import 'models/settings.dart';

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
          var weaponsByMod = result["weaponsByMod"];
          var shipsByMod = result["shipsByMod"];

          container
              .read(AppState.weaponsInCsvByIdByModId.notifier)
              .update((state) => weaponsByMod);

          container
              .read(AppState.shipsInCsvByHullIdByModId.notifier)
              .update((state) => shipsByMod);

          container.read(AppState.shipsInJsonByHullIIdByModId.notifier)
          .update((state) => result["jsonShipsByIdByMod"]);

          container.read(AppState.weaponsById.notifier)
              .update((state) => result["wepsById"] ?? {});
        });
      } catch (e, s) {
        Fimber.e("Error loading data", ex: e, stacktrace: s);
      }
    }
  }
}

Future<Map<String, dynamic>> loadData(String gameDir) async {
  configureLogging();
  Fimber.i("Loading vanilla and mod data from '$gameDir'.");
  var startTime = DateTime.now();
  // var gameDir = settings.gameDir; // context.get<String?>('gameDir');
  var weaponsByMod = <String?, Map<String, WeaponCsv>>{};
  var shipsByMod = <String?, Map<String, ShipCsv>>{};
  var jsonShipsAndWepsByMod = <String?, Map<String, dynamic>>{};

// Add null to the list of mod folders to load vanilla data
  List<String?> modFolderNames = [null, ...getModFolderNames(gameDir)];

  var futures = <Future>[];

  for (var modFolderName in modFolderNames) {
    futures.add(CsvDataLoader.loadWeapons(gameDir, modFolderName).then((value) {
      if (value != null && value.isNotEmpty) {
        weaponsByMod[modFolderName] = value;
      }
    }));
    futures.add(CsvDataLoader.loadShips(gameDir, modFolderName).then((value) {
      if (value != null && value.isNotEmpty) {
        shipsByMod[modFolderName] = value;
      }
    }));
    futures.add(loadGameData(gameDir, modFolderName).then((value) {
      if (value != null && value.isNotEmpty) {
        jsonShipsAndWepsByMod[modFolderName] = value;
      }
    }));
  }

  // var shipsCount = shipsByMod.map((key, value) => MapEntry(key, value.length);

  await Future.wait(futures);
  Fimber.i(
      "Loading data complete, ${weaponsByMod.values.sumBy((modItems) => modItems.length)} weapons "
      "& ${shipsByMod.values.sumBy((modItems) => modItems.length)} ships "
      "from ${{...weaponsByMod.keys, ...shipsByMod.keys}.length} mods "
      "in ${DateTime.now().difference(startTime).inMilliseconds}ms.");

  return {
    "weaponsByMod": weaponsByMod,
    "shipsByMod": shipsByMod,
    "jsonShipsByIdByMod" : shipsAndWeps["jsonShipsByIdByMod"],
    "weaponsById" : shipsAndWeps["wepsById"],
  };
}

List<String> getModFolderNames(String gameDir) {
  var modsDir = "$gameDir/mods";
  return Directory(modsDir)
      .listSync()
      .whereType<Directory>()
      .map((e) => path.split(e.path).last)
      .toList();
}
