import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/ship.dart';
import 'models/shipFilter.dart';
import 'models/weapon.dart';

abstract class AppState {
  static final mode = StateProvider((ref) => "null");

  static final shipsByHullIdByModId =
      StateProvider<Map<String?, Map<String, Ship>>>((ref) => {});
  static final weaponsByIdByModId =
      StateProvider<Map<String?, Map<String, Weapon>>>((ref) => {});

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
