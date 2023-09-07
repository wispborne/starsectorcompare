import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/Weapon.dart';
import 'models/ship.dart';

abstract class AppState {
  static final mode = StateProvider((ref) => "null");
  static final isPerformingInitialLoad = StateProvider((ref) => false);

  // Ships
  static final shipsByHullId = StateProvider<Map<String, Ship>>((ref) => {});
  static final weaponsById = StateProvider<Map<String, Weapon>>((ref) => {});

  static final hullIdsToDisplay = StateProvider((ref) => <String>{});

  static final StateProvider<Set<String?>?> filterMods =
      StateProvider((ref) => null);
  static final StateProvider<Set<String>?> filterShipHullSizes =
      StateProvider((ref) => null);
  static final StateProvider<Set<String>?> filterShipHints =
      StateProvider((ref) => null);
  static final StateProvider<Map<String, bool>?> sortBy =
  StateProvider((ref) => null);
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
