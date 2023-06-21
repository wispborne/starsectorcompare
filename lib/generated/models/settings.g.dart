// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      gameDir: json['gameDir'] as String?,
      modsDir: json['modsDir'] as String?,
      numberShipsToLoad: json['numberShipsToLoad'] as String? ?? "20",
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'gameDir': instance.gameDir,
      'modsDir': instance.modsDir,
      'numberShipsToLoad': instance.numberShipsToLoad,
    };
