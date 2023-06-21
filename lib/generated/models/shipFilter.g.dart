// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/shipFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipFilter _$$_ShipFilterFromJson(Map<String, dynamic> json) =>
    _$_ShipFilter(
      gameDir: json['gameDir'] as String?,
      modsDir: json['modsDir'] as String?,
      selectedHullTypes: (json['selectedHullTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$_ShipFilterToJson(_$_ShipFilter instance) =>
    <String, dynamic>{
      'gameDir': instance.gameDir,
      'modsDir': instance.modsDir,
      'selectedHullTypes': instance.selectedHullTypes?.toList(),
    };
