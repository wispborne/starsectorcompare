import 'package:starsectorcompare/models/weaponCsv.dart';
import 'package:starsectorcompare/models/weaponJson.dart';

class Weapon {
  String id;
  WeaponCsv weaponCsv;
  WeaponJson weaponJson;

  Weapon({required this.id, required this.weaponCsv, required this.weaponJson});
}