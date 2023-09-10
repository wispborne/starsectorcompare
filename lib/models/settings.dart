import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/settings.freezed.dart';
part '../generated/models/settings.g.dart';

final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class Settings with _$Settings {
  factory Settings({final String? gameDir, final String? modsDir, @Default("20") final String? numberShipsToLoad}) =
      _Settings;

  factory Settings.fromJson(Map<String, Object?> json) => _$SettingsFromJson(json);
}
