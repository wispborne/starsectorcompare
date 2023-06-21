import "package:freezed_annotation/freezed_annotation.dart";
import "package:starsectorcompare/models/weaponMuzzleFlashSpec.dart";
import "package:starsectorcompare/models/weaponSmokeSpec.dart";

import "converters/booleanConverter.dart";

part '../generated/models/weaponJson.freezed.dart';

part '../generated/models/weaponJson.g.dart';

@freezed
class WeaponJson with _$WeaponJson {
  factory WeaponJson({
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
    @BoolConverter() @Default(false) bool? renderBelowAllWeapons,
    @BoolConverter() @Default(false) bool? renderAboveAllWeapons,
    @BoolConverter() @Default(false) bool? showDamageWhenDecorative,
    @Default(0.0) double? displayArcRadius, // default is 250 but meh

    @Default(0.0) double? specialWeaponGlowHeight, // default is 0 but meh
    @Default(0.0) double? specialWeaponGlowWidth, // default is 0 but meh

    // optional, projectile only
    @Default("NONE") String? animationType,
    @Default(0.0) double? visualRecoil,
    @BoolConverter() @Default(false) bool? separateRecoilForLinkedBarrels,
    @BoolConverter() @Default(false) bool? interruptibleBurst,
    @BoolConverter() @Default(false) bool? autocharge,
    @BoolConverter() @Default(true) bool? requiresFullCharge,
    WeaponMuzzleFlashSpec? muzzleFlashSpec,
    WeaponSmokeSpec? smokeSpec,
    @BoolConverter() @Default(false) bool? noImpactSounds,
    @BoolConverter() @Default(false) bool? noShieldImpactSounds,
    @BoolConverter() @Default(false) bool? noNonShieldImpactSounds,
    @BoolConverter() @Default(false) bool? unaffectedByProjectileSpeedBonuses, // 0.95 new

    // optional, beam only
    @Default("") String? beamEffect,
    @BoolConverter() @Default(false) bool? beamFireOnlyOnFullCharge,
    @BoolConverter() @Default(false) bool? convergeOnPoint,
    @Default(10.0) double? width,
    @Default(64.0) double? textureScrollSpeed,
    @Default(1.0) double? pixelsPerTexel,
    @Default(0.0) double? hitGlowRadius,
    @BoolConverter() @Default(false) bool? darkCore,
    @Default(0) int? darkFringeIter, // 0.95 new
    @Default(0) int? darkCoreIter, // 0.95 new
    @Default(0.0) double? coreWidthMult, // 0.95 new

    @Default("RAY") String? collisionClass,
    @Default("RAY_FIGHTER") String? collisionClassByFighter,
    @Default({}) Set<String>? pierceSet,
    @BoolConverter() @Default(false) final bool autofire,
    @Default("") final String mode,
    @Default({}) final Map<String, String> weapons,
  }) = _WeaponJson;

  factory WeaponJson.fromJson(Map<String, Object?> json) => _$WeaponJsonFromJson(json);
}
