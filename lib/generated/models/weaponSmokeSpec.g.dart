// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/weaponSmokeSpec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeaponSmokeSpec _$$_WeaponSmokeSpecFromJson(Map<String, dynamic> json) =>
    _$_WeaponSmokeSpec(
      particleSizeMin: (json['particleSizeMin'] as num?)?.toDouble() ?? 20.0,
      particleSizeRange:
          (json['particleSizeRange'] as num?)?.toDouble() ?? 20.0,
      cloudParticleCount: json['cloudParticleCount'] as int? ?? 3,
      cloudDuration: (json['cloudDuration'] as num?)?.toDouble() ?? 1.0,
      cloudRadius: _$JsonConverterFromJson<Object, double>(
              json['cloudRadius'], const AlexDoubleConverter().fromJson) ??
          10.0,
      blowbackParticleCount: json['blowbackParticleCount'] as int? ?? 3,
      blowbackDuration: (json['blowbackDuration'] as num?)?.toDouble() ?? 2.0,
      blowbackLength: (json['blowbackLength'] as num?)?.toDouble() ?? 30.0,
      blowbackSpread: (json['blowbackSpread'] as num?)?.toDouble() ?? 10.0,
      particleColor: (json['particleColor'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [255.0, 255.0, 255.0, 255.0],
    );

Map<String, dynamic> _$$_WeaponSmokeSpecToJson(_$_WeaponSmokeSpec instance) =>
    <String, dynamic>{
      'particleSizeMin': instance.particleSizeMin,
      'particleSizeRange': instance.particleSizeRange,
      'cloudParticleCount': instance.cloudParticleCount,
      'cloudDuration': instance.cloudDuration,
      'cloudRadius': _$JsonConverterToJson<Object, double>(
          instance.cloudRadius, const AlexDoubleConverter().toJson),
      'blowbackParticleCount': instance.blowbackParticleCount,
      'blowbackDuration': instance.blowbackDuration,
      'blowbackLength': instance.blowbackLength,
      'blowbackSpread': instance.blowbackSpread,
      'particleColor': instance.particleColor,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
