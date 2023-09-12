import 'package:StarCompare/models/ModInfo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/Weapon.dart';
import 'models/ship.dart';

abstract class AppState {
  static final StateProvider<String> mode = StateProvider((ref) => "null");
  static final StateProvider<bool> isPerformingInitialLoad = StateProvider((ref) => false);
  static final StateProvider<Map<String, ModInfo>> loadedModsByModId = StateProvider((ref) => {});

  // Ships
  static final StateProvider<Map<String, Ship>> shipsByHullId = StateProvider<Map<String, Ship>>((ref) => {});
  static final StateProvider<Map<String, Weapon>> weaponsById = StateProvider<Map<String, Weapon>>((ref) => {});

  static final StateProvider<Set<String>> selectedHullIds = StateProvider((ref) => <String>{});
  static final StateProvider<String?> baselineHullId = StateProvider((ref) => null);

  static final StateProvider<Set<String?>?> filterMods = StateProvider((ref) => null);
  static final StateProvider<Set<String>?> filterShipHullSizes = StateProvider((ref) => null);
  static final StateProvider<Set<String>?> filterShipHints = StateProvider((ref) => null);
  static final StateProvider<Set<String>?> filterTechTypes = StateProvider((ref) => null);
  static final StateProvider<Map<String, bool>?> sortBy = StateProvider((ref) => null);
  static final StateProvider<String?> searchText = StateProvider((ref) => null);
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
