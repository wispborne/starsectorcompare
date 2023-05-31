import "package:freezed_annotation/freezed_annotation.dart";
import "package:starsectorcompare/models/weaponMuzzleFlashSpec.dart";
import "package:starsectorcompare/models/weaponSmokeSpec.dart";

import "converters/booleanConverter.dart";

part '../generated/models/weapon.freezed.dart';

part '../generated/models/weapon.g.dart';

@freezed
class Weapon with _$Weapon {
  factory Weapon({
    // there are only two type of weapon for now.
    // specClass = projectile Or specClass = beam

    // essential to both
    @Default("new_weapon") String id,
    @Default("projectile") String? specClass,
    @Default("ENERGY") String? type,
    @Default("SMALL") String? size,
    @Default("") String? turretSprite,
    @Default("") String? hardpointSprite,
    @Default([0.0, 0.0]) List<double>? turretOffsets,
    @Default([0.0]) List<double>? turretAngleOffsets,
    @Default([0.0, 0.0]) List<double>? hardpointOffsets,
    @Default([0.0]) List<double>? hardpointAngleOffsets,
    @Default([255.0, 255.0, 255.0, 255.0]) List<double>? glowColor,

    // essential to projectile
    @Default("") String? projectileSpecId,
    @Default("ALTERNATING") String? barrelMode,

    // essential to beam
    @Default([255.0, 255.0, 255.0, 255.0]) List<double>? fringeColor,
    @Default([255.0, 255.0, 255.0, 255.0]) List<double>? coreColor,
    /// Enum or `Set<String>`
    @Default("ROUGH") dynamic textureType, // TEnum or TString[]

    // optional

    @Default("") String? mountTypeOverride, // 0.95.1 new
    @Default("") String? turretUnderSprite,
    @Default("") String? turretGunSprite,
    @Default("") String? turretGlowSprite,
    @Default("") String? hardpointUnderSprite,
    @Default("") String? hardpointGunSprite,
    @Default("") String? hardpointGlowSprite,
    @Default("") String? fireSoundOne,
    @Default("") String? fireSoundTwo,
    @Default("") String? everyFrameEffect,
    @Default(true) bool? animateWhileFiring,
    @BoolConverter() @Default(false) bool? alwaysAnimate,
    @Default(1) int? numFrames,
    @Default(1.0) double? frameRate,
    @Default({}) Set<String>? renderHints,
    @Default(false) bool? renderBelowAllWeapons,
    @Default(false) bool? renderAboveAllWeapons,
    @Default(false) bool? showDamageWhenDecorative,
    @Default(0.0) double? displayArcRadius, // default is 250 but meh

    @Default(0.0) double? specialWeaponGlowHeight, // default is 0 but meh
    @Default(0.0) double? specialWeaponGlowWidth, // default is 0 but meh

    // optional, projectile only
    @Default("NONE") String? animationType,
    @Default(0.0) double? visualRecoil,
    @Default(false) bool? separateRecoilForLinkedBarrels,
    @Default(false) bool? interruptibleBurst,
    @Default(false) bool? autocharge,
    @Default(true) bool? requiresFullCharge,
    WeaponMuzzleFlashSpec? muzzleFlashSpec,
    WeaponSmokeSpec? smokeSpec,
    @Default(false) bool? noImpactSounds,
    @Default(false) bool? noShieldImpactSounds,
    @Default(false) bool? noNonShieldImpactSounds,
    @Default(false) bool? unaffectedByProjectileSpeedBonuses, // 0.95 new

    // optional, beam only
    @Default("") String? beamEffect,
    @Default(false) bool? beamFireOnlyOnFullCharge,
    @Default(false) bool? convergeOnPoint,
    @Default(10.0) double? width,
    @Default(64.0) double? textureScrollSpeed,
    @Default(1.0) double? pixelsPerTexel,
    @Default(0.0) double? hitGlowRadius,
    @Default(false) bool? darkCore,
    @Default(0) int? darkFringeIter, // 0.95 new
    @Default(0) int? darkCoreIter, // 0.95 new
    @Default(0.0) double? coreWidthMult, // 0.95 new

    @Default("RAY") String? collisionClass,
    @Default("RAY_FIGHTER") String? collisionClassByFighter,
    @Default({}) Set<String>? pierceSet,
    @Default(false) final bool autofire,
    @Default("") final String mode,
    @Default({}) final Map<String, String> weapons,
  }) = _Weapon;

  factory Weapon.fromJson(Map<String, Object?> json) => _$WeaponFromJson(json);
}
