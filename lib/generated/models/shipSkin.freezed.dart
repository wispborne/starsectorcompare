// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/shipSkin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipSkin _$ShipSkinFromJson(Map<String, dynamic> json) {
  return _ShipSkin.fromJson(json);
}

/// @nodoc
mixin _$ShipSkin {
  String? get baseHullId => throw _privateConstructorUsedError;
  String? get skinHullId => throw _privateConstructorUsedError;
  String? get hullName => throw _privateConstructorUsedError;
  bool? get restoreToBaseHull => throw _privateConstructorUsedError;
  String? get hullDesignation => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  String? get tech => throw _privateConstructorUsedError;
  String? get spriteName => throw _privateConstructorUsedError;
  String? get descriptionId => throw _privateConstructorUsedError;
  String? get descriptionPrefix => throw _privateConstructorUsedError;
  int? get fleetPoints => throw _privateConstructorUsedError;
  int? get fpMod => throw _privateConstructorUsedError;
  int? get fighterBays => throw _privateConstructorUsedError;
  int? get ordnancePoints => throw _privateConstructorUsedError;
  String? get systemId => throw _privateConstructorUsedError;
  int? get baseValue => throw _privateConstructorUsedError;
  double? get baseValueMult => throw _privateConstructorUsedError;
  List<String>? get removeHints => throw _privateConstructorUsedError;
  List<String>? get addHints => throw _privateConstructorUsedError;
  List<String>? get removeBuiltInMods =>
      throw _privateConstructorUsedError; // hullmod ids,
  List<String>? get builtInMods =>
      throw _privateConstructorUsedError; // hullmod ids,
  List<String>? get removeWeaponSlots =>
      throw _privateConstructorUsedError; // weapon slot id's,
  @AlexMapConverter()
  Map<String, ShipWeaponSlotChange>? get weaponSlotChanges =>
      throw _privateConstructorUsedError; //<String,TStarfarerShipWeaponChange>  weapon slot id --> TStarfarerShipWeapon,
  List<String>? get removeBuiltInWeapons =>
      throw _privateConstructorUsedError; // weapon slot id's,
  @AlexMapConverter()
  Map<String, String>? get builtInWeapons =>
      throw _privateConstructorUsedError; //<String,String>  weapon slot id --> weapon id,
  List<int>? get removeEngineSlots =>
      throw _privateConstructorUsedError; // engine slot indices (no id's),
  @AlexMapConverter()
  Map<String, ShipEngineSlotChange>? get engineSlotChanges =>
      throw _privateConstructorUsedError; //<String,TStarfarerShipEngineChange>  engine slot index (as string) --> TStarfarerShipEngine,
  List<int>? get coversColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipSkinCopyWith<ShipSkin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipSkinCopyWith<$Res> {
  factory $ShipSkinCopyWith(ShipSkin value, $Res Function(ShipSkin) then) =
      _$ShipSkinCopyWithImpl<$Res, ShipSkin>;
  @useResult
  $Res call(
      {String? baseHullId,
      String? skinHullId,
      String? hullName,
      bool? restoreToBaseHull,
      String? hullDesignation,
      String? manufacturer,
      String? tech,
      String? spriteName,
      String? descriptionId,
      String? descriptionPrefix,
      int? fleetPoints,
      int? fpMod,
      int? fighterBays,
      int? ordnancePoints,
      String? systemId,
      int? baseValue,
      double? baseValueMult,
      List<String>? removeHints,
      List<String>? addHints,
      List<String>? removeBuiltInMods,
      List<String>? builtInMods,
      List<String>? removeWeaponSlots,
      @AlexMapConverter() Map<String, ShipWeaponSlotChange>? weaponSlotChanges,
      List<String>? removeBuiltInWeapons,
      @AlexMapConverter() Map<String, String>? builtInWeapons,
      List<int>? removeEngineSlots,
      @AlexMapConverter() Map<String, ShipEngineSlotChange>? engineSlotChanges,
      List<int>? coversColor});
}

/// @nodoc
class _$ShipSkinCopyWithImpl<$Res, $Val extends ShipSkin>
    implements $ShipSkinCopyWith<$Res> {
  _$ShipSkinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseHullId = freezed,
    Object? skinHullId = freezed,
    Object? hullName = freezed,
    Object? restoreToBaseHull = freezed,
    Object? hullDesignation = freezed,
    Object? manufacturer = freezed,
    Object? tech = freezed,
    Object? spriteName = freezed,
    Object? descriptionId = freezed,
    Object? descriptionPrefix = freezed,
    Object? fleetPoints = freezed,
    Object? fpMod = freezed,
    Object? fighterBays = freezed,
    Object? ordnancePoints = freezed,
    Object? systemId = freezed,
    Object? baseValue = freezed,
    Object? baseValueMult = freezed,
    Object? removeHints = freezed,
    Object? addHints = freezed,
    Object? removeBuiltInMods = freezed,
    Object? builtInMods = freezed,
    Object? removeWeaponSlots = freezed,
    Object? weaponSlotChanges = freezed,
    Object? removeBuiltInWeapons = freezed,
    Object? builtInWeapons = freezed,
    Object? removeEngineSlots = freezed,
    Object? engineSlotChanges = freezed,
    Object? coversColor = freezed,
  }) {
    return _then(_value.copyWith(
      baseHullId: freezed == baseHullId
          ? _value.baseHullId
          : baseHullId // ignore: cast_nullable_to_non_nullable
              as String?,
      skinHullId: freezed == skinHullId
          ? _value.skinHullId
          : skinHullId // ignore: cast_nullable_to_non_nullable
              as String?,
      hullName: freezed == hullName
          ? _value.hullName
          : hullName // ignore: cast_nullable_to_non_nullable
              as String?,
      restoreToBaseHull: freezed == restoreToBaseHull
          ? _value.restoreToBaseHull
          : restoreToBaseHull // ignore: cast_nullable_to_non_nullable
              as bool?,
      hullDesignation: freezed == hullDesignation
          ? _value.hullDesignation
          : hullDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      tech: freezed == tech
          ? _value.tech
          : tech // ignore: cast_nullable_to_non_nullable
              as String?,
      spriteName: freezed == spriteName
          ? _value.spriteName
          : spriteName // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionId: freezed == descriptionId
          ? _value.descriptionId
          : descriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionPrefix: freezed == descriptionPrefix
          ? _value.descriptionPrefix
          : descriptionPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      fleetPoints: freezed == fleetPoints
          ? _value.fleetPoints
          : fleetPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      fpMod: freezed == fpMod
          ? _value.fpMod
          : fpMod // ignore: cast_nullable_to_non_nullable
              as int?,
      fighterBays: freezed == fighterBays
          ? _value.fighterBays
          : fighterBays // ignore: cast_nullable_to_non_nullable
              as int?,
      ordnancePoints: freezed == ordnancePoints
          ? _value.ordnancePoints
          : ordnancePoints // ignore: cast_nullable_to_non_nullable
              as int?,
      systemId: freezed == systemId
          ? _value.systemId
          : systemId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseValue: freezed == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as int?,
      baseValueMult: freezed == baseValueMult
          ? _value.baseValueMult
          : baseValueMult // ignore: cast_nullable_to_non_nullable
              as double?,
      removeHints: freezed == removeHints
          ? _value.removeHints
          : removeHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      addHints: freezed == addHints
          ? _value.addHints
          : addHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      removeBuiltInMods: freezed == removeBuiltInMods
          ? _value.removeBuiltInMods
          : removeBuiltInMods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      builtInMods: freezed == builtInMods
          ? _value.builtInMods
          : builtInMods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      removeWeaponSlots: freezed == removeWeaponSlots
          ? _value.removeWeaponSlots
          : removeWeaponSlots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weaponSlotChanges: freezed == weaponSlotChanges
          ? _value.weaponSlotChanges
          : weaponSlotChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, ShipWeaponSlotChange>?,
      removeBuiltInWeapons: freezed == removeBuiltInWeapons
          ? _value.removeBuiltInWeapons
          : removeBuiltInWeapons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      builtInWeapons: freezed == builtInWeapons
          ? _value.builtInWeapons
          : builtInWeapons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      removeEngineSlots: freezed == removeEngineSlots
          ? _value.removeEngineSlots
          : removeEngineSlots // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      engineSlotChanges: freezed == engineSlotChanges
          ? _value.engineSlotChanges
          : engineSlotChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, ShipEngineSlotChange>?,
      coversColor: freezed == coversColor
          ? _value.coversColor
          : coversColor // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipSkinCopyWith<$Res> implements $ShipSkinCopyWith<$Res> {
  factory _$$_ShipSkinCopyWith(
          _$_ShipSkin value, $Res Function(_$_ShipSkin) then) =
      __$$_ShipSkinCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? baseHullId,
      String? skinHullId,
      String? hullName,
      bool? restoreToBaseHull,
      String? hullDesignation,
      String? manufacturer,
      String? tech,
      String? spriteName,
      String? descriptionId,
      String? descriptionPrefix,
      int? fleetPoints,
      int? fpMod,
      int? fighterBays,
      int? ordnancePoints,
      String? systemId,
      int? baseValue,
      double? baseValueMult,
      List<String>? removeHints,
      List<String>? addHints,
      List<String>? removeBuiltInMods,
      List<String>? builtInMods,
      List<String>? removeWeaponSlots,
      @AlexMapConverter() Map<String, ShipWeaponSlotChange>? weaponSlotChanges,
      List<String>? removeBuiltInWeapons,
      @AlexMapConverter() Map<String, String>? builtInWeapons,
      List<int>? removeEngineSlots,
      @AlexMapConverter() Map<String, ShipEngineSlotChange>? engineSlotChanges,
      List<int>? coversColor});
}

