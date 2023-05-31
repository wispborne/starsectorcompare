// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/weaponMuzzleFlashSpec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponMuzzleFlashSpec _$$_WeaponMuzzleFlashSpecFromJson(
        Map<String, dynamic> json) =>
    _$_WeaponMuzzleFlashSpec(
      length: (json['length'] as num?)?.toDouble() ?? 30,
      spread: (json['spread'] as num?)?.toDouble() ?? 20,
      particleSizeMin: (json['particleSizeMin'] as num?)?.toDouble() ?? 10,
      particleSizeRange: (json['particleSizeRange'] as num?)?.toDouble() ?? 10,
      particleDuration: (json['particleDuration'] as num?)?.toDouble() ?? 0.5,
      particleCount: json['particleCount'] as int? ?? 10,
      particleColor: (json['particleColor'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [255.0, 255.0, 255.0, 255.0],
    );

Map<String, dynamic> _$$_WeaponMuzzleFlashSpecToJson(
        _$_WeaponMuzzleFlashSpec instance) =>
    <String, dynamic>{
      'length': instance.length,
      'spread': instance.spread,
      'particleSizeMin': instance.particleSizeMin,
      'particleSizeRange': instance.particleSizeRange,
      'particleDuration': instance.particleDuration,
      'particleCount': instance.particleCount,
      'particleColor': instance.particleColor,
    };
