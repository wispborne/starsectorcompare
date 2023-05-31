// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Variant _$$_VariantFromJson(Map<String, dynamic> json) => _$_Variant(
      displayName: json['displayName'] as String? ?? "New Variant",
      hullId: json['hullId'] as String? ?? "",
      variantId: json['variantId'] as String? ?? "",
      fluxVents: json['fluxVents'] as int? ?? 0,
      fluxCapacitors: json['fluxCapacitors'] as int? ?? 0,
      hullMods: (json['hullMods'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      weaponGroups: (json['weaponGroups'] as List<dynamic>?)
              ?.map((e) => VariantWeapon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      goalVariant: json['goalVariant'] as bool? ?? false,
      quality: (json['quality'] as num?)?.toDouble() ?? 1.0,
      permaMods: (json['permaMods'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      wings:
          (json['wings'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      modules: json['modules'] == null
          ? const {}
          : const AlexMapConverter().fromJson(json['modules'] as Object),
    );

Map<String, dynamic> _$$_VariantToJson(_$_Variant instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'hullId': instance.hullId,
      'variantId': instance.variantId,
      'fluxVents': instance.fluxVents,
      'fluxCapacitors': instance.fluxCapacitors,
      'hullMods': instance.hullMods,
      'weaponGroups': instance.weaponGroups,
      'goalVariant': instance.goalVariant,
      'quality': instance.quality,
      'permaMods': instance.permaMods,
      'wings': instance.wings,
      'modules': const AlexMapConverter().toJson(instance.modules),
    };
