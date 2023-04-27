import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
        var weaponsByMod =
        result["weaponsByMod"] as Map<String, Map<String, Weapon>>;
        var shipsByMod = result["shipsByMod"] as Map<String, Map<String, Ship>>;
        Fimber.i("Loading mods complete, ${weaponsByMod.length} weapons & ${shipsByMod.length} ships.");

        container
            .read(AppState.vanillaWeaponsByIdByModId.notifier)
            .update((state) => state..addAll(weaponsByMod));

        container
            .read(AppState.vanillaShipsByHullIdByModId.notifier)
            .update((state) => state..addAll(shipsByMod));
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
  // var gameDir = settings.gameDir; // context.get<String?>('gameDir');
  var weaponsByMod = <String, Map<String, Weapon>>{};
  var shipsByMod = <String, Map<String, Ship>>{};

// Add null to the list of mod folders to load vanilla data
  List<String?> modFolderNames = [null, ...getModFolderNames(gameDir)];

  var futures = <Future>[];

  for (var modFolderName in modFolderNames) {
    futures.add(CsvDataLoader.loadWeapons(gameDir, modFolderName).then((value) {
      if (value != null) {
        weaponsByMod[modFolderName ?? "vanilla"] = value;
      }
    }));
    futures.add(CsvDataLoader.loadShips(gameDir, modFolderName).then((value) {
      if (value != null) {
        shipsByMod[modFolderName ?? "vanilla"] = value;
      }
    }));
  }

  await Future.wait(futures);
  Fimber.i("Done!");

  return {
    "weaponsByMod": weaponsByMod,
    "shipsByMod": shipsByMod,
  };
}
