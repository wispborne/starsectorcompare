import 'ModInfo.dart';
import 'ModInfoJson.dart';
import 'shipCsv.dart';
import 'shipJson.dart';
import 'weaponCsv.dart';
import 'weaponJson.dart';

class GameData {
  // Ships
  Map<String?, Map<String, ShipCsv>> shipsInCsvByHullIdByModId;
  Map<String?, Map<String, ShipJson>> shipsInJsonByHullIIdByModId;

  // Weapons
  Map<String?, Map<String, WeaponCsv>> weaponsInCsvByIdByModId;
  Map<String?, Map<String, WeaponJson>> weaponsInJsonByIdByModId;

  // Mods
  Map<String, ModInfo> modInfoByModId;

  GameData({
    required this.shipsInCsvByHullIdByModId,
    required this.shipsInJsonByHullIIdByModId,
    required this.weaponsInCsvByIdByModId,
    required this.weaponsInJsonByIdByModId,
    required this.modInfoByModId,
  });
}
