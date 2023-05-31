// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  String get displayName => throw _privateConstructorUsedError;
  String get hullId => throw _privateConstructorUsedError;
  String get variantId => throw _privateConstructorUsedError;
  int get fluxVents => throw _privateConstructorUsedError;
  int get fluxCapacitors => throw _privateConstructorUsedError;
  List<String> get hullMods => throw _privateConstructorUsedError;
  List<VariantWeapon> get weaponGroups => throw _privateConstructorUsedError;
  bool get goalVariant => throw _privateConstructorUsedError;
  double get quality => throw _privateConstructorUsedError;
  List<String> get permaMods => throw _privateConstructorUsedError;
  List<String> get wings => throw _privateConstructorUsedError;
  @AlexMapConverter()
  Map<String, dynamic> get modules => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call(
      {String displayName,
      String hullId,
      String variantId,
      int fluxVents,
      int fluxCapacitors,
      List<String> hullMods,
      List<VariantWeapon> weaponGroups,
      bool goalVariant,
      double quality,
      List<String> permaMods,
      List<String> wings,
      @AlexMapConverter() Map<String, dynamic> modules});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? hullId = null,
    Object? variantId = null,
    Object? fluxVents = null,
    Object? fluxCapacitors = null,
    Object? hullMods = null,
    Object? weaponGroups = null,
    Object? goalVariant = null,
    Object? quality = null,
    Object? permaMods = null,
    Object? wings = null,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      hullId: null == hullId
          ? _value.hullId
          : hullId // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String,
      fluxVents: null == fluxVents
          ? _value.fluxVents
          : fluxVents // ignore: cast_nullable_to_non_nullable
              as int,
      fluxCapacitors: null == fluxCapacitors
          ? _value.fluxCapacitors
          : fluxCapacitors // ignore: cast_nullable_to_non_nullable
              as int,
      hullMods: null == hullMods
          ? _value.hullMods
          : hullMods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weaponGroups: null == weaponGroups
          ? _value.weaponGroups
          : weaponGroups // ignore: cast_nullable_to_non_nullable
              as List<VariantWeapon>,
      goalVariant: null == goalVariant
          ? _value.goalVariant
          : goalVariant // ignore: cast_nullable_to_non_nullable
              as bool,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as double,
      permaMods: null == permaMods
          ? _value.permaMods
          : permaMods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wings: null == wings
          ? _value.wings
          : wings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$_VariantCopyWith(
          _$_Variant value, $Res Function(_$_Variant) then) =
      __$$_VariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String displayName,
      String hullId,
      String variantId,
      int fluxVents,
      int fluxCapacitors,
      List<String> hullMods,
      List<VariantWeapon> weaponGroups,
      bool goalVariant,
      double quality,
      List<String> permaMods,
      List<String> wings,
      @AlexMapConverter() Map<String, dynamic> modules});
}

