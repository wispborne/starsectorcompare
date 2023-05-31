import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/ship.dart';
import 'models/shipCsv.dart';
import 'models/shipFilter.dart';
import 'models/weapon.dart';
import 'models/weaponCsv.dart';

abstract class AppState {
  static final mode = StateProvider((ref) => "null");

  static final shipsInCsvByHullIdByModId =
      StateProvider<Map<String?, Map<String, ShipCsv>>>((ref) => {});
  static final shipsInJsonByHullIIdByModId = StateProvider<Map<String?, Map<String, Ship>>>((ref) => {});
  static final weaponsInCsvByIdByModId =
      StateProvider<Map<String?, Map<String, WeaponCsv>>>((ref) => {});
  static final weaponsById = StateProvider<Map<String, Weapon>>((ref) => {});

  static final shipFilter = StateProvider((ref) => ShipFilter());
}

extension SetAdding on Map<String, Set<String>> {
  void createAndAdd(String key, String newValue) {
    if (containsKey(key)) {
      this[key]!.add(newValue);
    } else {
      this[key] = {newValue};
    }
  }
}
