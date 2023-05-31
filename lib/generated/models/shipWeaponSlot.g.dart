// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipWeaponSlot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShipWeaponSlot _$ShipWeaponSlotFromJson(Map<String, dynamic> json) =>
    ShipWeaponSlot(
      angle: (json['angle'] as num?)?.toDouble() ?? 0,
      arc: (json['arc'] as num?)?.toDouble() ?? 0,
      id: json['id'] as String? ?? "",
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      position: (json['position'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      mount: json['mount'] as String? ?? "",
      size: json['size'] as String? ?? "",
      type: json['type'] as String? ?? "",
      renderOrderMod: (json['renderOrderMod'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ShipWeaponSlotToJson(ShipWeaponSlot instance) =>
    <String, dynamic>{
      'angle': instance.angle,
      'arc': instance.arc,
      'id': instance.id,
      'locations': instance.locations,
      'position': instance.position,
      'mount': instance.mount,
      'size': instance.size,
      'type': instance.type,
      'renderOrderMod': instance.renderOrderMod,
    };
