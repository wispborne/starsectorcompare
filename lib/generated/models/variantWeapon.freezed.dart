// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/variantWeapon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantWeapon _$VariantWeaponFromJson(Map<String, dynamic> json) {
  return _VariantWeapon.fromJson(json);
}

/// @nodoc
mixin _$VariantWeapon {
  bool get autofire => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  Map<String, String> get weapons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantWeaponCopyWith<VariantWeapon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantWeaponCopyWith<$Res> {
  factory $VariantWeaponCopyWith(
          VariantWeapon value, $Res Function(VariantWeapon) then) =
      _$VariantWeaponCopyWithImpl<$Res, VariantWeapon>;
  @useResult
  $Res call({bool autofire, String mode, Map<String, String> weapons});
}

/// @nodoc
class _$VariantWeaponCopyWithImpl<$Res, $Val extends VariantWeapon>
    implements $VariantWeaponCopyWith<$Res> {
  _$VariantWeaponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autofire = null,
    Object? mode = null,
    Object? weapons = null,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$_VariantWeaponCopyWith<$Res>
    implements $VariantWeaponCopyWith<$Res> {
  factory _$$_VariantWeaponCopyWith(
          _$_VariantWeapon value, $Res Function(_$_VariantWeapon) then) =
      __$$_VariantWeaponCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool autofire, String mode, Map<String, String> weapons});
}

/// @nodoc
class __$$_VariantWeaponCopyWithImpl<$Res>
    extends _$VariantWeaponCopyWithImpl<$Res, _$_VariantWeapon>
    implements _$$_VariantWeaponCopyWith<$Res> {
  __$$_VariantWeaponCopyWithImpl(
      _$_VariantWeapon _value, $Res Function(_$_VariantWeapon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autofire = null,
    Object? mode = null,
    Object? weapons = null,
  }) {
    return _then(_$_VariantWeapon(
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
class _$_VariantWeapon implements _VariantWeapon {
  _$_VariantWeapon(
      {this.autofire = false,
      this.mode = "",
      final Map<String, String> weapons = const {}})
      : _weapons = weapons;

  factory _$_VariantWeapon.fromJson(Map<String, dynamic> json) =>
      _$$_VariantWeaponFromJson(json);

  @override
  @JsonKey()
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
    return 'VariantWeapon(autofire: $autofire, mode: $mode, weapons: $weapons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantWeapon &&
            (identical(other.autofire, autofire) ||
                other.autofire == autofire) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality().equals(other._weapons, _weapons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, autofire, mode,
      const DeepCollectionEquality().hash(_weapons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantWeaponCopyWith<_$_VariantWeapon> get copyWith =>
      __$$_VariantWeaponCopyWithImpl<_$_VariantWeapon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantWeaponToJson(
      this,
    );
  }
}

abstract class _VariantWeapon implements VariantWeapon {
  factory _VariantWeapon(
      {final bool autofire,
      final String mode,
      final Map<String, String> weapons}) = _$_VariantWeapon;

  factory _VariantWeapon.fromJson(Map<String, dynamic> json) =
      _$_VariantWeapon.fromJson;

  @override
  bool get autofire;
  @override
  String get mode;
  @override
  Map<String, String> get weapons;
  @override
  @JsonKey(ignore: true)
  _$$_VariantWeaponCopyWith<_$_VariantWeapon> get copyWith =>
      throw _privateConstructorUsedError;
}
