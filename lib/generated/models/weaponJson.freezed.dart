// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/weaponJson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponJson _$WeaponJsonFromJson(Map<String, dynamic> json) {
  return _WeaponJson.fromJson(json);
}

/// @nodoc
mixin _$WeaponJson {
// there are only two type of weapon for now.
// specClass = projectile Or specClass = beam
// essential to both
  String get id => throw _privateConstructorUsedError;
  String? get specClass => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get turretSprite => throw _privateConstructorUsedError;
  String? get hardpointSprite => throw _privateConstructorUsedError;
  List<double>? get turretOffsets => throw _privateConstructorUsedError;
  List<double>? get turretAngleOffsets => throw _privateConstructorUsedError;
  List<double>? get hardpointOffsets => throw _privateConstructorUsedError;
  List<double>? get hardpointAngleOffsets => throw _privateConstructorUsedError;
  List<double>? get glowColor =>
      throw _privateConstructorUsedError; // essential to projectile
  String? get projectileSpecId => throw _privateConstructorUsedError;
  String? get barrelMode =>
      throw _privateConstructorUsedError; // essential to beam
  List<double>? get fringeColor => throw _privateConstructorUsedError;
  List<double>? get coreColor => throw _privateConstructorUsedError;

  /// Enum or `Set<String>`
  dynamic get textureType =>
      throw _privateConstructorUsedError; // TEnum or TString[]
// optional
  String? get mountTypeOverride =>
      throw _privateConstructorUsedError; // 0.95.1 new
  String? get turretUnderSprite => throw _privateConstructorUsedError;
  String? get turretGunSprite => throw _privateConstructorUsedError;
  String? get turretGlowSprite => throw _privateConstructorUsedError;
  String? get hardpointUnderSprite => throw _privateConstructorUsedError;
  String? get hardpointGunSprite => throw _privateConstructorUsedError;
  String? get hardpointGlowSprite => throw _privateConstructorUsedError;
  String? get fireSoundOne => throw _privateConstructorUsedError;
  String? get fireSoundTwo => throw _privateConstructorUsedError;
  String? get everyFrameEffect => throw _privateConstructorUsedError;
  bool? get animateWhileFiring => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get alwaysAnimate => throw _privateConstructorUsedError;
  int? get numFrames => throw _privateConstructorUsedError;
  double? get frameRate => throw _privateConstructorUsedError;
  Set<String>? get renderHints => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get renderBelowAllWeapons => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get renderAboveAllWeapons => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get showDamageWhenDecorative => throw _privateConstructorUsedError;
  double? get displayArcRadius =>
      throw _privateConstructorUsedError; // default is 250 but meh
  double? get specialWeaponGlowHeight =>
      throw _privateConstructorUsedError; // default is 0 but meh
  double? get specialWeaponGlowWidth =>
      throw _privateConstructorUsedError; // default is 0 but meh
// optional, projectile only
  String? get animationType => throw _privateConstructorUsedError;
  double? get visualRecoil => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get separateRecoilForLinkedBarrels =>
      throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get interruptibleBurst => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get autocharge => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get requiresFullCharge => throw _privateConstructorUsedError;
  WeaponMuzzleFlashSpec? get muzzleFlashSpec =>
      throw _privateConstructorUsedError;
  WeaponSmokeSpec? get smokeSpec => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get noImpactSounds => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get noShieldImpactSounds => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get noNonShieldImpactSounds => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get unaffectedByProjectileSpeedBonuses =>
      throw _privateConstructorUsedError; // 0.95 new
// optional, beam only
  String? get beamEffect => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get beamFireOnlyOnFullCharge => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get convergeOnPoint => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get textureScrollSpeed => throw _privateConstructorUsedError;
  double? get pixelsPerTexel => throw _privateConstructorUsedError;
  double? get hitGlowRadius => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get darkCore => throw _privateConstructorUsedError;
  int? get darkFringeIter => throw _privateConstructorUsedError; // 0.95 new
  int? get darkCoreIter => throw _privateConstructorUsedError; // 0.95 new
  double? get coreWidthMult => throw _privateConstructorUsedError; // 0.95 new
  String? get collisionClass => throw _privateConstructorUsedError;
  String? get collisionClassByFighter => throw _privateConstructorUsedError;
  Set<String>? get pierceSet => throw _privateConstructorUsedError;
  @BoolConverter()
  bool get autofire => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  Map<String, String> get weapons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponJsonCopyWith<WeaponJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponJsonCopyWith<$Res> {
  factory $WeaponJsonCopyWith(
          WeaponJson value, $Res Function(WeaponJson) then) =
      _$WeaponJsonCopyWithImpl<$Res, WeaponJson>;
  @useResult
  $Res call(
      {String id,
      String? specClass,
      String? type,
      String? size,
      String? turretSprite,
      String? hardpointSprite,
      List<double>? turretOffsets,
      List<double>? turretAngleOffsets,
      List<double>? hardpointOffsets,
      List<double>? hardpointAngleOffsets,
      List<double>? glowColor,
      String? projectileSpecId,
      String? barrelMode,
      List<double>? fringeColor,
      List<double>? coreColor,
      dynamic textureType,
      String? mountTypeOverride,
      String? turretUnderSprite,
      String? turretGunSprite,
      String? turretGlowSprite,
      String? hardpointUnderSprite,
      String? hardpointGunSprite,
      String? hardpointGlowSprite,
      String? fireSoundOne,
      String? fireSoundTwo,
      String? everyFrameEffect,
      bool? animateWhileFiring,
      @BoolConverter() bool? alwaysAnimate,
      int? numFrames,
      double? frameRate,
      Set<String>? renderHints,
      @BoolConverter() bool? renderBelowAllWeapons,
      @BoolConverter() bool? renderAboveAllWeapons,
      @BoolConverter() bool? showDamageWhenDecorative,
      double? displayArcRadius,
      double? specialWeaponGlowHeight,
      double? specialWeaponGlowWidth,
      String? animationType,
      double? visualRecoil,
      @BoolConverter() bool? separateRecoilForLinkedBarrels,
      @BoolConverter() bool? interruptibleBurst,
      @BoolConverter() bool? autocharge,
      @BoolConverter() bool? requiresFullCharge,
      WeaponMuzzleFlashSpec? muzzleFlashSpec,
      WeaponSmokeSpec? smokeSpec,
      @BoolConverter() bool? noImpactSounds,
      @BoolConverter() bool? noShieldImpactSounds,
      @BoolConverter() bool? noNonShieldImpactSounds,
      @BoolConverter() bool? unaffectedByProjectileSpeedBonuses,
      String? beamEffect,
      @BoolConverter() bool? beamFireOnlyOnFullCharge,
      @BoolConverter() bool? convergeOnPoint,
      double? width,
      double? textureScrollSpeed,
      double? pixelsPerTexel,
      double? hitGlowRadius,
      @BoolConverter() bool? darkCore,
      int? darkFringeIter,
      int? darkCoreIter,
      double? coreWidthMult,
      String? collisionClass,
      String? collisionClassByFighter,
      Set<String>? pierceSet,
      @BoolConverter() bool autofire,
      String mode,
      Map<String, String> weapons});

  $WeaponMuzzleFlashSpecCopyWith<$Res>? get muzzleFlashSpec;
  $WeaponSmokeSpecCopyWith<$Res>? get smokeSpec;
}

/// @nodoc
class _$WeaponJsonCopyWithImpl<$Res, $Val extends WeaponJson>
    implements $WeaponJsonCopyWith<$Res> {
  _$WeaponJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? specClass = freezed,
    Object? type = freezed,
    Object? size = freezed,
    Object? turretSprite = freezed,
    Object? hardpointSprite = freezed,
    Object? turretOffsets = freezed,
    Object? turretAngleOffsets = freezed,
    Object? hardpointOffsets = freezed,
    Object? hardpointAngleOffsets = freezed,
    Object? glowColor = freezed,
    Object? projectileSpecId = freezed,
    Object? barrelMode = freezed,
    Object? fringeColor = freezed,
    Object? coreColor = freezed,
    Object? textureType = freezed,
    Object? mountTypeOverride = freezed,
    Object? turretUnderSprite = freezed,
    Object? turretGunSprite = freezed,
    Object? turretGlowSprite = freezed,
    Object? hardpointUnderSprite = freezed,
    Object? hardpointGunSprite = freezed,
    Object? hardpointGlowSprite = freezed,
    Object? fireSoundOne = freezed,
    Object? fireSoundTwo = freezed,
    Object? everyFrameEffect = freezed,
    Object? animateWhileFiring = freezed,
    Object? alwaysAnimate = freezed,
    Object? numFrames = freezed,
    Object? frameRate = freezed,
    Object? renderHints = freezed,
    Object? renderBelowAllWeapons = freezed,
    Object? renderAboveAllWeapons = freezed,
    Object? showDamageWhenDecorative = freezed,
    Object? displayArcRadius = freezed,
    Object? specialWeaponGlowHeight = freezed,
    Object? specialWeaponGlowWidth = freezed,
    Object? animationType = freezed,
    Object? visualRecoil = freezed,
    Object? separateRecoilForLinkedBarrels = freezed,
    Object? interruptibleBurst = freezed,
    Object? autocharge = freezed,
    Object? requiresFullCharge = freezed,
    Object? muzzleFlashSpec = freezed,
    Object? smokeSpec = freezed,
    Object? noImpactSounds = freezed,
    Object? noShieldImpactSounds = freezed,
    Object? noNonShieldImpactSounds = freezed,
    Object? unaffectedByProjectileSpeedBonuses = freezed,
    Object? beamEffect = freezed,
    Object? beamFireOnlyOnFullCharge = freezed,
    Object? convergeOnPoint = freezed,
    Object? width = freezed,
    Object? textureScrollSpeed = freezed,
    Object? pixelsPerTexel = freezed,
    Object? hitGlowRadius = freezed,
    Object? darkCore = freezed,
    Object? darkFringeIter = freezed,
    Object? darkCoreIter = freezed,
    Object? coreWidthMult = freezed,
    Object? collisionClass = freezed,
    Object? collisionClassByFighter = freezed,
    Object? pierceSet = freezed,
    Object? autofire = null,
    Object? mode = null,
    Object? weapons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      specClass: freezed == specClass
          ? _value.specClass
          : specClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      turretSprite: freezed == turretSprite
          ? _value.turretSprite
          : turretSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointSprite: freezed == hardpointSprite
          ? _value.hardpointSprite
          : hardpointSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretOffsets: freezed == turretOffsets
          ? _value.turretOffsets
          : turretOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      turretAngleOffsets: freezed == turretAngleOffsets
          ? _value.turretAngleOffsets
          : turretAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointOffsets: freezed == hardpointOffsets
          ? _value.hardpointOffsets
          : hardpointOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointAngleOffsets: freezed == hardpointAngleOffsets
          ? _value.hardpointAngleOffsets
          : hardpointAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      glowColor: freezed == glowColor
          ? _value.glowColor
          : glowColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      projectileSpecId: freezed == projectileSpecId
          ? _value.projectileSpecId
          : projectileSpecId // ignore: cast_nullable_to_non_nullable
              as String?,
      barrelMode: freezed == barrelMode
          ? _value.barrelMode
          : barrelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      fringeColor: freezed == fringeColor
          ? _value.fringeColor
          : fringeColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      coreColor: freezed == coreColor
          ? _value.coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      textureType: freezed == textureType
          ? _value.textureType
          : textureType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mountTypeOverride: freezed == mountTypeOverride
          ? _value.mountTypeOverride
          : mountTypeOverride // ignore: cast_nullable_to_non_nullable
              as String?,
      turretUnderSprite: freezed == turretUnderSprite
          ? _value.turretUnderSprite
          : turretUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGunSprite: freezed == turretGunSprite
          ? _value.turretGunSprite
          : turretGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGlowSprite: freezed == turretGlowSprite
          ? _value.turretGlowSprite
          : turretGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointUnderSprite: freezed == hardpointUnderSprite
          ? _value.hardpointUnderSprite
          : hardpointUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGunSprite: freezed == hardpointGunSprite
          ? _value.hardpointGunSprite
          : hardpointGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGlowSprite: freezed == hardpointGlowSprite
          ? _value.hardpointGlowSprite
          : hardpointGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundOne: freezed == fireSoundOne
          ? _value.fireSoundOne
          : fireSoundOne // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundTwo: freezed == fireSoundTwo
          ? _value.fireSoundTwo
          : fireSoundTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      everyFrameEffect: freezed == everyFrameEffect
          ? _value.everyFrameEffect
          : everyFrameEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      animateWhileFiring: freezed == animateWhileFiring
          ? _value.animateWhileFiring
          : animateWhileFiring // ignore: cast_nullable_to_non_nullable
              as bool?,
      alwaysAnimate: freezed == alwaysAnimate
          ? _value.alwaysAnimate
          : alwaysAnimate // ignore: cast_nullable_to_non_nullable
              as bool?,
      numFrames: freezed == numFrames
          ? _value.numFrames
          : numFrames // ignore: cast_nullable_to_non_nullable
              as int?,
      frameRate: freezed == frameRate
          ? _value.frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      renderHints: freezed == renderHints
          ? _value.renderHints
          : renderHints // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      renderBelowAllWeapons: freezed == renderBelowAllWeapons
          ? _value.renderBelowAllWeapons
          : renderBelowAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      renderAboveAllWeapons: freezed == renderAboveAllWeapons
          ? _value.renderAboveAllWeapons
          : renderAboveAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      showDamageWhenDecorative: freezed == showDamageWhenDecorative
          ? _value.showDamageWhenDecorative
          : showDamageWhenDecorative // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayArcRadius: freezed == displayArcRadius
          ? _value.displayArcRadius
          : displayArcRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowHeight: freezed == specialWeaponGlowHeight
          ? _value.specialWeaponGlowHeight
          : specialWeaponGlowHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowWidth: freezed == specialWeaponGlowWidth
          ? _value.specialWeaponGlowWidth
          : specialWeaponGlowWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      animationType: freezed == animationType
          ? _value.animationType
          : animationType // ignore: cast_nullable_to_non_nullable
              as String?,
      visualRecoil: freezed == visualRecoil
          ? _value.visualRecoil
          : visualRecoil // ignore: cast_nullable_to_non_nullable
              as double?,
      separateRecoilForLinkedBarrels: freezed == separateRecoilForLinkedBarrels
          ? _value.separateRecoilForLinkedBarrels
          : separateRecoilForLinkedBarrels // ignore: cast_nullable_to_non_nullable
              as bool?,
      interruptibleBurst: freezed == interruptibleBurst
          ? _value.interruptibleBurst
          : interruptibleBurst // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocharge: freezed == autocharge
          ? _value.autocharge
          : autocharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresFullCharge: freezed == requiresFullCharge
          ? _value.requiresFullCharge
          : requiresFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      muzzleFlashSpec: freezed == muzzleFlashSpec
          ? _value.muzzleFlashSpec
          : muzzleFlashSpec // ignore: cast_nullable_to_non_nullable
              as WeaponMuzzleFlashSpec?,
      smokeSpec: freezed == smokeSpec
          ? _value.smokeSpec
          : smokeSpec // ignore: cast_nullable_to_non_nullable
              as WeaponSmokeSpec?,
      noImpactSounds: freezed == noImpactSounds
          ? _value.noImpactSounds
          : noImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noShieldImpactSounds: freezed == noShieldImpactSounds
          ? _value.noShieldImpactSounds
          : noShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noNonShieldImpactSounds: freezed == noNonShieldImpactSounds
          ? _value.noNonShieldImpactSounds
          : noNonShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      unaffectedByProjectileSpeedBonuses: freezed ==
              unaffectedByProjectileSpeedBonuses
          ? _value.unaffectedByProjectileSpeedBonuses
          : unaffectedByProjectileSpeedBonuses // ignore: cast_nullable_to_non_nullable
              as bool?,
      beamEffect: freezed == beamEffect
          ? _value.beamEffect
          : beamEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      beamFireOnlyOnFullCharge: freezed == beamFireOnlyOnFullCharge
          ? _value.beamFireOnlyOnFullCharge
          : beamFireOnlyOnFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      convergeOnPoint: freezed == convergeOnPoint
          ? _value.convergeOnPoint
          : convergeOnPoint // ignore: cast_nullable_to_non_nullable
              as bool?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      textureScrollSpeed: freezed == textureScrollSpeed
          ? _value.textureScrollSpeed
          : textureScrollSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      pixelsPerTexel: freezed == pixelsPerTexel
          ? _value.pixelsPerTexel
          : pixelsPerTexel // ignore: cast_nullable_to_non_nullable
              as double?,
      hitGlowRadius: freezed == hitGlowRadius
          ? _value.hitGlowRadius
          : hitGlowRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      darkCore: freezed == darkCore
          ? _value.darkCore
          : darkCore // ignore: cast_nullable_to_non_nullable
              as bool?,
      darkFringeIter: freezed == darkFringeIter
          ? _value.darkFringeIter
          : darkFringeIter // ignore: cast_nullable_to_non_nullable
              as int?,
      darkCoreIter: freezed == darkCoreIter
          ? _value.darkCoreIter
          : darkCoreIter // ignore: cast_nullable_to_non_nullable
              as int?,
      coreWidthMult: freezed == coreWidthMult
          ? _value.coreWidthMult
          : coreWidthMult // ignore: cast_nullable_to_non_nullable
              as double?,
      collisionClass: freezed == collisionClass
          ? _value.collisionClass
          : collisionClass // ignore: cast_nullable_to_non_nullable
              as String?,
      collisionClassByFighter: freezed == collisionClassByFighter
          ? _value.collisionClassByFighter
          : collisionClassByFighter // ignore: cast_nullable_to_non_nullable
              as String?,
      pierceSet: freezed == pierceSet
          ? _value.pierceSet
          : pierceSet // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      autofire: null == autofire
          ? _value.autofire
          : autofire // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      weapons: null == weapons
          ? _value.weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeaponMuzzleFlashSpecCopyWith<$Res>? get muzzleFlashSpec {
    if (_value.muzzleFlashSpec == null) {
      return null;
    }

    return $WeaponMuzzleFlashSpecCopyWith<$Res>(_value.muzzleFlashSpec!,
        (value) {
      return _then(_value.copyWith(muzzleFlashSpec: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeaponSmokeSpecCopyWith<$Res>? get smokeSpec {
    if (_value.smokeSpec == null) {
      return null;
    }

    return $WeaponSmokeSpecCopyWith<$Res>(_value.smokeSpec!, (value) {
      return _then(_value.copyWith(smokeSpec: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeaponJsonCopyWith<$Res>
    implements $WeaponJsonCopyWith<$Res> {
  factory _$$_WeaponJsonCopyWith(
          _$_WeaponJson value, $Res Function(_$_WeaponJson) then) =
      __$$_WeaponJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? specClass,
      String? type,
      String? size,
      String? turretSprite,
      String? hardpointSprite,
      List<double>? turretOffsets,
      List<double>? turretAngleOffsets,
      List<double>? hardpointOffsets,
      List<double>? hardpointAngleOffsets,
      List<double>? glowColor,
      String? projectileSpecId,
      String? barrelMode,
      List<double>? fringeColor,
      List<double>? coreColor,
      dynamic textureType,
      String? mountTypeOverride,
      String? turretUnderSprite,
      String? turretGunSprite,
      String? turretGlowSprite,
      String? hardpointUnderSprite,
      String? hardpointGunSprite,
      String? hardpointGlowSprite,
      String? fireSoundOne,
      String? fireSoundTwo,
      String? everyFrameEffect,
      bool? animateWhileFiring,
      @BoolConverter() bool? alwaysAnimate,
      int? numFrames,
      double? frameRate,
      Set<String>? renderHints,
      @BoolConverter() bool? renderBelowAllWeapons,
      @BoolConverter() bool? renderAboveAllWeapons,
      @BoolConverter() bool? showDamageWhenDecorative,
      double? displayArcRadius,
      double? specialWeaponGlowHeight,
      double? specialWeaponGlowWidth,
      String? animationType,
      double? visualRecoil,
      @BoolConverter() bool? separateRecoilForLinkedBarrels,
      @BoolConverter() bool? interruptibleBurst,
      @BoolConverter() bool? autocharge,
      @BoolConverter() bool? requiresFullCharge,
      WeaponMuzzleFlashSpec? muzzleFlashSpec,
      WeaponSmokeSpec? smokeSpec,
      @BoolConverter() bool? noImpactSounds,
      @BoolConverter() bool? noShieldImpactSounds,
      @BoolConverter() bool? noNonShieldImpactSounds,
      @BoolConverter() bool? unaffectedByProjectileSpeedBonuses,
      String? beamEffect,
      @BoolConverter() bool? beamFireOnlyOnFullCharge,
      @BoolConverter() bool? convergeOnPoint,
      double? width,
      double? textureScrollSpeed,
      double? pixelsPerTexel,
      double? hitGlowRadius,
      @BoolConverter() bool? darkCore,
      int? darkFringeIter,
      int? darkCoreIter,
      double? coreWidthMult,
      String? collisionClass,
      String? collisionClassByFighter,
      Set<String>? pierceSet,
      @BoolConverter() bool autofire,
      String mode,
      Map<String, String> weapons});

  @override
  $WeaponMuzzleFlashSpecCopyWith<$Res>? get muzzleFlashSpec;
  @override
  $WeaponSmokeSpecCopyWith<$Res>? get smokeSpec;
}

/// @nodoc
class __$$_WeaponJsonCopyWithImpl<$Res>
    extends _$WeaponJsonCopyWithImpl<$Res, _$_WeaponJson>
    implements _$$_WeaponJsonCopyWith<$Res> {
  __$$_WeaponJsonCopyWithImpl(
      _$_WeaponJson _value, $Res Function(_$_WeaponJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? specClass = freezed,
    Object? type = freezed,
    Object? size = freezed,
    Object? turretSprite = freezed,
    Object? hardpointSprite = freezed,
    Object? turretOffsets = freezed,
    Object? turretAngleOffsets = freezed,
    Object? hardpointOffsets = freezed,
    Object? hardpointAngleOffsets = freezed,
    Object? glowColor = freezed,
    Object? projectileSpecId = freezed,
    Object? barrelMode = freezed,
    Object? fringeColor = freezed,
    Object? coreColor = freezed,
    Object? textureType = freezed,
    Object? mountTypeOverride = freezed,
    Object? turretUnderSprite = freezed,
    Object? turretGunSprite = freezed,
    Object? turretGlowSprite = freezed,
    Object? hardpointUnderSprite = freezed,
    Object? hardpointGunSprite = freezed,
    Object? hardpointGlowSprite = freezed,
    Object? fireSoundOne = freezed,
    Object? fireSoundTwo = freezed,
    Object? everyFrameEffect = freezed,
    Object? animateWhileFiring = freezed,
    Object? alwaysAnimate = freezed,
    Object? numFrames = freezed,
    Object? frameRate = freezed,
    Object? renderHints = freezed,
    Object? renderBelowAllWeapons = freezed,
    Object? renderAboveAllWeapons = freezed,
    Object? showDamageWhenDecorative = freezed,
    Object? displayArcRadius = freezed,
    Object? specialWeaponGlowHeight = freezed,
    Object? specialWeaponGlowWidth = freezed,
    Object? animationType = freezed,
    Object? visualRecoil = freezed,
    Object? separateRecoilForLinkedBarrels = freezed,
    Object? interruptibleBurst = freezed,
    Object? autocharge = freezed,
    Object? requiresFullCharge = freezed,
    Object? muzzleFlashSpec = freezed,
    Object? smokeSpec = freezed,
    Object? noImpactSounds = freezed,
    Object? noShieldImpactSounds = freezed,
    Object? noNonShieldImpactSounds = freezed,
    Object? unaffectedByProjectileSpeedBonuses = freezed,
    Object? beamEffect = freezed,
    Object? beamFireOnlyOnFullCharge = freezed,
    Object? convergeOnPoint = freezed,
    Object? width = freezed,
    Object? textureScrollSpeed = freezed,
    Object? pixelsPerTexel = freezed,
    Object? hitGlowRadius = freezed,
    Object? darkCore = freezed,
    Object? darkFringeIter = freezed,
    Object? darkCoreIter = freezed,
    Object? coreWidthMult = freezed,
    Object? collisionClass = freezed,
    Object? collisionClassByFighter = freezed,
    Object? pierceSet = freezed,
    Object? autofire = null,
    Object? mode = null,
    Object? weapons = null,
  }) {
    return _then(_$_WeaponJson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      specClass: freezed == specClass
          ? _value.specClass
          : specClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      turretSprite: freezed == turretSprite
          ? _value.turretSprite
          : turretSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointSprite: freezed == hardpointSprite
          ? _value.hardpointSprite
          : hardpointSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretOffsets: freezed == turretOffsets
          ? _value._turretOffsets
          : turretOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      turretAngleOffsets: freezed == turretAngleOffsets
          ? _value._turretAngleOffsets
          : turretAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointOffsets: freezed == hardpointOffsets
          ? _value._hardpointOffsets
          : hardpointOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointAngleOffsets: freezed == hardpointAngleOffsets
          ? _value._hardpointAngleOffsets
          : hardpointAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      glowColor: freezed == glowColor
          ? _value._glowColor
          : glowColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      projectileSpecId: freezed == projectileSpecId
          ? _value.projectileSpecId
          : projectileSpecId // ignore: cast_nullable_to_non_nullable
              as String?,
      barrelMode: freezed == barrelMode
          ? _value.barrelMode
          : barrelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      fringeColor: freezed == fringeColor
          ? _value._fringeColor
          : fringeColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      coreColor: freezed == coreColor
          ? _value._coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      textureType: freezed == textureType
          ? _value.textureType
          : textureType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mountTypeOverride: freezed == mountTypeOverride
          ? _value.mountTypeOverride
          : mountTypeOverride // ignore: cast_nullable_to_non_nullable
              as String?,
      turretUnderSprite: freezed == turretUnderSprite
          ? _value.turretUnderSprite
          : turretUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGunSprite: freezed == turretGunSprite
          ? _value.turretGunSprite
          : turretGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGlowSprite: freezed == turretGlowSprite
          ? _value.turretGlowSprite
          : turretGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointUnderSprite: freezed == hardpointUnderSprite
          ? _value.hardpointUnderSprite
          : hardpointUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGunSprite: freezed == hardpointGunSprite
          ? _value.hardpointGunSprite
          : hardpointGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGlowSprite: freezed == hardpointGlowSprite
          ? _value.hardpointGlowSprite
          : hardpointGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundOne: freezed == fireSoundOne
          ? _value.fireSoundOne
          : fireSoundOne // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundTwo: freezed == fireSoundTwo
          ? _value.fireSoundTwo
          : fireSoundTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      everyFrameEffect: freezed == everyFrameEffect
          ? _value.everyFrameEffect
          : everyFrameEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      animateWhileFiring: freezed == animateWhileFiring
          ? _value.animateWhileFiring
          : animateWhileFiring // ignore: cast_nullable_to_non_nullable
              as bool?,
      alwaysAnimate: freezed == alwaysAnimate
          ? _value.alwaysAnimate
          : alwaysAnimate // ignore: cast_nullable_to_non_nullable
              as bool?,
      numFrames: freezed == numFrames
          ? _value.numFrames
          : numFrames // ignore: cast_nullable_to_non_nullable
              as int?,
      frameRate: freezed == frameRate
          ? _value.frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      renderHints: freezed == renderHints
          ? _value._renderHints
          : renderHints // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      renderBelowAllWeapons: freezed == renderBelowAllWeapons
          ? _value.renderBelowAllWeapons
          : renderBelowAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      renderAboveAllWeapons: freezed == renderAboveAllWeapons
          ? _value.renderAboveAllWeapons
          : renderAboveAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      showDamageWhenDecorative: freezed == showDamageWhenDecorative
          ? _value.showDamageWhenDecorative
          : showDamageWhenDecorative // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayArcRadius: freezed == displayArcRadius
          ? _value.displayArcRadius
          : displayArcRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowHeight: freezed == specialWeaponGlowHeight
          ? _value.specialWeaponGlowHeight
          : specialWeaponGlowHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowWidth: freezed == specialWeaponGlowWidth
          ? _value.specialWeaponGlowWidth
          : specialWeaponGlowWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      animationType: freezed == animationType
          ? _value.animationType
          : animationType // ignore: cast_nullable_to_non_nullable
              as String?,
      visualRecoil: freezed == visualRecoil
          ? _value.visualRecoil
          : visualRecoil // ignore: cast_nullable_to_non_nullable
              as double?,
      separateRecoilForLinkedBarrels: freezed == separateRecoilForLinkedBarrels
          ? _value.separateRecoilForLinkedBarrels
          : separateRecoilForLinkedBarrels // ignore: cast_nullable_to_non_nullable
              as bool?,
      interruptibleBurst: freezed == interruptibleBurst
          ? _value.interruptibleBurst
          : interruptibleBurst // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocharge: freezed == autocharge
          ? _value.autocharge
          : autocharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresFullCharge: freezed == requiresFullCharge
          ? _value.requiresFullCharge
          : requiresFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      muzzleFlashSpec: freezed == muzzleFlashSpec
          ? _value.muzzleFlashSpec
          : muzzleFlashSpec // ignore: cast_nullable_to_non_nullable
              as WeaponMuzzleFlashSpec?,
      smokeSpec: freezed == smokeSpec
          ? _value.smokeSpec
          : smokeSpec // ignore: cast_nullable_to_non_nullable
              as WeaponSmokeSpec?,
      noImpactSounds: freezed == noImpactSounds
          ? _value.noImpactSounds
          : noImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noShieldImpactSounds: freezed == noShieldImpactSounds
          ? _value.noShieldImpactSounds
          : noShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noNonShieldImpactSounds: freezed == noNonShieldImpactSounds
          ? _value.noNonShieldImpactSounds
          : noNonShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      unaffectedByProjectileSpeedBonuses: freezed ==
              unaffectedByProjectileSpeedBonuses
          ? _value.unaffectedByProjectileSpeedBonuses
          : unaffectedByProjectileSpeedBonuses // ignore: cast_nullable_to_non_nullable
              as bool?,
      beamEffect: freezed == beamEffect
          ? _value.beamEffect
          : beamEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      beamFireOnlyOnFullCharge: freezed == beamFireOnlyOnFullCharge
          ? _value.beamFireOnlyOnFullCharge
          : beamFireOnlyOnFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      convergeOnPoint: freezed == convergeOnPoint
          ? _value.convergeOnPoint
          : convergeOnPoint // ignore: cast_nullable_to_non_nullable
              as bool?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      textureScrollSpeed: freezed == textureScrollSpeed
          ? _value.textureScrollSpeed
          : textureScrollSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      pixelsPerTexel: freezed == pixelsPerTexel
          ? _value.pixelsPerTexel
          : pixelsPerTexel // ignore: cast_nullable_to_non_nullable
              as double?,
      hitGlowRadius: freezed == hitGlowRadius
          ? _value.hitGlowRadius
          : hitGlowRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      darkCore: freezed == darkCore
          ? _value.darkCore
          : darkCore // ignore: cast_nullable_to_non_nullable
              as bool?,
      darkFringeIter: freezed == darkFringeIter
          ? _value.darkFringeIter
          : darkFringeIter // ignore: cast_nullable_to_non_nullable
              as int?,
      darkCoreIter: freezed == darkCoreIter
          ? _value.darkCoreIter
          : darkCoreIter // ignore: cast_nullable_to_non_nullable
              as int?,
      coreWidthMult: freezed == coreWidthMult
          ? _value.coreWidthMult
          : coreWidthMult // ignore: cast_nullable_to_non_nullable
              as double?,
      collisionClass: freezed == collisionClass
          ? _value.collisionClass
          : collisionClass // ignore: cast_nullable_to_non_nullable
              as String?,
      collisionClassByFighter: freezed == collisionClassByFighter
          ? _value.collisionClassByFighter
          : collisionClassByFighter // ignore: cast_nullable_to_non_nullable
              as String?,
      pierceSet: freezed == pierceSet
          ? _value._pierceSet
          : pierceSet // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      autofire: null == autofire
          ? _value.autofire
          : autofire // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      weapons: null == weapons
          ? _value._weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeaponJson implements _WeaponJson {
  _$_WeaponJson(
      {this.id = "new_weapon",
      this.specClass = "projectile",
      this.type = "ENERGY",
      this.size = "SMALL",
      this.turretSprite = "",
      this.hardpointSprite = "",
      final List<double>? turretOffsets = const [0.0, 0.0],
      final List<double>? turretAngleOffsets = const [0.0],
      final List<double>? hardpointOffsets = const [0.0, 0.0],
      final List<double>? hardpointAngleOffsets = const [0.0],
      final List<double>? glowColor = const [255.0, 255.0, 255.0, 255.0],
      this.projectileSpecId = "",
      this.barrelMode = "ALTERNATING",
      final List<double>? fringeColor = const [255.0, 255.0, 255.0, 255.0],
      final List<double>? coreColor = const [255.0, 255.0, 255.0, 255.0],
      this.textureType = "ROUGH",
      this.mountTypeOverride = "",
      this.turretUnderSprite = "",
      this.turretGunSprite = "",
      this.turretGlowSprite = "",
      this.hardpointUnderSprite = "",
      this.hardpointGunSprite = "",
      this.hardpointGlowSprite = "",
      this.fireSoundOne = "",
      this.fireSoundTwo = "",
      this.everyFrameEffect = "",
      this.animateWhileFiring = true,
      @BoolConverter() this.alwaysAnimate = false,
      this.numFrames = 1,
      this.frameRate = 1.0,
      final Set<String>? renderHints = const {},
      @BoolConverter() this.renderBelowAllWeapons = false,
      @BoolConverter() this.renderAboveAllWeapons = false,
      @BoolConverter() this.showDamageWhenDecorative = false,
      this.displayArcRadius = 0.0,
      this.specialWeaponGlowHeight = 0.0,
      this.specialWeaponGlowWidth = 0.0,
      this.animationType = "NONE",
      this.visualRecoil = 0.0,
      @BoolConverter() this.separateRecoilForLinkedBarrels = false,
      @BoolConverter() this.interruptibleBurst = false,
      @BoolConverter() this.autocharge = false,
      @BoolConverter() this.requiresFullCharge = true,
      this.muzzleFlashSpec,
      this.smokeSpec,
      @BoolConverter() this.noImpactSounds = false,
      @BoolConverter() this.noShieldImpactSounds = false,
      @BoolConverter() this.noNonShieldImpactSounds = false,
      @BoolConverter() this.unaffectedByProjectileSpeedBonuses = false,
      this.beamEffect = "",
      @BoolConverter() this.beamFireOnlyOnFullCharge = false,
      @BoolConverter() this.convergeOnPoint = false,
      this.width = 10.0,
      this.textureScrollSpeed = 64.0,
      this.pixelsPerTexel = 1.0,
      this.hitGlowRadius = 0.0,
      @BoolConverter() this.darkCore = false,
      this.darkFringeIter = 0,
      this.darkCoreIter = 0,
      this.coreWidthMult = 0.0,
      this.collisionClass = "RAY",
      this.collisionClassByFighter = "RAY_FIGHTER",
      final Set<String>? pierceSet = const {},
      @BoolConverter() this.autofire = false,
      this.mode = "",
      final Map<String, String> weapons = const {}})
      : _turretOffsets = turretOffsets,
        _turretAngleOffsets = turretAngleOffsets,
        _hardpointOffsets = hardpointOffsets,
        _hardpointAngleOffsets = hardpointAngleOffsets,
        _glowColor = glowColor,
        _fringeColor = fringeColor,
        _coreColor = coreColor,
        _renderHints = renderHints,
        _pierceSet = pierceSet,
        _weapons = weapons;

  factory _$_WeaponJson.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponJsonFromJson(json);

// there are only two type of weapon for now.
// specClass = projectile Or specClass = beam
// essential to both
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String? specClass;
  @override
  @JsonKey()
  final String? type;
  @override
  @JsonKey()
  final String? size;
  @override
  @JsonKey()
  final String? turretSprite;
  @override
  @JsonKey()
  final String? hardpointSprite;
  final List<double>? _turretOffsets;
  @override
  @JsonKey()
  List<double>? get turretOffsets {
    final value = _turretOffsets;
    if (value == null) return null;
    if (_turretOffsets is EqualUnmodifiableListView) return _turretOffsets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _turretAngleOffsets;
  @override
  @JsonKey()
  List<double>? get turretAngleOffsets {
    final value = _turretAngleOffsets;
    if (value == null) return null;
    if (_turretAngleOffsets is EqualUnmodifiableListView)
      return _turretAngleOffsets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _hardpointOffsets;
  @override
  @JsonKey()
  List<double>? get hardpointOffsets {
    final value = _hardpointOffsets;
    if (value == null) return null;
    if (_hardpointOffsets is EqualUnmodifiableListView)
      return _hardpointOffsets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _hardpointAngleOffsets;
  @override
  @JsonKey()
  List<double>? get hardpointAngleOffsets {
    final value = _hardpointAngleOffsets;
    if (value == null) return null;
    if (_hardpointAngleOffsets is EqualUnmodifiableListView)
      return _hardpointAngleOffsets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _glowColor;
  @override
  @JsonKey()
  List<double>? get glowColor {
    final value = _glowColor;
    if (value == null) return null;
    if (_glowColor is EqualUnmodifiableListView) return _glowColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// essential to projectile
  @override
  @JsonKey()
  final String? projectileSpecId;
  @override
  @JsonKey()
  final String? barrelMode;
// essential to beam
  final List<double>? _fringeColor;
// essential to beam
  @override
  @JsonKey()
  List<double>? get fringeColor {
    final value = _fringeColor;
    if (value == null) return null;
    if (_fringeColor is EqualUnmodifiableListView) return _fringeColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _coreColor;
  @override
  @JsonKey()
  List<double>? get coreColor {
    final value = _coreColor;
    if (value == null) return null;
    if (_coreColor is EqualUnmodifiableListView) return _coreColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Enum or `Set<String>`
  @override
  @JsonKey()
  final dynamic textureType;
// TEnum or TString[]
// optional
  @override
  @JsonKey()
  final String? mountTypeOverride;
// 0.95.1 new
  @override
  @JsonKey()
  final String? turretUnderSprite;
  @override
  @JsonKey()
  final String? turretGunSprite;
  @override
  @JsonKey()
  final String? turretGlowSprite;
  @override
  @JsonKey()
  final String? hardpointUnderSprite;
  @override
  @JsonKey()
  final String? hardpointGunSprite;
  @override
  @JsonKey()
  final String? hardpointGlowSprite;
  @override
  @JsonKey()
  final String? fireSoundOne;
  @override
  @JsonKey()
  final String? fireSoundTwo;
  @override
  @JsonKey()
  final String? everyFrameEffect;
  @override
  @JsonKey()
  final bool? animateWhileFiring;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? alwaysAnimate;
  @override
  @JsonKey()
  final int? numFrames;
  @override
  @JsonKey()
  final double? frameRate;
  final Set<String>? _renderHints;
  @override
  @JsonKey()
  Set<String>? get renderHints {
    final value = _renderHints;
    if (value == null) return null;
    if (_renderHints is EqualUnmodifiableSetView) return _renderHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  @BoolConverter()
  final bool? renderBelowAllWeapons;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? renderAboveAllWeapons;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? showDamageWhenDecorative;
  @override
  @JsonKey()
  final double? displayArcRadius;
// default is 250 but meh
  @override
  @JsonKey()
  final double? specialWeaponGlowHeight;
// default is 0 but meh
  @override
  @JsonKey()
  final double? specialWeaponGlowWidth;
// default is 0 but meh
// optional, projectile only
  @override
  @JsonKey()
  final String? animationType;
  @override
  @JsonKey()
  final double? visualRecoil;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? separateRecoilForLinkedBarrels;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? interruptibleBurst;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? autocharge;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? requiresFullCharge;
  @override
  final WeaponMuzzleFlashSpec? muzzleFlashSpec;
  @override
  final WeaponSmokeSpec? smokeSpec;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? noImpactSounds;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? noShieldImpactSounds;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? noNonShieldImpactSounds;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? unaffectedByProjectileSpeedBonuses;
// 0.95 new
// optional, beam only
  @override
  @JsonKey()
  final String? beamEffect;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? beamFireOnlyOnFullCharge;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? convergeOnPoint;
  @override
  @JsonKey()
  final double? width;
  @override
  @JsonKey()
  final double? textureScrollSpeed;
  @override
  @JsonKey()
  final double? pixelsPerTexel;
  @override
  @JsonKey()
  final double? hitGlowRadius;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? darkCore;
  @override
  @JsonKey()
  final int? darkFringeIter;
// 0.95 new
  @override
  @JsonKey()
  final int? darkCoreIter;
// 0.95 new
  @override
  @JsonKey()
  final double? coreWidthMult;
// 0.95 new
  @override
  @JsonKey()
  final String? collisionClass;
  @override
  @JsonKey()
  final String? collisionClassByFighter;
  final Set<String>? _pierceSet;
  @override
  @JsonKey()
  Set<String>? get pierceSet {
    final value = _pierceSet;
    if (value == null) return null;
    if (_pierceSet is EqualUnmodifiableSetView) return _pierceSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  @BoolConverter()
  final bool autofire;
  @override
  @JsonKey()
  final String mode;
  final Map<String, String> _weapons;
  @override
  @JsonKey()
  Map<String, String> get weapons {
    if (_weapons is EqualUnmodifiableMapView) return _weapons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weapons);
  }

  @override
  String toString() {
    return 'WeaponJson(id: $id, specClass: $specClass, type: $type, size: $size, turretSprite: $turretSprite, hardpointSprite: $hardpointSprite, turretOffsets: $turretOffsets, turretAngleOffsets: $turretAngleOffsets, hardpointOffsets: $hardpointOffsets, hardpointAngleOffsets: $hardpointAngleOffsets, glowColor: $glowColor, projectileSpecId: $projectileSpecId, barrelMode: $barrelMode, fringeColor: $fringeColor, coreColor: $coreColor, textureType: $textureType, mountTypeOverride: $mountTypeOverride, turretUnderSprite: $turretUnderSprite, turretGunSprite: $turretGunSprite, turretGlowSprite: $turretGlowSprite, hardpointUnderSprite: $hardpointUnderSprite, hardpointGunSprite: $hardpointGunSprite, hardpointGlowSprite: $hardpointGlowSprite, fireSoundOne: $fireSoundOne, fireSoundTwo: $fireSoundTwo, everyFrameEffect: $everyFrameEffect, animateWhileFiring: $animateWhileFiring, alwaysAnimate: $alwaysAnimate, numFrames: $numFrames, frameRate: $frameRate, renderHints: $renderHints, renderBelowAllWeapons: $renderBelowAllWeapons, renderAboveAllWeapons: $renderAboveAllWeapons, showDamageWhenDecorative: $showDamageWhenDecorative, displayArcRadius: $displayArcRadius, specialWeaponGlowHeight: $specialWeaponGlowHeight, specialWeaponGlowWidth: $specialWeaponGlowWidth, animationType: $animationType, visualRecoil: $visualRecoil, separateRecoilForLinkedBarrels: $separateRecoilForLinkedBarrels, interruptibleBurst: $interruptibleBurst, autocharge: $autocharge, requiresFullCharge: $requiresFullCharge, muzzleFlashSpec: $muzzleFlashSpec, smokeSpec: $smokeSpec, noImpactSounds: $noImpactSounds, noShieldImpactSounds: $noShieldImpactSounds, noNonShieldImpactSounds: $noNonShieldImpactSounds, unaffectedByProjectileSpeedBonuses: $unaffectedByProjectileSpeedBonuses, beamEffect: $beamEffect, beamFireOnlyOnFullCharge: $beamFireOnlyOnFullCharge, convergeOnPoint: $convergeOnPoint, width: $width, textureScrollSpeed: $textureScrollSpeed, pixelsPerTexel: $pixelsPerTexel, hitGlowRadius: $hitGlowRadius, darkCore: $darkCore, darkFringeIter: $darkFringeIter, darkCoreIter: $darkCoreIter, coreWidthMult: $coreWidthMult, collisionClass: $collisionClass, collisionClassByFighter: $collisionClassByFighter, pierceSet: $pierceSet, autofire: $autofire, mode: $mode, weapons: $weapons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeaponJson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.specClass, specClass) ||
                other.specClass == specClass) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.turretSprite, turretSprite) ||
                other.turretSprite == turretSprite) &&
            (identical(other.hardpointSprite, hardpointSprite) ||
                other.hardpointSprite == hardpointSprite) &&
            const DeepCollectionEquality()
                .equals(other._turretOffsets, _turretOffsets) &&
            const DeepCollectionEquality()
                .equals(other._turretAngleOffsets, _turretAngleOffsets) &&
            const DeepCollectionEquality()
                .equals(other._hardpointOffsets, _hardpointOffsets) &&
            const DeepCollectionEquality()
                .equals(other._hardpointAngleOffsets, _hardpointAngleOffsets) &&
            const DeepCollectionEquality()
                .equals(other._glowColor, _glowColor) &&
            (identical(other.projectileSpecId, projectileSpecId) ||
                other.projectileSpecId == projectileSpecId) &&
            (identical(other.barrelMode, barrelMode) ||
                other.barrelMode == barrelMode) &&
            const DeepCollectionEquality()
                .equals(other._fringeColor, _fringeColor) &&
            const DeepCollectionEquality()
                .equals(other._coreColor, _coreColor) &&
            const DeepCollectionEquality()
                .equals(other.textureType, textureType) &&
            (identical(other.mountTypeOverride, mountTypeOverride) ||
                other.mountTypeOverride == mountTypeOverride) &&
            (identical(other.turretUnderSprite, turretUnderSprite) ||
                other.turretUnderSprite == turretUnderSprite) &&
            (identical(other.turretGunSprite, turretGunSprite) ||
                other.turretGunSprite == turretGunSprite) &&
            (identical(other.turretGlowSprite, turretGlowSprite) ||
                other.turretGlowSprite == turretGlowSprite) &&
            (identical(other.hardpointUnderSprite, hardpointUnderSprite) ||
                other.hardpointUnderSprite == hardpointUnderSprite) &&
            (identical(other.hardpointGunSprite, hardpointGunSprite) ||
                other.hardpointGunSprite == hardpointGunSprite) &&
            (identical(other.hardpointGlowSprite, hardpointGlowSprite) ||
                other.hardpointGlowSprite == hardpointGlowSprite) &&
            (identical(other.fireSoundOne, fireSoundOne) ||
                other.fireSoundOne == fireSoundOne) &&
            (identical(other.fireSoundTwo, fireSoundTwo) ||
                other.fireSoundTwo == fireSoundTwo) &&
            (identical(other.everyFrameEffect, everyFrameEffect) ||
                other.everyFrameEffect == everyFrameEffect) &&
            (identical(other.animateWhileFiring, animateWhileFiring) ||
                other.animateWhileFiring == animateWhileFiring) &&
            (identical(other.alwaysAnimate, alwaysAnimate) ||
                other.alwaysAnimate == alwaysAnimate) &&
            (identical(other.numFrames, numFrames) ||
                other.numFrames == numFrames) &&
            (identical(other.frameRate, frameRate) ||
                other.frameRate == frameRate) &&
            const DeepCollectionEquality()
                .equals(other._renderHints, _renderHints) &&
            (identical(other.renderBelowAllWeapons, renderBelowAllWeapons) ||
                other.renderBelowAllWeapons == renderBelowAllWeapons) &&
            (identical(other.renderAboveAllWeapons, renderAboveAllWeapons) ||
                other.renderAboveAllWeapons == renderAboveAllWeapons) &&
            (identical(other.showDamageWhenDecorative, showDamageWhenDecorative) ||
                other.showDamageWhenDecorative == showDamageWhenDecorative) &&
            (identical(other.displayArcRadius, displayArcRadius) ||
                other.displayArcRadius == displayArcRadius) &&
            (identical(other.specialWeaponGlowHeight, specialWeaponGlowHeight) ||
                other.specialWeaponGlowHeight == specialWeaponGlowHeight) &&
            (identical(other.specialWeaponGlowWidth, specialWeaponGlowWidth) ||
                other.specialWeaponGlowWidth == specialWeaponGlowWidth) &&
            (identical(other.animationType, animationType) ||
                other.animationType == animationType) &&
            (identical(other.visualRecoil, visualRecoil) ||
                other.visualRecoil == visualRecoil) &&
            (identical(other.separateRecoilForLinkedBarrels, separateRecoilForLinkedBarrels) ||
                other.separateRecoilForLinkedBarrels ==
                    separateRecoilForLinkedBarrels) &&
            (identical(other.interruptibleBurst, interruptibleBurst) ||
                other.interruptibleBurst == interruptibleBurst) &&
            (identical(other.autocharge, autocharge) ||
                other.autocharge == autocharge) &&
            (identical(other.requiresFullCharge, requiresFullCharge) ||
                other.requiresFullCharge == requiresFullCharge) &&
            (identical(other.muzzleFlashSpec, muzzleFlashSpec) ||
                other.muzzleFlashSpec == muzzleFlashSpec) &&
            (identical(other.smokeSpec, smokeSpec) || other.smokeSpec == smokeSpec) &&
            (identical(other.noImpactSounds, noImpactSounds) || other.noImpactSounds == noImpactSounds) &&
            (identical(other.noShieldImpactSounds, noShieldImpactSounds) || other.noShieldImpactSounds == noShieldImpactSounds) &&
            (identical(other.noNonShieldImpactSounds, noNonShieldImpactSounds) || other.noNonShieldImpactSounds == noNonShieldImpactSounds) &&
            (identical(other.unaffectedByProjectileSpeedBonuses, unaffectedByProjectileSpeedBonuses) || other.unaffectedByProjectileSpeedBonuses == unaffectedByProjectileSpeedBonuses) &&
            (identical(other.beamEffect, beamEffect) || other.beamEffect == beamEffect) &&
            (identical(other.beamFireOnlyOnFullCharge, beamFireOnlyOnFullCharge) || other.beamFireOnlyOnFullCharge == beamFireOnlyOnFullCharge) &&
            (identical(other.convergeOnPoint, convergeOnPoint) || other.convergeOnPoint == convergeOnPoint) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.textureScrollSpeed, textureScrollSpeed) || other.textureScrollSpeed == textureScrollSpeed) &&
            (identical(other.pixelsPerTexel, pixelsPerTexel) || other.pixelsPerTexel == pixelsPerTexel) &&
            (identical(other.hitGlowRadius, hitGlowRadius) || other.hitGlowRadius == hitGlowRadius) &&
            (identical(other.darkCore, darkCore) || other.darkCore == darkCore) &&
            (identical(other.darkFringeIter, darkFringeIter) || other.darkFringeIter == darkFringeIter) &&
            (identical(other.darkCoreIter, darkCoreIter) || other.darkCoreIter == darkCoreIter) &&
            (identical(other.coreWidthMult, coreWidthMult) || other.coreWidthMult == coreWidthMult) &&
            (identical(other.collisionClass, collisionClass) || other.collisionClass == collisionClass) &&
            (identical(other.collisionClassByFighter, collisionClassByFighter) || other.collisionClassByFighter == collisionClassByFighter) &&
            const DeepCollectionEquality().equals(other._pierceSet, _pierceSet) &&
            (identical(other.autofire, autofire) || other.autofire == autofire) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality().equals(other._weapons, _weapons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        specClass,
        type,
        size,
        turretSprite,
        hardpointSprite,
        const DeepCollectionEquality().hash(_turretOffsets),
        const DeepCollectionEquality().hash(_turretAngleOffsets),
        const DeepCollectionEquality().hash(_hardpointOffsets),
        const DeepCollectionEquality().hash(_hardpointAngleOffsets),
        const DeepCollectionEquality().hash(_glowColor),
        projectileSpecId,
        barrelMode,
        const DeepCollectionEquality().hash(_fringeColor),
        const DeepCollectionEquality().hash(_coreColor),
        const DeepCollectionEquality().hash(textureType),
        mountTypeOverride,
        turretUnderSprite,
        turretGunSprite,
        turretGlowSprite,
        hardpointUnderSprite,
        hardpointGunSprite,
        hardpointGlowSprite,
        fireSoundOne,
        fireSoundTwo,
        everyFrameEffect,
        animateWhileFiring,
        alwaysAnimate,
        numFrames,
        frameRate,
        const DeepCollectionEquality().hash(_renderHints),
        renderBelowAllWeapons,
        renderAboveAllWeapons,
        showDamageWhenDecorative,
        displayArcRadius,
        specialWeaponGlowHeight,
        specialWeaponGlowWidth,
        animationType,
        visualRecoil,
        separateRecoilForLinkedBarrels,
        interruptibleBurst,
        autocharge,
        requiresFullCharge,
        muzzleFlashSpec,
        smokeSpec,
        noImpactSounds,
        noShieldImpactSounds,
        noNonShieldImpactSounds,
        unaffectedByProjectileSpeedBonuses,
        beamEffect,
        beamFireOnlyOnFullCharge,
        convergeOnPoint,
        width,
        textureScrollSpeed,
        pixelsPerTexel,
        hitGlowRadius,
        darkCore,
        darkFringeIter,
        darkCoreIter,
        coreWidthMult,
        collisionClass,
        collisionClassByFighter,
        const DeepCollectionEquality().hash(_pierceSet),
        autofire,
        mode,
        const DeepCollectionEquality().hash(_weapons)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeaponJsonCopyWith<_$_WeaponJson> get copyWith =>
      __$$_WeaponJsonCopyWithImpl<_$_WeaponJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponJsonToJson(
      this,
    );
  }
}

abstract class _WeaponJson implements WeaponJson {
  factory _WeaponJson(
      {final String id,
      final String? specClass,
      final String? type,
      final String? size,
      final String? turretSprite,
      final String? hardpointSprite,
      final List<double>? turretOffsets,
      final List<double>? turretAngleOffsets,
      final List<double>? hardpointOffsets,
      final List<double>? hardpointAngleOffsets,
      final List<double>? glowColor,
      final String? projectileSpecId,
      final String? barrelMode,
      final List<double>? fringeColor,
      final List<double>? coreColor,
      final dynamic textureType,
      final String? mountTypeOverride,
      final String? turretUnderSprite,
      final String? turretGunSprite,
      final String? turretGlowSprite,
      final String? hardpointUnderSprite,
      final String? hardpointGunSprite,
      final String? hardpointGlowSprite,
      final String? fireSoundOne,
      final String? fireSoundTwo,
      final String? everyFrameEffect,
      final bool? animateWhileFiring,
      @BoolConverter() final bool? alwaysAnimate,
      final int? numFrames,
      final double? frameRate,
      final Set<String>? renderHints,
      @BoolConverter() final bool? renderBelowAllWeapons,
      @BoolConverter() final bool? renderAboveAllWeapons,
      @BoolConverter() final bool? showDamageWhenDecorative,
      final double? displayArcRadius,
      final double? specialWeaponGlowHeight,
      final double? specialWeaponGlowWidth,
      final String? animationType,
      final double? visualRecoil,
      @BoolConverter() final bool? separateRecoilForLinkedBarrels,
      @BoolConverter() final bool? interruptibleBurst,
      @BoolConverter() final bool? autocharge,
      @BoolConverter() final bool? requiresFullCharge,
      final WeaponMuzzleFlashSpec? muzzleFlashSpec,
      final WeaponSmokeSpec? smokeSpec,
      @BoolConverter() final bool? noImpactSounds,
      @BoolConverter() final bool? noShieldImpactSounds,
      @BoolConverter() final bool? noNonShieldImpactSounds,
      @BoolConverter() final bool? unaffectedByProjectileSpeedBonuses,
      final String? beamEffect,
      @BoolConverter() final bool? beamFireOnlyOnFullCharge,
      @BoolConverter() final bool? convergeOnPoint,
      final double? width,
      final double? textureScrollSpeed,
      final double? pixelsPerTexel,
      final double? hitGlowRadius,
      @BoolConverter() final bool? darkCore,
      final int? darkFringeIter,
      final int? darkCoreIter,
      final double? coreWidthMult,
      final String? collisionClass,
      final String? collisionClassByFighter,
      final Set<String>? pierceSet,
      @BoolConverter() final bool autofire,
      final String mode,
      final Map<String, String> weapons}) = _$_WeaponJson;

  factory _WeaponJson.fromJson(Map<String, dynamic> json) =
      _$_WeaponJson.fromJson;

  @override // there are only two type of weapon for now.
// specClass = projectile Or specClass = beam
// essential to both
  String get id;
  @override
  String? get specClass;
  @override
  String? get type;
  @override
  String? get size;
  @override
  String? get turretSprite;
  @override
  String? get hardpointSprite;
  @override
  List<double>? get turretOffsets;
  @override
  List<double>? get turretAngleOffsets;
  @override
  List<double>? get hardpointOffsets;
  @override
  List<double>? get hardpointAngleOffsets;
  @override
  List<double>? get glowColor;
  @override // essential to projectile
  String? get projectileSpecId;
  @override
  String? get barrelMode;
  @override // essential to beam
  List<double>? get fringeColor;
  @override
  List<double>? get coreColor;
  @override

  /// Enum or `Set<String>`
  dynamic get textureType;
  @override // TEnum or TString[]
// optional
  String? get mountTypeOverride;
  @override // 0.95.1 new
  String? get turretUnderSprite;
  @override
  String? get turretGunSprite;
  @override
  String? get turretGlowSprite;
  @override
  String? get hardpointUnderSprite;
  @override
  String? get hardpointGunSprite;
  @override
  String? get hardpointGlowSprite;
  @override
  String? get fireSoundOne;
  @override
  String? get fireSoundTwo;
  @override
  String? get everyFrameEffect;
  @override
  bool? get animateWhileFiring;
  @override
  @BoolConverter()
  bool? get alwaysAnimate;
  @override
  int? get numFrames;
  @override
  double? get frameRate;
  @override
  Set<String>? get renderHints;
  @override
  @BoolConverter()
  bool? get renderBelowAllWeapons;
  @override
  @BoolConverter()
  bool? get renderAboveAllWeapons;
  @override
  @BoolConverter()
  bool? get showDamageWhenDecorative;
  @override
  double? get displayArcRadius;
  @override // default is 250 but meh
  double? get specialWeaponGlowHeight;
  @override // default is 0 but meh
  double? get specialWeaponGlowWidth;
  @override // default is 0 but meh
// optional, projectile only
  String? get animationType;
  @override
  double? get visualRecoil;
  @override
  @BoolConverter()
  bool? get separateRecoilForLinkedBarrels;
  @override
  @BoolConverter()
  bool? get interruptibleBurst;
  @override
  @BoolConverter()
  bool? get autocharge;
  @override
  @BoolConverter()
  bool? get requiresFullCharge;
  @override
  WeaponMuzzleFlashSpec? get muzzleFlashSpec;
  @override
  WeaponSmokeSpec? get smokeSpec;
  @override
  @BoolConverter()
  bool? get noImpactSounds;
  @override
  @BoolConverter()
  bool? get noShieldImpactSounds;
  @override
  @BoolConverter()
  bool? get noNonShieldImpactSounds;
  @override
  @BoolConverter()
  bool? get unaffectedByProjectileSpeedBonuses;
  @override // 0.95 new
// optional, beam only
  String? get beamEffect;
  @override
  @BoolConverter()
  bool? get beamFireOnlyOnFullCharge;
  @override
  @BoolConverter()
  bool? get convergeOnPoint;
  @override
  double? get width;
  @override
  double? get textureScrollSpeed;
  @override
  double? get pixelsPerTexel;
  @override
  double? get hitGlowRadius;
  @override
  @BoolConverter()
  bool? get darkCore;
  @override
  int? get darkFringeIter;
  @override // 0.95 new
  int? get darkCoreIter;
  @override // 0.95 new
  double? get coreWidthMult;
  @override // 0.95 new
  String? get collisionClass;
  @override
  String? get collisionClassByFighter;
  @override
  Set<String>? get pierceSet;
  @override
  @BoolConverter()
  bool get autofire;
  @override
  String get mode;
  @override
  Map<String, String> get weapons;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponJsonCopyWith<_$_WeaponJson> get copyWith =>
      throw _privateConstructorUsedError;
}
