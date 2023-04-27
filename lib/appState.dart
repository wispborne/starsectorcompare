import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/ship.dart';
import 'models/weapon.dart';

abstract class AppState {
  static final mode = StateProvider((ref) => "null");

  static final vanillaShipsByHullIdByModId =
      StateProvider<Map<String?, Map<String, Ship>>>((ref) => {});
  static final vanillaWeaponsByIdByModId =
      StateProvider<Map<String?, Map<String, Weapon>>>((ref) => {});
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
