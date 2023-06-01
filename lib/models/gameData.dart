import 'package:starsectorcompare/models/shipJson.dart';
import 'package:starsectorcompare/models/shipCsv.dart';
import 'package:starsectorcompare/models/weaponJson.dart';
import 'package:starsectorcompare/models/weaponCsv.dart';

class GameData {
  // Ships
  Map<String?, Map<String, ShipCsv>> shipsInCsvByHullIdByModId;
  Map<String?, Map<String, ShipJson>> shipsInJsonByHullIIdByModId;

  // Weapons
  Map<String?, Map<String, WeaponCsv>> weaponsInCsvByIdByModId;
  Map<String?, Map<String, WeaponJson>> weaponsInJsonByIdByModId;

  GameData({
    required this.shipsInCsvByHullIdByModId,
    required this.shipsInJsonByHullIIdByModId,
    required this.weaponsInCsvByIdByModId,
    required this.weaponsInJsonByIdByModId,
  });
}
