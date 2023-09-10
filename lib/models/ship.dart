import 'dart:ui';

import 'package:starsectorcompare/models/shipCsv.dart';
import 'package:starsectorcompare/models/shipJson.dart';

import '../utils.dart';

class Ship {
  String id;
  Color color = const Color(0x00000000);
  ShipCsv shipCsv;
  ShipJson shipJson;
  String? modId;

  Ship({required this.id, required this.shipCsv, required this.shipJson, required this.modId}) {
    color = stringToColor(id);
  }

  Set<String> hintsSplitUppercase() =>
      shipCsv.hints?.split(",").map((e) => e.trim().toUpperCase()).toSet() ?? {};
  Set<String> tagsSplitUppercase() =>
      shipCsv.tags?.split(",").map((e) => e.trim().toUpperCase()).toSet() ?? {};
}