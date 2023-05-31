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

part '../generated/models/shipFilter.freezed.dart';

part '../generated/models/shipFilter.g.dart';

// final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class ShipFilter with _$ShipFilter {
  factory ShipFilter({final String? gameDir, final String? modsDir}) = _ShipFilter;

  factory ShipFilter.fromJson(Map<String, Object?> json) =>
      _$ShipFilterFromJson(json);
}
