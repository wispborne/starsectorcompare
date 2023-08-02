import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/Weapon.dart';
import 'models/ship.dart';
import 'models/shipJson.dart';
import 'models/shipCsv.dart';
import 'models/shipFilter.dart';
import 'models/weaponJson.dart';
import 'models/weaponCsv.dart';

abstract class AppState {
  static final mode = StateProvider((ref) => "null");

  // Ships
  static final shipsByHullId =
      StateProvider<Map<String, Ship>>((ref) => {});
  static final weaponsById =
      StateProvider<Map<String, Weapon>>((ref) => {});

  static final hullIdsToDisplay = StateProvider((ref) => <String>{});

  static final shipFilter = StateProvider((ref) => ShipFilter());
  static final isPerformingInitialLoad = StateProvider((ref) => false);
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
