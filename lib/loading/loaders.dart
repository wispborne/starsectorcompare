import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:starsectorcompare/json_parser/relaxed-json.dart';
import 'package:starsectorcompare/models/ship.dart';
import 'package:starsectorcompare/models/variant.dart';
import 'package:yaml/yaml.dart';

import '../models/shipSkin.dart';
import '../models/weapon.dart';

Future<Ship?> loadShip(File file) async {
  return Ship.fromJson(parseRjson(await file.readAsString()) as Map<String, dynamic>);
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

Future<Weapon?> loadWeapon(File file) async {
  // var jsonEncodedYaml = json.encode(parseRjson(await file.readAsString()));
  // Fimber.v(jsonEncodedYaml);
  return Weapon.fromJson(parseRjson(await file.readAsString()) as Map<String, dynamic>);
}

