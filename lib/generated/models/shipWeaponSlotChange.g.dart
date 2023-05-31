// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipWeaponSlotChange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipWeaponSlotChange _$$_ShipWeaponSlotChangeFromJson(
        Map<String, dynamic> json) =>
    _$_ShipWeaponSlotChange(
      angle: (json['angle'] as num?)?.toDouble(),
      arc: (json['arc'] as num?)?.toDouble(),
      id: json['id'] as String?,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      position: (json['position'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      mount: json['mount'] as String?,
      size: json['size'] as String?,
      type: json['type'] as String?,
      renderOrderMod: (json['renderOrderMod'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ShipWeaponSlotChangeToJson(
        _$_ShipWeaponSlotChange instance) =>
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
