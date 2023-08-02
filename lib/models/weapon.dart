import 'package:starsectorcompare/models/weaponCsv.dart';
import 'package:starsectorcompare/models/weaponJson.dart';

class Weapon {
  String id;
  WeaponCsv weaponCsv;
  WeaponJson weaponJson;
  String? modId;

  Weapon({required this.id, required this.weaponCsv, required this.weaponJson, required this.modId});
}