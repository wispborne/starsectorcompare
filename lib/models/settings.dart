import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/settings.freezed.dart';

final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class Settings with _$Settings {
  factory Settings({
    final String? gameDir,
    final String? modsDir
  }) = _Settings;
}

class SettingSaver extends ProviderObserver {

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    if (provider == appSettings) {
      Fimber.d("TODO: save settings: $newValue");
    }
  }
}
