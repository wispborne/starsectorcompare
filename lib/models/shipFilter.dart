import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/shipFilter.freezed.dart';

part '../generated/models/shipFilter.g.dart';

// final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class ShipFilter with _$ShipFilter {
  factory ShipFilter(
      {final String? gameDir,
      final String? modsDir,
      final Set<String>? selectedHullTypes}) = _ShipFilter;

  factory ShipFilter.fromJson(Map<String, Object?> json) =>
      _$ShipFilterFromJson(json);
}
