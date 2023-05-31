// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipSkin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipSkin _$$_ShipSkinFromJson(Map<String, dynamic> json) => _$_ShipSkin(
      baseHullId: json['baseHullId'] as String? ?? "base_hull",
      skinHullId: json['skinHullId'] as String? ?? "base_hull_skin",
      hullName: json['hullName'] as String? ?? "Hull Skin",
      restoreToBaseHull: json['restoreToBaseHull'] as bool? ?? false,
      hullDesignation: json['hullDesignation'] as String? ?? "FRIGATE",
      manufacturer: json['manufacturer'] as String?,
      tech: json['tech'] as String?,
      spriteName:
          json['spriteName'] as String? ?? "graphics/ships/skins/new_skin.png",
      descriptionId: json['descriptionId'] as String? ?? "base_hull",
      descriptionPrefix: json['descriptionPrefix'] as String?,
      fleetPoints: json['fleetPoints'] as int?,
      fpMod: json['fpMod'] as int?,
      fighterBays: json['fighterBays'] as int?,
      ordnancePoints: json['ordnancePoints'] as int?,
      systemId: json['systemId'] as String?,
      baseValue: json['baseValue'] as int? ?? 0,
      baseValueMult: (json['baseValueMult'] as num?)?.toDouble() ?? 1,
      removeHints: (json['removeHints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      addHints: (json['addHints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      removeBuiltInMods: (json['removeBuiltInMods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      builtInMods: (json['builtInMods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      removeWeaponSlots: (json['removeWeaponSlots'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      weaponSlotChanges:
          (json['weaponSlotChanges'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            ShipWeaponSlotChange.fromJson(
                const AlexMapConverter().fromJson(e as Object))),
      ),
      removeBuiltInWeapons: (json['removeBuiltInWeapons'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      builtInWeapons: (json['builtInWeapons'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      removeEngineSlots: (json['removeEngineSlots'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      engineSlotChanges:
          (json['engineSlotChanges'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            ShipEngineSlotChange.fromJson(
                const AlexMapConverter().fromJson(e as Object))),
      ),
      coversColor: (json['coversColor'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_ShipSkinToJson(_$_ShipSkin instance) =>
    <String, dynamic>{
      'baseHullId': instance.baseHullId,
      'skinHullId': instance.skinHullId,
      'hullName': instance.hullName,
      'restoreToBaseHull': instance.restoreToBaseHull,
      'hullDesignation': instance.hullDesignation,
      'manufacturer': instance.manufacturer,
      'tech': instance.tech,
      'spriteName': instance.spriteName,
      'descriptionId': instance.descriptionId,
      'descriptionPrefix': instance.descriptionPrefix,
      'fleetPoints': instance.fleetPoints,
      'fpMod': instance.fpMod,
      'fighterBays': instance.fighterBays,
      'ordnancePoints': instance.ordnancePoints,
      'systemId': instance.systemId,
      'baseValue': instance.baseValue,
      'baseValueMult': instance.baseValueMult,
      'removeHints': instance.removeHints,
      'addHints': instance.addHints,
      'removeBuiltInMods': instance.removeBuiltInMods,
      'builtInMods': instance.builtInMods,
      'removeWeaponSlots': instance.removeWeaponSlots,
      'weaponSlotChanges': instance.weaponSlotChanges,
      'removeBuiltInWeapons': instance.removeBuiltInWeapons,
      'builtInWeapons': instance.builtInWeapons,
      'removeEngineSlots': instance.removeEngineSlots,
      'engineSlotChanges': instance.engineSlotChanges,
      'coversColor': instance.coversColor,
    };
