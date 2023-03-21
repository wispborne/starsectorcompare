import 'package:flutter_riverpod/flutter_riverpod.dart';

// final appState = StateProvider((ref) => AppState());

abstract class AppState {
  static final mode = StateProvider((ref) => "null");

  /// `stock_ships`
  static final vanillaShipsByHullId = StateProvider<Map<String, Ship>>((ref) => {});

  /// When loading vanilla data, save all enums so they can be shown as dropdowns in the UI later.
  /// `multiselect_values`
  static final enums = StateProvider<Map<String, Set<String>>>((ref) => {});

  /// stock_weapons
  static final weaponsById = StateProvider<Map<String, Weapon>>((ref) => {});
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
