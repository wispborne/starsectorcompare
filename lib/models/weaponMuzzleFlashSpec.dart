import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/weaponMuzzleFlashSpec.freezed.dart';

part '../generated/models/weaponMuzzleFlashSpec.g.dart';

@freezed
class WeaponMuzzleFlashSpec with _$WeaponMuzzleFlashSpec {
  factory WeaponMuzzleFlashSpec({
    @Default(30) double? length,
    @Default(20) double? spread,
    @Default(10) double? particleSizeMin,
    @Default(10) double? particleSizeRange,
    @Default(0.5) double? particleDuration,
    @Default(10) int? particleCount,
    @Default([255.0, 255.0, 255.0, 255.0]) List<double> particleColor,
  }) = _WeaponMuzzleFlashSpec;

  factory WeaponMuzzleFlashSpec.fromJson(Map<String, Object?> json) => _$WeaponMuzzleFlashSpecFromJson(json);
}
