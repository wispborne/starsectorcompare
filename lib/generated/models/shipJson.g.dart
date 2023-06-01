// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipJson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShipJson _$ShipJsonFromJson(Map<String, dynamic> json) => ShipJson(
      bounds: (json['bounds'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      center: (json['center'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      collisionRadius: (json['collisionRadius'] as num?)?.toDouble() ?? 0,
      engineSlots: (json['engineSlots'] as List<dynamic>?)
          ?.map((e) => EngineSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num?)?.toDouble() ?? 0,
      width: (json['width'] as num?)?.toDouble() ?? 0,
      hullId: json['hullId'] as String? ?? "",
      hullName: json['hullName'] as String? ?? "",
      hullSize: json['hullSize'] as String? ?? "",
      shieldCenter: (json['shieldCenter'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      shieldRadius: (json['shieldRadius'] as num?)?.toDouble() ?? 0,
      spriteName: json['spriteName'] as String? ?? "",
      style: json['style'] as String? ?? "",
      viewOffset: (json['viewOffset'] as num?)?.toDouble() ?? 0,
      weaponSlots: (json['weaponSlots'] as List<dynamic>?)
              ?.map((e) => ShipWeaponSlot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      builtInWeapons: (json['builtInWeapons'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      builtInMods: (json['builtInMods'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      coversColor: json['coversColor'] as String? ?? "",
      builtInWings: (json['builtInWings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      moduleAnchor: (json['moduleAnchor'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ShipJsonToJson(ShipJson instance) => <String, dynamic>{
      'bounds': instance.bounds,
      'center': instance.center,
      'collisionRadius': instance.collisionRadius,
      'engineSlots': instance.engineSlots,
      'height': instance.height,
      'width': instance.width,
      'hullId': instance.hullId,
      'hullName': instance.hullName,
      'hullSize': instance.hullSize,
      'shieldCenter': instance.shieldCenter,
      'shieldRadius': instance.shieldRadius,
      'spriteName': instance.spriteName,
      'style': instance.style,
      'viewOffset': instance.viewOffset,
      'weaponSlots': instance.weaponSlots,
      'builtInWeapons': instance.builtInWeapons,
      'builtInMods': instance.builtInMods,
      'coversColor': instance.coversColor,
      'builtInWings': instance.builtInWings,
      'moduleAnchor': instance.moduleAnchor,
    };