/// @nodoc
class __$$_VariantCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$_Variant>
    implements _$$_VariantCopyWith<$Res> {
  __$$_VariantCopyWithImpl(_$_Variant _value, $Res Function(_$_Variant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? hullId = null,
    Object? variantId = null,
    Object? fluxVents = null,
    Object? fluxCapacitors = null,
    Object? hullMods = null,
    Object? weaponGroups = null,
    Object? goalVariant = null,
    Object? quality = null,
    Object? permaMods = null,
    Object? wings = null,
    Object? modules = null,
  }) {
    return _then(_$_Variant(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      hullId: null == hullId
          ? _value.hullId
          : hullId // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String,
      fluxVents: null == fluxVents
          ? _value.fluxVents
          : fluxVents // ignore: cast_nullable_to_non_nullable
              as int,
      fluxCapacitors: null == fluxCapacitors
          ? _value.fluxCapacitors
          : fluxCapacitors // ignore: cast_nullable_to_non_nullable
              as int,
      hullMods: null == hullMods
          ? _value._hullMods
          : hullMods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weaponGroups: null == weaponGroups
          ? _value._weaponGroups
          : weaponGroups // ignore: cast_nullable_to_non_nullable
              as List<VariantWeapon>,
      goalVariant: null == goalVariant
          ? _value.goalVariant
          : goalVariant // ignore: cast_nullable_to_non_nullable
              as bool,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as double,
      permaMods: null == permaMods
          ? _value._permaMods
          : permaMods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wings: null == wings
          ? _value._wings
          : wings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variant implements _Variant {
  _$_Variant(
      {this.displayName = "New Variant",
      this.hullId = "",
      this.variantId = "",
      this.fluxVents = 0,
      this.fluxCapacitors = 0,
      final List<String> hullMods = const [],
      final List<VariantWeapon> weaponGroups = const [],
      this.goalVariant = false,
      this.quality = 1.0,
      final List<String> permaMods = const [],
      final List<String> wings = const [],
      @AlexMapConverter() final Map<String, dynamic> modules = const {}})
      : _hullMods = hullMods,
        _weaponGroups = weaponGroups,
        _permaMods = permaMods,
        _wings = wings,
        _modules = modules;

  factory _$_Variant.fromJson(Map<String, dynamic> json) =>
      _$$_VariantFromJson(json);

  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final String hullId;
  @override
  @JsonKey()
  final String variantId;
  @override
  @JsonKey()
  final int fluxVents;
  @override
  @JsonKey()
  final int fluxCapacitors;
  final List<String> _hullMods;
  @override
  @JsonKey()
  List<String> get hullMods {
    if (_hullMods is EqualUnmodifiableListView) return _hullMods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hullMods);
  }

  final List<VariantWeapon> _weaponGroups;
  @override
  @JsonKey()
  List<VariantWeapon> get weaponGroups {
    if (_weaponGroups is EqualUnmodifiableListView) return _weaponGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaponGroups);
  }

  @override
  @JsonKey()
  final bool goalVariant;
  @override
  @JsonKey()
  final double quality;
  final List<String> _permaMods;
  @override
  @JsonKey()
  List<String> get permaMods {
    if (_permaMods is EqualUnmodifiableListView) return _permaMods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permaMods);
  }

  final List<String> _wings;
  @override
  @JsonKey()
  List<String> get wings {
    if (_wings is EqualUnmodifiableListView) return _wings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wings);
  }

  final Map<String, dynamic> _modules;
  @override
  @JsonKey()
  @AlexMapConverter()
  Map<String, dynamic> get modules {
    if (_modules is EqualUnmodifiableMapView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_modules);
  }

  @override
  String toString() {
    return 'Variant(displayName: $displayName, hullId: $hullId, variantId: $variantId, fluxVents: $fluxVents, fluxCapacitors: $fluxCapacitors, hullMods: $hullMods, weaponGroups: $weaponGroups, goalVariant: $goalVariant, quality: $quality, permaMods: $permaMods, wings: $wings, modules: $modules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Variant &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.hullId, hullId) || other.hullId == hullId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.fluxVents, fluxVents) ||
                other.fluxVents == fluxVents) &&
            (identical(other.fluxCapacitors, fluxCapacitors) ||
                other.fluxCapacitors == fluxCapacitors) &&
            const DeepCollectionEquality().equals(other._hullMods, _hullMods) &&
            const DeepCollectionEquality()
                .equals(other._weaponGroups, _weaponGroups) &&
            (identical(other.goalVariant, goalVariant) ||
                other.goalVariant == goalVariant) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            const DeepCollectionEquality()
                .equals(other._permaMods, _permaMods) &&
            const DeepCollectionEquality().equals(other._wings, _wings) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      hullId,
      variantId,
      fluxVents,
      fluxCapacitors,
      const DeepCollectionEquality().hash(_hullMods),
      const DeepCollectionEquality().hash(_weaponGroups),
      goalVariant,
      quality,
      const DeepCollectionEquality().hash(_permaMods),
      const DeepCollectionEquality().hash(_wings),
      const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantCopyWith<_$_Variant> get copyWith =>
      __$$_VariantCopyWithImpl<_$_Variant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantToJson(
      this,
    );
  }
}

abstract class _Variant implements Variant {
  factory _Variant(
      {final String displayName,
      final String hullId,
      final String variantId,
      final int fluxVents,
      final int fluxCapacitors,
      final List<String> hullMods,
      final List<VariantWeapon> weaponGroups,
      final bool goalVariant,
      final double quality,
      final List<String> permaMods,
      final List<String> wings,
      @AlexMapConverter() final Map<String, dynamic> modules}) = _$_Variant;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$_Variant.fromJson;

  @override
  String get displayName;
  @override
  String get hullId;
  @override
  String get variantId;
  @override
  int get fluxVents;
  @override
  int get fluxCapacitors;
  @override
  List<String> get hullMods;
  @override
  List<VariantWeapon> get weaponGroups;
  @override
  bool get goalVariant;
  @override
  double get quality;
  @override
  List<String> get permaMods;
  @override
  List<String> get wings;
  @override
  @AlexMapConverter()
  Map<String, dynamic> get modules;
  @override
  @JsonKey(ignore: true)
  _$$_VariantCopyWith<_$_Variant> get copyWith =>
      throw _privateConstructorUsedError;
}
