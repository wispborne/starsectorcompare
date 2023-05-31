// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipEngineSlot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngineSlot _$EngineSlotFromJson(Map<String, dynamic> json) => EngineSlot(
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      length: (json['length'] as num?)?.toDouble() ?? 0,
      width: (json['width'] as num?)?.toDouble() ?? 0,
      angle: (json['angle'] as num?)?.toDouble() ?? 0,
      style: json['style'] as String? ?? "",
      styleId: json['styleId'] as String? ?? "",
      styleSpec: json['styleSpec'] == null
          ? null
          : EngineStyleSpec.fromJson(json['styleSpec'] as Map<String, dynamic>),
      contrailSize: (json['contrailSize'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$EngineSlotToJson(EngineSlot instance) =>
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
