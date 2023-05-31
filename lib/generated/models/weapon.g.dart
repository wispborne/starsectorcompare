// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/weapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weapon _$$_WeaponFromJson(Map<String, dynamic> json) => _$_Weapon(
      id: json['id'] as String? ?? "new_weapon",
      specClass: json['specClass'] as String? ?? "projectile",
      type: json['type'] as String? ?? "ENERGY",
      size: json['size'] as String? ?? "SMALL",
      turretSprite: json['turretSprite'] as String? ?? "",
      hardpointSprite: json['hardpointSprite'] as String? ?? "",
      turretOffsets: (json['turretOffsets'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.0, 0.0],
      turretAngleOffsets: (json['turretAngleOffsets'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.0],
      hardpointOffsets: (json['hardpointOffsets'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.0, 0.0],
      hardpointAngleOffsets: (json['hardpointAngleOffsets'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.0],
      glowColor: (json['glowColor'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [255.0, 255.0, 255.0, 255.0],
      projectileSpecId: json['projectileSpecId'] as String? ?? "",
      barrelMode: json['barrelMode'] as String? ?? "ALTERNATING",
      fringeColor: (json['fringeColor'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [255.0, 255.0, 255.0, 255.0],
      coreColor: (json['coreColor'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [255.0, 255.0, 255.0, 255.0],
      textureType: json['textureType'] ?? "ROUGH",
      mountTypeOverride: json['mountTypeOverride'] as String? ?? "",
      turretUnderSprite: json['turretUnderSprite'] as String? ?? "",
      turretGunSprite: json['turretGunSprite'] as String? ?? "",
      turretGlowSprite: json['turretGlowSprite'] as String? ?? "",
      hardpointUnderSprite: json['hardpointUnderSprite'] as String? ?? "",
      hardpointGunSprite: json['hardpointGunSprite'] as String? ?? "",
      hardpointGlowSprite: json['hardpointGlowSprite'] as String? ?? "",
      fireSoundOne: json['fireSoundOne'] as String? ?? "",
      fireSoundTwo: json['fireSoundTwo'] as String? ?? "",
      everyFrameEffect: json['everyFrameEffect'] as String? ?? "",
      animateWhileFiring: json['animateWhileFiring'] as bool? ?? true,
      alwaysAnimate: _$JsonConverterFromJson<Object, bool>(
              json['alwaysAnimate'], const BoolConverter().fromJson) ??
          false,
      numFrames: json['numFrames'] as int? ?? 1,
      frameRate: (json['frameRate'] as num?)?.toDouble() ?? 1.0,
      renderHints: (json['renderHints'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      renderBelowAllWeapons: json['renderBelowAllWeapons'] as bool? ?? false,
      renderAboveAllWeapons: json['renderAboveAllWeapons'] as bool? ?? false,
      showDamageWhenDecorative:
          json['showDamageWhenDecorative'] as bool? ?? false,
      displayArcRadius: (json['displayArcRadius'] as num?)?.toDouble() ?? 0.0,
      specialWeaponGlowHeight:
          (json['specialWeaponGlowHeight'] as num?)?.toDouble() ?? 0.0,
      specialWeaponGlowWidth:
          (json['specialWeaponGlowWidth'] as num?)?.toDouble() ?? 0.0,
      animationType: json['animationType'] as String? ?? "NONE",
      visualRecoil: (json['visualRecoil'] as num?)?.toDouble() ?? 0.0,
      separateRecoilForLinkedBarrels:
          json['separateRecoilForLinkedBarrels'] as bool? ?? false,
      interruptibleBurst: json['interruptibleBurst'] as bool? ?? false,
      autocharge: json['autocharge'] as bool? ?? false,
      requiresFullCharge: json['requiresFullCharge'] as bool? ?? true,
      muzzleFlashSpec: json['muzzleFlashSpec'] == null
          ? null
          : WeaponMuzzleFlashSpec.fromJson(
              json['muzzleFlashSpec'] as Map<String, dynamic>),
      smokeSpec: json['smokeSpec'] == null
          ? null
          : WeaponSmokeSpec.fromJson(json['smokeSpec'] as Map<String, dynamic>),
      noImpactSounds: json['noImpactSounds'] as bool? ?? false,
      noShieldImpactSounds: json['noShieldImpactSounds'] as bool? ?? false,
      noNonShieldImpactSounds:
          json['noNonShieldImpactSounds'] as bool? ?? false,
      unaffectedByProjectileSpeedBonuses:
          json['unaffectedByProjectileSpeedBonuses'] as bool? ?? false,
      beamEffect: json['beamEffect'] as String? ?? "",
      beamFireOnlyOnFullCharge:
          json['beamFireOnlyOnFullCharge'] as bool? ?? false,
      convergeOnPoint: json['convergeOnPoint'] as bool? ?? false,
      width: (json['width'] as num?)?.toDouble() ?? 10.0,
      textureScrollSpeed:
          (json['textureScrollSpeed'] as num?)?.toDouble() ?? 64.0,
      pixelsPerTexel: (json['pixelsPerTexel'] as num?)?.toDouble() ?? 1.0,
      hitGlowRadius: (json['hitGlowRadius'] as num?)?.toDouble() ?? 0.0,
      darkCore: json['darkCore'] as bool? ?? false,
      darkFringeIter: json['darkFringeIter'] as int? ?? 0,
      darkCoreIter: json['darkCoreIter'] as int? ?? 0,
      coreWidthMult: (json['coreWidthMult'] as num?)?.toDouble() ?? 0.0,
      collisionClass: json['collisionClass'] as String? ?? "RAY",
      collisionClassByFighter:
          json['collisionClassByFighter'] as String? ?? "RAY_FIGHTER",
      pierceSet: (json['pierceSet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      autofire: json['autofire'] as bool? ?? false,
      mode: json['mode'] as String? ?? "",
      weapons: (json['weapons'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_WeaponToJson(_$_Weapon instance) => <String, dynamic>{
      'id': instance.id,
      'specClass': instance.specClass,
      'type': instance.type,
      'size': instance.size,
      'turretSprite': instance.turretSprite,
      'hardpointSprite': instance.hardpointSprite,
      'turretOffsets': instance.turretOffsets,
      'turretAngleOffsets': instance.turretAngleOffsets,
      'hardpointOffsets': instance.hardpointOffsets,
      'hardpointAngleOffsets': instance.hardpointAngleOffsets,
      'glowColor': instance.glowColor,
      'projectileSpecId': instance.projectileSpecId,
      'barrelMode': instance.barrelMode,
      'fringeColor': instance.fringeColor,
      'coreColor': instance.coreColor,
      'textureType': instance.textureType,
      'mountTypeOverride': instance.mountTypeOverride,
      'turretUnderSprite': instance.turretUnderSprite,
      'turretGunSprite': instance.turretGunSprite,
      'turretGlowSprite': instance.turretGlowSprite,
      'hardpointUnderSprite': instance.hardpointUnderSprite,
      'hardpointGunSprite': instance.hardpointGunSprite,
      'hardpointGlowSprite': instance.hardpointGlowSprite,
      'fireSoundOne': instance.fireSoundOne,
      'fireSoundTwo': instance.fireSoundTwo,
      'everyFrameEffect': instance.everyFrameEffect,
      'animateWhileFiring': instance.animateWhileFiring,
      'alwaysAnimate': _$JsonConverterToJson<Object, bool>(
          instance.alwaysAnimate, const BoolConverter().toJson),
      'numFrames': instance.numFrames,
      'frameRate': instance.frameRate,
      'renderHints': instance.renderHints?.toList(),
      'renderBelowAllWeapons': instance.renderBelowAllWeapons,
      'renderAboveAllWeapons': instance.renderAboveAllWeapons,
      'showDamageWhenDecorative': instance.showDamageWhenDecorative,
      'displayArcRadius': instance.displayArcRadius,
      'specialWeaponGlowHeight': instance.specialWeaponGlowHeight,
      'specialWeaponGlowWidth': instance.specialWeaponGlowWidth,
      'animationType': instance.animationType,
      'visualRecoil': instance.visualRecoil,
      'separateRecoilForLinkedBarrels': instance.separateRecoilForLinkedBarrels,
      'interruptibleBurst': instance.interruptibleBurst,
      'autocharge': instance.autocharge,
      'requiresFullCharge': instance.requiresFullCharge,
      'muzzleFlashSpec': instance.muzzleFlashSpec,
      'smokeSpec': instance.smokeSpec,
      'noImpactSounds': instance.noImpactSounds,
      'noShieldImpactSounds': instance.noShieldImpactSounds,
      'noNonShieldImpactSounds': instance.noNonShieldImpactSounds,
      'unaffectedByProjectileSpeedBonuses':
          instance.unaffectedByProjectileSpeedBonuses,
      'beamEffect': instance.beamEffect,
      'beamFireOnlyOnFullCharge': instance.beamFireOnlyOnFullCharge,
      'convergeOnPoint': instance.convergeOnPoint,
      'width': instance.width,
      'textureScrollSpeed': instance.textureScrollSpeed,
      'pixelsPerTexel': instance.pixelsPerTexel,
      'hitGlowRadius': instance.hitGlowRadius,
      'darkCore': instance.darkCore,
      'darkFringeIter': instance.darkFringeIter,
      'darkCoreIter': instance.darkCoreIter,
      'coreWidthMult': instance.coreWidthMult,
      'collisionClass': instance.collisionClass,
      'collisionClassByFighter': instance.collisionClassByFighter,
      'pierceSet': instance.pierceSet?.toList(),
      'autofire': instance.autofire,
      'mode': instance.mode,
      'weapons': instance.weapons,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
