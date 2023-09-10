import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ktx/ktx.dart';
import 'package:path/path.dart' as p;

import '../appState.dart';
import '../json_parser/relaxed-json.dart';
import '../models/shipEngineSlot.dart';
import '../models/shipJson.dart';
import '../models/shipSkin.dart';
import '../models/shipWeaponSlot.dart';
import '../models/variant.dart';
import '../models/weaponJson.dart';
import '../utils.dart';

Future<Map<String, ShipJson>> loadJsonShipData(String gameDir, String? modDirName) async {
  var gameDataPath = Directory(gameDir);
  // If modDirName is null, use vanilla
  var file =
      File(p.join(gameDataPath.path, modDirName?.let((it) => "mods/$it") ?? gameFilesPath(Directory(gameDir))?.path));

  var dataPath = Directory(file.path);

  Fimber.i("Starting to load data from ${dataPath.path}.");
  final path = dataPath.path;
  final stockShipsDir = Directory(p.join(path, "data/hulls/"));

  if (!stockShipsDir.existsSync()) {
    Fimber.w("Directory doesn't exist: '${stockShipsDir.path}'.");
    return {};
  }

  // Load everything
  final shipTimer = Stopwatch()..start();
  final shipsFuture = loadShips(stockShipsDir)
    ..then((value) => Fimber.i("Took ${shipTimer.elapsed}ms to load ${value.length} vanilla ships."));

  // Add ships
  var ships = (await shipsFuture).whereType<ShipJson>().toList();
  var shipsById = ships.associateBy((x) => x.hullId);

  return shipsById;
}

Future<Map<String, WeaponJson>> loadJsonWeaponData(String gameDir, String? modDirName) async {
  var gameDataPath = Directory(gameDir);
  // If modDirName is null, use vanilla
  var file =
      File(p.join(gameDataPath.path, modDirName?.let((it) => "mods/$it") ?? gameFilesPath(Directory(gameDir))?.path));

  var dataPath = Directory(file.path);

  Fimber.i("Starting to load data from ${dataPath.path}.");
  final path = dataPath.path;
  final stockWeaponsDir = Directory(p.join(path, "data/weapons/"));

  if (!stockWeaponsDir.existsSync()) {
    Fimber.w("Directory doesn't exist: '${stockWeaponsDir.path}'.");
    return {};
  }

  final weaponsTimer = Stopwatch()..start();
  final weaponsFuture = loadWeapons(stockWeaponsDir)
    ..then((value) =>
        Fimber.i("Took ${weaponsTimer.elapsed}ms to load ${value.length} vanilla weapons from $stockWeaponsDir."));

  // Add weapons
  final weapons = (await weaponsFuture).whereType<WeaponJson>().toList(growable: false);
  var wepsById = weapons.associateBy((it) => it.id);

  return wepsById;
}

Map<String, Set<ShipSkin>> cacheShipSkins(List<ShipSkin> skins) {
  final skinsByHull = <String, Set<ShipSkin>>{};

  for (var skin in skins) {
    if (skin.skinHullId != null) {
      if (skinsByHull[skin.skinHullId!] == null) {
        skinsByHull[skin.skinHullId!] = <ShipSkin>{};
      }

      skinsByHull[skin.skinHullId!]!.add(skin);
    }
  }

  return skinsByHull;
}

Map<String, Set<String>> groupSkinHullIdsByHullId(List<ShipSkin> skins) {
  final skinHullIdsByHull = <String, Set<String>>{};

  for (var skin in skins) {
    if (skin.baseHullId != null && skin.skinHullId != null) {
      if (skinHullIdsByHull[skin.baseHullId!] == null) {
        skinHullIdsByHull[skin.baseHullId!] = <String>{};
      }

      skinHullIdsByHull[skin.baseHullId!]!.add(skin.skinHullId!);
    }
  }

  return skinHullIdsByHull;
}

