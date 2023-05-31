// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipEngineSlotChange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipEngineSlotChange _$$_ShipEngineSlotChangeFromJson(
        Map<String, dynamic> json) =>
    _$_ShipEngineSlotChange(
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      length: (json['length'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      angle: (json['angle'] as num?)?.toDouble(),
      style: json['style'] as String?,
      styleId: json['styleId'] as String?,
      styleSpec: json['styleSpec'] == null
          ? null
          : EngineStyleSpec.fromJson(json['styleSpec'] as Map<String, dynamic>),
      contrailSize: (json['contrailSize'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ShipEngineSlotChangeToJson(
        _$_ShipEngineSlotChange instance) =>
    <String, dynamic>{
      'location': instance.location,
      'length': instance.length,
      'width': instance.width,
      'angle': instance.angle,
      'style': instance.style,
      'styleId': instance.styleId,
      'styleSpec': instance.styleSpec,
      'contrailSize': instance.contrailSize,
    };
