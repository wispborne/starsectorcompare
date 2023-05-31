// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipEngineStyleSpec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngineStyleSpec _$EngineStyleSpecFromJson(Map<String, dynamic> json) =>
    EngineStyleSpec(
      type: json['type'] as String? ?? "",
      mode: json['mode'] as String? ?? "",
      engineColor: (json['engineColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      engineCampaignColor: (json['engineCampaignColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      contrailParticleSizeMult:
          (json['contrailParticleSizeMult'] as num?)?.toDouble() ?? 0,
      contrailParticleFinalSizeMult:
          (json['contrailParticleFinalSizeMult'] as num?)?.toDouble() ?? 0,
      contrailParticleDuration:
          (json['contrailParticleDuration'] as num?)?.toDouble() ?? 0,
      contrailMaxSpeedMult:
          (json['contrailMaxSpeedMult'] as num?)?.toDouble() ?? 0,
      contrailAngularVelocityMult:
          (json['contrailAngularVelocityMult'] as num?)?.toDouble() ?? 0,
      contrailColor: (json['contrailColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      contrailCampaignColor: (json['contrailCampaignColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$EngineStyleSpecToJson(EngineStyleSpec instance) =>
    <String, dynamic>{
      'type': instance.type,
      'mode': instance.mode,
      'engineColor': instance.engineColor,
      'engineCampaignColor': instance.engineCampaignColor,
      'contrailParticleSizeMult': instance.contrailParticleSizeMult,
      'contrailParticleFinalSizeMult': instance.contrailParticleFinalSizeMult,
      'contrailParticleDuration': instance.contrailParticleDuration,
      'contrailMaxSpeedMult': instance.contrailMaxSpeedMult,
      'contrailAngularVelocityMult': instance.contrailAngularVelocityMult,
      'contrailColor': instance.contrailColor,
      'contrailCampaignColor': instance.contrailCampaignColor,
    };
