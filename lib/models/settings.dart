import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../appState.dart';
import '../csvDataLoader.dart';

part '../generated/models/settings.freezed.dart';

final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class Settings with _$Settings {
  factory Settings({final String? gameDir, final String? modsDir}) = _Settings;
}

class SettingSaver extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    if (provider == appSettings) {
      var settings = newValue as Settings;
      Fimber.d("Updated settings: $settings");

      CsvDataLoader.loadVanillaWeapons(settings.gameDir).then((value) {
        if (value != null) {
          container
              .read(AppState.vanillaWeaponsById.notifier)
              .update((state) => value);
        }
      });
      CsvDataLoader.loadVanillaShips(settings.gameDir).then((value) {
        if (value != null) {
          container
              .read(AppState.vanillaShipsByHullId.notifier)
              .update((state) => value);
        }
      });
    }
  }
}