Map<String, Set<String>> generateShipEnums(List<ShipJson> ships) {
  final Map<String, Set<String>> enums = {};

  for (ShipJson ship in ships) {
    try {
      enums.createAndAdd("ship.hullSize", ship.hullSize);
      enums.createAndAdd("ship.style", ship.style);

      for (ShipWeaponSlot wSlot in ship.weaponSlots ?? []) {
        enums.createAndAdd("ship.weapon.mount", wSlot.mount);
        enums.createAndAdd("ship.weapon.size", wSlot.size);
        enums.createAndAdd("ship.weapon.type", wSlot.type);
      }

      for (EngineSlot eSlot in ship.engineSlots ?? []) {
        enums.createAndAdd("ship.engine.style", eSlot.style);
        if (eSlot.styleSpec != null) {
          enums.createAndAdd("ship.engine.styleSpec.type", eSlot.styleSpec!.type);
        }
      }
    } catch (e) {
      Fimber.e("Failed to load $ship", ex: e);
    }
  }

  return enums;
}

/// `load_stock_ship`
Future<List<ShipJson?>> loadShips(Directory folder) async {
  Fimber.i("Loading ships from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".ship").asyncMap((file) async {
    Fimber.d("Loading ship ${file.path}");
    return loadShip(File(file.path)).onError((error, stackTrace) {
      Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
      return Future.value(null);
    });
  }).toList();
}

/// `load_stock_variant`
Future<List<Variant?>> loadVariants(Directory folder) async {
  Fimber.i("Loading variants from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".variant").asyncMap((file) async {
    Fimber.d("Loading variant ${file.path}");
    return loadVariant(File(file.path)).onError((error, stackTrace) {
      Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
      return Future.value(null);
    });
  }).toList();
}

/// `load_stock_skin`
Future<List<ShipSkin>> loadShipSkins(Directory folder) async {
  Fimber.i("Loading ship skins from $folder");
  return folder
      .list(recursive: true)
      .where((event) => p.extension(event.path) == ".skin")
      .asyncMap((file) async {
        Fimber.d("Loading ship skin ${file.path}");
        return loadShipSkin(File(file.path)).onError((error, stackTrace) {
          Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
          return Future.value(null);
        });
      })
      .where((skin) => skin != null)
      .map((skin) => skin!)
      .toList();
}

/// `load_stock_weapon`
Future<List<WeaponJson?>> loadWeapons(Directory folder) async {
  Fimber.i("Loading weapons from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".wpn").asyncMap((file) async {
    Fimber.d("Loading variant ${file.path}");
    return loadWeapon(File(file.path)).onError((error, stackTrace) {
      Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
      return Future.value(null);
    });
  }).toList();
}

String? defaultGamePath() {
  if (Platform.isWindows) {
    // todo read from registry
    return "C:/Program Files (x86)/Fractal Softworks/Starsector";
  } else if (Platform.isMacOS) {
    return "/Applications/Starsector.app";
  } else if (kIsWeb) {
    return null; // huh
  }

  return null;
}

Future<ShipJson?> loadShip(File file) async {
  return ShipJson.fromJson(parseRjson(await file.readAsString()) as Map<String, dynamic>);
}

Future<Variant?> loadVariant(File file) async {
  //Variant.fromJson(jsonDecode() as Map<String, dynamic>);
  // var jsonEncodedYaml = json.encode(parseRjson(await file.readAsString()));
  // Fimber.v(jsonEncodedYaml);
  return Variant.fromJson(parseRjson(await file.readAsString(), withTrace: false) as Map<String, dynamic>);
}

Future<ShipSkin?> loadShipSkin(File file) async {
  // var jsonEncodedYaml = json.encode(parseRjson(await file.readAsString()));
  // Fimber.v(jsonEncodedYaml);
  return ShipSkin.fromJson(parseRjson(await file.readAsString()) as Map<String, dynamic>);
}

Future<WeaponJson?> loadWeapon(File file) async {
  // var jsonEncodedYaml = json.encode(parseRjson(await file.readAsString()));
  // Fimber.v(jsonEncodedYaml);
  return WeaponJson.fromJson(parseRjson(await file.readAsString()) as Map<String, dynamic>);
}