/// @nodoc
class __$$_ShipSkinCopyWithImpl<$Res>
    extends _$ShipSkinCopyWithImpl<$Res, _$_ShipSkin>
    implements _$$_ShipSkinCopyWith<$Res> {
  __$$_ShipSkinCopyWithImpl(
      _$_ShipSkin _value, $Res Function(_$_ShipSkin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseHullId = freezed,
    Object? skinHullId = freezed,
    Object? hullName = freezed,
    Object? restoreToBaseHull = freezed,
    Object? hullDesignation = freezed,
    Object? manufacturer = freezed,
    Object? tech = freezed,
    Object? spriteName = freezed,
    Object? descriptionId = freezed,
    Object? descriptionPrefix = freezed,
    Object? fleetPoints = freezed,
    Object? fpMod = freezed,
    Object? fighterBays = freezed,
    Object? ordnancePoints = freezed,
    Object? systemId = freezed,
    Object? baseValue = freezed,
    Object? baseValueMult = freezed,
    Object? removeHints = freezed,
    Object? addHints = freezed,
    Object? removeBuiltInMods = freezed,
    Object? builtInMods = freezed,
    Object? removeWeaponSlots = freezed,
    Object? weaponSlotChanges = freezed,
    Object? removeBuiltInWeapons = freezed,
    Object? builtInWeapons = freezed,
    Object? removeEngineSlots = freezed,
    Object? engineSlotChanges = freezed,
    Object? coversColor = freezed,
  }) {
    return _then(_$_ShipSkin(
      baseHullId: freezed == baseHullId
          ? _value.baseHullId
          : baseHullId // ignore: cast_nullable_to_non_nullable
              as String?,
      skinHullId: freezed == skinHullId
          ? _value.skinHullId
          : skinHullId // ignore: cast_nullable_to_non_nullable
              as String?,
      hullName: freezed == hullName
          ? _value.hullName
          : hullName // ignore: cast_nullable_to_non_nullable
              as String?,
      restoreToBaseHull: freezed == restoreToBaseHull
          ? _value.restoreToBaseHull
          : restoreToBaseHull // ignore: cast_nullable_to_non_nullable
              as bool?,
      hullDesignation: freezed == hullDesignation
          ? _value.hullDesignation
          : hullDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      tech: freezed == tech
          ? _value.tech
          : tech // ignore: cast_nullable_to_non_nullable
              as String?,
      spriteName: freezed == spriteName
          ? _value.spriteName
          : spriteName // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionId: freezed == descriptionId
          ? _value.descriptionId
          : descriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionPrefix: freezed == descriptionPrefix
          ? _value.descriptionPrefix
          : descriptionPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      fleetPoints: freezed == fleetPoints
          ? _value.fleetPoints
          : fleetPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      fpMod: freezed == fpMod
          ? _value.fpMod
          : fpMod // ignore: cast_nullable_to_non_nullable
              as int?,
      fighterBays: freezed == fighterBays
          ? _value.fighterBays
          : fighterBays // ignore: cast_nullable_to_non_nullable
              as int?,
      ordnancePoints: freezed == ordnancePoints
          ? _value.ordnancePoints
          : ordnancePoints // ignore: cast_nullable_to_non_nullable
              as int?,
      systemId: freezed == systemId
          ? _value.systemId
          : systemId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseValue: freezed == baseValue
          ? _value.baseValue
          : baseValue // ignore: cast_nullable_to_non_nullable
              as int?,
      baseValueMult: freezed == baseValueMult
          ? _value.baseValueMult
          : baseValueMult // ignore: cast_nullable_to_non_nullable
              as double?,
      removeHints: freezed == removeHints
          ? _value._removeHints
          : removeHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      addHints: freezed == addHints
          ? _value._addHints
          : addHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      removeBuiltInMods: freezed == removeBuiltInMods
          ? _value._removeBuiltInMods
          : removeBuiltInMods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      builtInMods: freezed == builtInMods
          ? _value._builtInMods
          : builtInMods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      removeWeaponSlots: freezed == removeWeaponSlots
          ? _value._removeWeaponSlots
          : removeWeaponSlots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weaponSlotChanges: freezed == weaponSlotChanges
          ? _value._weaponSlotChanges
          : weaponSlotChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, ShipWeaponSlotChange>?,
      removeBuiltInWeapons: freezed == removeBuiltInWeapons
          ? _value._removeBuiltInWeapons
          : removeBuiltInWeapons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      builtInWeapons: freezed == builtInWeapons
          ? _value._builtInWeapons
          : builtInWeapons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      removeEngineSlots: freezed == removeEngineSlots
          ? _value._removeEngineSlots
          : removeEngineSlots // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      engineSlotChanges: freezed == engineSlotChanges
          ? _value._engineSlotChanges
          : engineSlotChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, ShipEngineSlotChange>?,
      coversColor: freezed == coversColor
          ? _value._coversColor
          : coversColor // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipSkin implements _ShipSkin {
  _$_ShipSkin(
      {this.baseHullId = "base_hull",
      this.skinHullId = "base_hull_skin",
      this.hullName = "Hull Skin",
      this.restoreToBaseHull = false,
      this.hullDesignation = "FRIGATE",
      this.manufacturer,
      this.tech,
      this.spriteName = "graphics/ships/skins/new_skin.png",
      this.descriptionId = "base_hull",
      this.descriptionPrefix,
      this.fleetPoints,
      this.fpMod,
      this.fighterBays,
      this.ordnancePoints,
      this.systemId,
      this.baseValue = 0,
      this.baseValueMult = 1,
      final List<String>? removeHints,
      final List<String>? addHints,
      final List<String>? removeBuiltInMods,
      final List<String>? builtInMods,
      final List<String>? removeWeaponSlots,
      @AlexMapConverter()
      final Map<String, ShipWeaponSlotChange>? weaponSlotChanges,
      final List<String>? removeBuiltInWeapons,
      @AlexMapConverter() final Map<String, String>? builtInWeapons,
      final List<int>? removeEngineSlots,
      @AlexMapConverter()
      final Map<String, ShipEngineSlotChange>? engineSlotChanges,
      final List<int>? coversColor})
      : _removeHints = removeHints,
        _addHints = addHints,
        _removeBuiltInMods = removeBuiltInMods,
        _builtInMods = builtInMods,
        _removeWeaponSlots = removeWeaponSlots,
        _weaponSlotChanges = weaponSlotChanges,
        _removeBuiltInWeapons = removeBuiltInWeapons,
        _builtInWeapons = builtInWeapons,
        _removeEngineSlots = removeEngineSlots,
        _engineSlotChanges = engineSlotChanges,
        _coversColor = coversColor;

  factory _$_ShipSkin.fromJson(Map<String, dynamic> json) =>
      _$$_ShipSkinFromJson(json);

  @override
  @JsonKey()
  final String? baseHullId;
  @override
  @JsonKey()
  final String? skinHullId;
  @override
  @JsonKey()
  final String? hullName;
  @override
  @JsonKey()
  final bool? restoreToBaseHull;
  @override
  @JsonKey()
  final String? hullDesignation;
  @override
  final String? manufacturer;
  @override
  final String? tech;
  @override
  @JsonKey()
  final String? spriteName;
  @override
  @JsonKey()
  final String? descriptionId;
  @override
  final String? descriptionPrefix;
  @override
  final int? fleetPoints;
  @override
  final int? fpMod;
  @override
  final int? fighterBays;
  @override
  final int? ordnancePoints;
  @override
  final String? systemId;
  @override
  @JsonKey()
  final int? baseValue;
  @override
  @JsonKey()
  final double? baseValueMult;
  final List<String>? _removeHints;
  @override
  List<String>? get removeHints {
    final value = _removeHints;
    if (value == null) return null;
    if (_removeHints is EqualUnmodifiableListView) return _removeHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _addHints;
  @override
  List<String>? get addHints {
    final value = _addHints;
    if (value == null) return null;
    if (_addHints is EqualUnmodifiableListView) return _addHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _removeBuiltInMods;
  @override
  List<String>? get removeBuiltInMods {
    final value = _removeBuiltInMods;
    if (value == null) return null;
    if (_removeBuiltInMods is EqualUnmodifiableListView)
      return _removeBuiltInMods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// hullmod ids,
  final List<String>? _builtInMods;
// hullmod ids,
  @override
  List<String>? get builtInMods {
    final value = _builtInMods;
    if (value == null) return null;
    if (_builtInMods is EqualUnmodifiableListView) return _builtInMods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// hullmod ids,
  final List<String>? _removeWeaponSlots;
// hullmod ids,
  @override
  List<String>? get removeWeaponSlots {
    final value = _removeWeaponSlots;
    if (value == null) return null;
    if (_removeWeaponSlots is EqualUnmodifiableListView)
      return _removeWeaponSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// weapon slot id's,
  final Map<String, ShipWeaponSlotChange>? _weaponSlotChanges;
// weapon slot id's,
  @override
  @AlexMapConverter()
  Map<String, ShipWeaponSlotChange>? get weaponSlotChanges {
    final value = _weaponSlotChanges;
    if (value == null) return null;
    if (_weaponSlotChanges is EqualUnmodifiableMapView)
      return _weaponSlotChanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

//<String,TStarfarerShipWeaponChange>  weapon slot id --> TStarfarerShipWeapon,
  final List<String>? _removeBuiltInWeapons;
//<String,TStarfarerShipWeaponChange>  weapon slot id --> TStarfarerShipWeapon,
  @override
  List<String>? get removeBuiltInWeapons {
    final value = _removeBuiltInWeapons;
    if (value == null) return null;
    if (_removeBuiltInWeapons is EqualUnmodifiableListView)
      return _removeBuiltInWeapons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// weapon slot id's,
  final Map<String, String>? _builtInWeapons;
// weapon slot id's,
  @override
  @AlexMapConverter()
  Map<String, String>? get builtInWeapons {
    final value = _builtInWeapons;
    if (value == null) return null;
    if (_builtInWeapons is EqualUnmodifiableMapView) return _builtInWeapons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

//<String,String>  weapon slot id --> weapon id,
  final List<int>? _removeEngineSlots;
//<String,String>  weapon slot id --> weapon id,
  @override
  List<int>? get removeEngineSlots {
    final value = _removeEngineSlots;
    if (value == null) return null;
    if (_removeEngineSlots is EqualUnmodifiableListView)
      return _removeEngineSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// engine slot indices (no id's),
  final Map<String, ShipEngineSlotChange>? _engineSlotChanges;
// engine slot indices (no id's),
  @override
  @AlexMapConverter()
  Map<String, ShipEngineSlotChange>? get engineSlotChanges {
    final value = _engineSlotChanges;
    if (value == null) return null;
    if (_engineSlotChanges is EqualUnmodifiableMapView)
      return _engineSlotChanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

//<String,TStarfarerShipEngineChange>  engine slot index (as string) --> TStarfarerShipEngine,
  final List<int>? _coversColor;
//<String,TStarfarerShipEngineChange>  engine slot index (as string) --> TStarfarerShipEngine,
  @override
  List<int>? get coversColor {
    final value = _coversColor;
    if (value == null) return null;
    if (_coversColor is EqualUnmodifiableListView) return _coversColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShipSkin(baseHullId: $baseHullId, skinHullId: $skinHullId, hullName: $hullName, restoreToBaseHull: $restoreToBaseHull, hullDesignation: $hullDesignation, manufacturer: $manufacturer, tech: $tech, spriteName: $spriteName, descriptionId: $descriptionId, descriptionPrefix: $descriptionPrefix, fleetPoints: $fleetPoints, fpMod: $fpMod, fighterBays: $fighterBays, ordnancePoints: $ordnancePoints, systemId: $systemId, baseValue: $baseValue, baseValueMult: $baseValueMult, removeHints: $removeHints, addHints: $addHints, removeBuiltInMods: $removeBuiltInMods, builtInMods: $builtInMods, removeWeaponSlots: $removeWeaponSlots, weaponSlotChanges: $weaponSlotChanges, removeBuiltInWeapons: $removeBuiltInWeapons, builtInWeapons: $builtInWeapons, removeEngineSlots: $removeEngineSlots, engineSlotChanges: $engineSlotChanges, coversColor: $coversColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipSkin &&
            (identical(other.baseHullId, baseHullId) ||
                other.baseHullId == baseHullId) &&
            (identical(other.skinHullId, skinHullId) ||
                other.skinHullId == skinHullId) &&
            (identical(other.hullName, hullName) ||
                other.hullName == hullName) &&
            (identical(other.restoreToBaseHull, restoreToBaseHull) ||
                other.restoreToBaseHull == restoreToBaseHull) &&
            (identical(other.hullDesignation, hullDesignation) ||
                other.hullDesignation == hullDesignation) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.tech, tech) || other.tech == tech) &&
            (identical(other.spriteName, spriteName) ||
                other.spriteName == spriteName) &&
            (identical(other.descriptionId, descriptionId) ||
                other.descriptionId == descriptionId) &&
            (identical(other.descriptionPrefix, descriptionPrefix) ||
                other.descriptionPrefix == descriptionPrefix) &&
            (identical(other.fleetPoints, fleetPoints) ||
                other.fleetPoints == fleetPoints) &&
            (identical(other.fpMod, fpMod) || other.fpMod == fpMod) &&
            (identical(other.fighterBays, fighterBays) ||
                other.fighterBays == fighterBays) &&
            (identical(other.ordnancePoints, ordnancePoints) ||
                other.ordnancePoints == ordnancePoints) &&
            (identical(other.systemId, systemId) ||
                other.systemId == systemId) &&
            (identical(other.baseValue, baseValue) ||
                other.baseValue == baseValue) &&
            (identical(other.baseValueMult, baseValueMult) ||
                other.baseValueMult == baseValueMult) &&
            const DeepCollectionEquality()
                .equals(other._removeHints, _removeHints) &&
            const DeepCollectionEquality().equals(other._addHints, _addHints) &&
            const DeepCollectionEquality()
                .equals(other._removeBuiltInMods, _removeBuiltInMods) &&
            const DeepCollectionEquality()
                .equals(other._builtInMods, _builtInMods) &&
            const DeepCollectionEquality()
                .equals(other._removeWeaponSlots, _removeWeaponSlots) &&
            const DeepCollectionEquality()
                .equals(other._weaponSlotChanges, _weaponSlotChanges) &&
            const DeepCollectionEquality()
                .equals(other._removeBuiltInWeapons, _removeBuiltInWeapons) &&
            const DeepCollectionEquality()
                .equals(other._builtInWeapons, _builtInWeapons) &&
            const DeepCollectionEquality()
                .equals(other._removeEngineSlots, _removeEngineSlots) &&
            const DeepCollectionEquality()
                .equals(other._engineSlotChanges, _engineSlotChanges) &&
            const DeepCollectionEquality()
                .equals(other._coversColor, _coversColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        baseHullId,
        skinHullId,
        hullName,
        restoreToBaseHull,
        hullDesignation,
        manufacturer,
        tech,
        spriteName,
        descriptionId,
        descriptionPrefix,
        fleetPoints,
        fpMod,
        fighterBays,
        ordnancePoints,
        systemId,
        baseValue,
        baseValueMult,
        const DeepCollectionEquality().hash(_removeHints),
        const DeepCollectionEquality().hash(_addHints),
        const DeepCollectionEquality().hash(_removeBuiltInMods),
        const DeepCollectionEquality().hash(_builtInMods),
        const DeepCollectionEquality().hash(_removeWeaponSlots),
        const DeepCollectionEquality().hash(_weaponSlotChanges),
        const DeepCollectionEquality().hash(_removeBuiltInWeapons),
        const DeepCollectionEquality().hash(_builtInWeapons),
        const DeepCollectionEquality().hash(_removeEngineSlots),
        const DeepCollectionEquality().hash(_engineSlotChanges),
        const DeepCollectionEquality().hash(_coversColor)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipSkinCopyWith<_$_ShipSkin> get copyWith =>
      __$$_ShipSkinCopyWithImpl<_$_ShipSkin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipSkinToJson(
      this,
    );
  }
}

abstract class _ShipSkin implements ShipSkin {
  factory _ShipSkin(
      {final String? baseHullId,
      final String? skinHullId,
      final String? hullName,
      final bool? restoreToBaseHull,
      final String? hullDesignation,
      final String? manufacturer,
      final String? tech,
      final String? spriteName,
      final String? descriptionId,
      final String? descriptionPrefix,
      final int? fleetPoints,
      final int? fpMod,
      final int? fighterBays,
      final int? ordnancePoints,
      final String? systemId,
      final int? baseValue,
      final double? baseValueMult,
      final List<String>? removeHints,
      final List<String>? addHints,
      final List<String>? removeBuiltInMods,
      final List<String>? builtInMods,
      final List<String>? removeWeaponSlots,
      @AlexMapConverter()
      final Map<String, ShipWeaponSlotChange>? weaponSlotChanges,
      final List<String>? removeBuiltInWeapons,
      @AlexMapConverter() final Map<String, String>? builtInWeapons,
      final List<int>? removeEngineSlots,
      @AlexMapConverter()
      final Map<String, ShipEngineSlotChange>? engineSlotChanges,
      final List<int>? coversColor}) = _$_ShipSkin;

  factory _ShipSkin.fromJson(Map<String, dynamic> json) = _$_ShipSkin.fromJson;

  @override
  String? get baseHullId;
  @override
  String? get skinHullId;
  @override
  String? get hullName;
  @override
  bool? get restoreToBaseHull;
  @override
  String? get hullDesignation;
  @override
  String? get manufacturer;
  @override
  String? get tech;
  @override
  String? get spriteName;
  @override
  String? get descriptionId;
  @override
  String? get descriptionPrefix;
  @override
  int? get fleetPoints;
  @override
  int? get fpMod;
  @override
  int? get fighterBays;
  @override
  int? get ordnancePoints;
  @override
  String? get systemId;
  @override
  int? get baseValue;
  @override
  double? get baseValueMult;
  @override
  List<String>? get removeHints;
  @override
  List<String>? get addHints;
  @override
  List<String>? get removeBuiltInMods;
  @override // hullmod ids,
  List<String>? get builtInMods;
  @override // hullmod ids,
  List<String>? get removeWeaponSlots;
  @override // weapon slot id's,
  @AlexMapConverter()
  Map<String, ShipWeaponSlotChange>? get weaponSlotChanges;
  @override //<String,TStarfarerShipWeaponChange>  weapon slot id --> TStarfarerShipWeapon,
  List<String>? get removeBuiltInWeapons;
  @override // weapon slot id's,
  @AlexMapConverter()
  Map<String, String>? get builtInWeapons;
  @override //<String,String>  weapon slot id --> weapon id,
  List<int>? get removeEngineSlots;
  @override // engine slot indices (no id's),
  @AlexMapConverter()
  Map<String, ShipEngineSlotChange>? get engineSlotChanges;
  @override //<String,TStarfarerShipEngineChange>  engine slot index (as string) --> TStarfarerShipEngine,
  List<int>? get coversColor;
  @override
  @JsonKey(ignore: true)
  _$$_ShipSkinCopyWith<_$_ShipSkin> get copyWith =>
      throw _privateConstructorUsedError;
}
