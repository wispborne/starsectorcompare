import 'dart:ui';

import '../utils.dart';
import 'shipCsv.dart';
import 'shipJson.dart';

class Ship {
  String id;
  Color color = const Color(0x00000000);
  ShipCsv shipCsv;
  ShipJson shipJson;
  String? modId;
  String? modName;

  Ship({required this.id, required this.shipCsv, required this.shipJson, required this.modId, required this.modName}) {
    color = stringToColor(id);
  }

  Set<String> hintsSplitUppercase() => shipCsv.hints?.split(",").map((e) => e.trim().toUpperCase()).toSet() ?? {};
  Set<String> tagsSplitUppercase() => shipCsv.tags?.split(",").map((e) => e.trim().toUpperCase()).toSet() ?? {};
}
