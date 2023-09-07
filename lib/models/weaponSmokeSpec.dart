import 'package:freezed_annotation/freezed_annotation.dart';

import 'converters/alexDoubleConverter.dart';

part '../generated/models/weaponSmokeSpec.freezed.dart';

part '../generated/models/weaponSmokeSpec.g.dart';

@freezed
class WeaponSmokeSpec with _$WeaponSmokeSpec {
  factory WeaponSmokeSpec({
    @Default(20.0) double? particleSizeMin,
    @Default(20.0) double? particleSizeRange,
    @Default(3) int cloudParticleCount,
    @Default(1.0) double? cloudDuration,
    @AlexDoubleConverter() @Default(10.0) double? cloudRadius,
    @Default(3) int blowbackParticleCount,
    @Default(2.0) double? blowbackDuration,
    @Default(30.0) double? blowbackLength,
    @Default(10.0) double? blowbackSpread,
    @Default([255.0, 255.0, 255.0, 255.0]) List<double> particleColor,
  }) = _WeaponSmokeSpec;

  factory WeaponSmokeSpec.fromJson(Map<String, Object?> json) => _$WeaponSmokeSpecFromJson(json);
}
