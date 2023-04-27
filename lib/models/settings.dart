import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ktx/collections.dart';
import 'package:path/path.dart' as path;
import 'package:starsectorcompare/models/ship.dart';
import 'package:starsectorcompare/models/weapon.dart';

import '../appState.dart';
import '../csvDataLoader.dart';
import '../main.dart';

part '../generated/models/settings.freezed.dart';

part '../generated/models/settings.g.dart';

final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class Settings with _$Settings {
  factory Settings({final String? gameDir, final String? modsDir}) = _Settings;

  factory Settings.fromJson(Map<String, Object?> json) =>
      _$SettingsFromJson(json);
}

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

      compute(loadData, gameDir).then((result) {
        var weaponsByMod = result["weaponsByMod"];
        var shipsByMod = result["shipsByMod"];

        container
            .read(AppState.weaponsByIdByModId.notifier)
            .update((state) => weaponsByMod);

        container
            .read(AppState.shipsByHullIdByModId.notifier)
            .update((state) => shipsByMod);
      });
    }
  }
}

List<String> getModFolderNames(String gameDir) {
  var modsDir = "$gameDir/mods";
  return Directory(modsDir)
      .listSync()
      .whereType<Directory>()
      .map((e) => path.split(e.path).last)
      .toList();
}

Future<Map<String, dynamic>> loadData(String gameDir) async {
  configureLogging();
  Fimber.i("Loading mods from '$gameDir'.");
  var startTime = DateTime.now();
  // var gameDir = settings.gameDir; // context.get<String?>('gameDir');
  var weaponsByMod = <String?, Map<String, Weapon>>{};
  var shipsByMod = <String?, Map<String, Ship>>{};

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
  };
}
