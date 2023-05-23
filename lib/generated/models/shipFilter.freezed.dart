// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/shipFilter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipFilter _$ShipFilterFromJson(Map<String, dynamic> json) {
  return _ShipFilter.fromJson(json);
}

/// @nodoc
mixin _$ShipFilter {
  String? get gameDir => throw _privateConstructorUsedError;
  String? get modsDir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipFilterCopyWith<ShipFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipFilterCopyWith<$Res> {
  factory $ShipFilterCopyWith(
          ShipFilter value, $Res Function(ShipFilter) then) =
      _$ShipFilterCopyWithImpl<$Res, ShipFilter>;
  @useResult
  $Res call({String? gameDir, String? modsDir});
}

/// @nodoc
class _$ShipFilterCopyWithImpl<$Res, $Val extends ShipFilter>
    implements $ShipFilterCopyWith<$Res> {
  _$ShipFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameDir = freezed,
    Object? modsDir = freezed,
  }) {
    return _then(_value.copyWith(
      gameDir: freezed == gameDir
          ? _value.gameDir
          : gameDir // ignore: cast_nullable_to_non_nullable
              as String?,
      modsDir: freezed == modsDir
          ? _value.modsDir
          : modsDir // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipFilterCopyWith<$Res>
    implements $ShipFilterCopyWith<$Res> {
  factory _$$_ShipFilterCopyWith(
          _$_ShipFilter value, $Res Function(_$_ShipFilter) then) =
      __$$_ShipFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? gameDir, String? modsDir});
}

/// @nodoc
class __$$_ShipFilterCopyWithImpl<$Res>
    extends _$ShipFilterCopyWithImpl<$Res, _$_ShipFilter>
    implements _$$_ShipFilterCopyWith<$Res> {
  __$$_ShipFilterCopyWithImpl(
      _$_ShipFilter _value, $Res Function(_$_ShipFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameDir = freezed,
    Object? modsDir = freezed,
  }) {
    return _then(_$_ShipFilter(
      gameDir: freezed == gameDir
          ? _value.gameDir
          : gameDir // ignore: cast_nullable_to_non_nullable
              as String?,
      modsDir: freezed == modsDir
          ? _value.modsDir
          : modsDir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipFilter with DiagnosticableTreeMixin implements _ShipFilter {
  _$_ShipFilter({this.gameDir, this.modsDir});

  factory _$_ShipFilter.fromJson(Map<String, dynamic> json) =>
      _$$_ShipFilterFromJson(json);

  @override
  final String? gameDir;
  @override
  final String? modsDir;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipFilter(gameDir: $gameDir, modsDir: $modsDir)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipFilter'))
      ..add(DiagnosticsProperty('gameDir', gameDir))
      ..add(DiagnosticsProperty('modsDir', modsDir));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipFilter &&
            (identical(other.gameDir, gameDir) || other.gameDir == gameDir) &&
            (identical(other.modsDir, modsDir) || other.modsDir == modsDir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameDir, modsDir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipFilterCopyWith<_$_ShipFilter> get copyWith =>
      __$$_ShipFilterCopyWithImpl<_$_ShipFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipFilterToJson(
      this,
    );
  }
}

abstract class _ShipFilter implements ShipFilter {
  factory _ShipFilter({final String? gameDir, final String? modsDir}) =
      _$_ShipFilter;

  factory _ShipFilter.fromJson(Map<String, dynamic> json) =
      _$_ShipFilter.fromJson;

  @override
  String? get gameDir;
  @override
  String? get modsDir;
  @override
  @JsonKey(ignore: true)
  _$$_ShipFilterCopyWith<_$_ShipFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
