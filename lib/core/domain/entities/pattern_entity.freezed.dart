// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pattern_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatternEntity _$PatternEntityFromJson(Map<String, dynamic> json) {
  return _PatternEntity.fromJson(json);
}

/// @nodoc
class _$PatternEntityTearOff {
  const _$PatternEntityTearOff();

  _PatternEntity call({required Patterns item, required String header}) {
    return _PatternEntity(
      item: item,
      header: header,
    );
  }

  PatternEntity fromJson(Map<String, Object?> json) {
    return PatternEntity.fromJson(json);
  }
}

/// @nodoc
const $PatternEntity = _$PatternEntityTearOff();

/// @nodoc
mixin _$PatternEntity {
  Patterns get item => throw _privateConstructorUsedError;
  String get header => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatternEntityCopyWith<PatternEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternEntityCopyWith<$Res> {
  factory $PatternEntityCopyWith(
          PatternEntity value, $Res Function(PatternEntity) then) =
      _$PatternEntityCopyWithImpl<$Res>;
  $Res call({Patterns item, String header});
}

/// @nodoc
class _$PatternEntityCopyWithImpl<$Res>
    implements $PatternEntityCopyWith<$Res> {
  _$PatternEntityCopyWithImpl(this._value, this._then);

  final PatternEntity _value;
  // ignore: unused_field
  final $Res Function(PatternEntity) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? header = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Patterns,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PatternEntityCopyWith<$Res>
    implements $PatternEntityCopyWith<$Res> {
  factory _$PatternEntityCopyWith(
          _PatternEntity value, $Res Function(_PatternEntity) then) =
      __$PatternEntityCopyWithImpl<$Res>;
  @override
  $Res call({Patterns item, String header});
}

/// @nodoc
class __$PatternEntityCopyWithImpl<$Res>
    extends _$PatternEntityCopyWithImpl<$Res>
    implements _$PatternEntityCopyWith<$Res> {
  __$PatternEntityCopyWithImpl(
      _PatternEntity _value, $Res Function(_PatternEntity) _then)
      : super(_value, (v) => _then(v as _PatternEntity));

  @override
  _PatternEntity get _value => super._value as _PatternEntity;

  @override
  $Res call({
    Object? item = freezed,
    Object? header = freezed,
  }) {
    return _then(_PatternEntity(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Patterns,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatternEntity implements _PatternEntity {
  _$_PatternEntity({required this.item, required this.header});

  factory _$_PatternEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PatternEntityFromJson(json);

  @override
  final Patterns item;
  @override
  final String header;

  @override
  String toString() {
    return 'PatternEntity(item: $item, header: $header)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatternEntity &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.header, header));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(header));

  @JsonKey(ignore: true)
  @override
  _$PatternEntityCopyWith<_PatternEntity> get copyWith =>
      __$PatternEntityCopyWithImpl<_PatternEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatternEntityToJson(this);
  }
}

abstract class _PatternEntity implements PatternEntity {
  factory _PatternEntity({required Patterns item, required String header}) =
      _$_PatternEntity;

  factory _PatternEntity.fromJson(Map<String, dynamic> json) =
      _$_PatternEntity.fromJson;

  @override
  Patterns get item;
  @override
  String get header;
  @override
  @JsonKey(ignore: true)
  _$PatternEntityCopyWith<_PatternEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
