// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/variantWeapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantWeapon _$$_VariantWeaponFromJson(Map<String, dynamic> json) =>
    _$_VariantWeapon(
      autofire: json['autofire'] as bool? ?? false,
      mode: json['mode'] as String? ?? "",
      weapons: (json['weapons'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_VariantWeaponToJson(_$_VariantWeapon instance) =>
    <String, dynamic>{
      'autofire': instance.autofire,
      'mode': instance.mode,
      'weapons': instance.weapons,
    };
