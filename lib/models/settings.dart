import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ktx/collections.dart';
import 'package:path/path.dart' as path;
import 'package:starsectorcompare/models/shipCsv.dart';
import 'package:starsectorcompare/models/weaponCsv.dart';

import '../appState.dart';
import '../loading/csvDataLoader.dart';
import '../main.dart';

part '../generated/models/settings.freezed.dart';

part '../generated/models/settings.g.dart';

final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class Settings with _$Settings {
  factory Settings({final String? gameDir, final String? modsDir}) = _Settings;

  factory Settings.fromJson(Map<String, Object?> json) =>
      _$SettingsFromJson(json);
}
