// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dropped_Image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DroppedImageEntityTearOff {
  const _$DroppedImageEntityTearOff();

  _DroppedImageEntity call({required Uint8List fileData}) {
    return _DroppedImageEntity(
      fileData: fileData,
    );
  }
}

/// @nodoc
const $DroppedImageEntity = _$DroppedImageEntityTearOff();

/// @nodoc
mixin _$DroppedImageEntity {
  Uint8List get fileData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DroppedImageEntityCopyWith<DroppedImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DroppedImageEntityCopyWith<$Res> {
  factory $DroppedImageEntityCopyWith(
          DroppedImageEntity value, $Res Function(DroppedImageEntity) then) =
      _$DroppedImageEntityCopyWithImpl<$Res>;
  $Res call({Uint8List fileData});
}

/// @nodoc
class _$DroppedImageEntityCopyWithImpl<$Res>
    implements $DroppedImageEntityCopyWith<$Res> {
  _$DroppedImageEntityCopyWithImpl(this._value, this._then);

  final DroppedImageEntity _value;
  // ignore: unused_field
  final $Res Function(DroppedImageEntity) _then;

  @override
  $Res call({
    Object? fileData = freezed,
  }) {
    return _then(_value.copyWith(
      fileData: fileData == freezed
          ? _value.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$DroppedImageEntityCopyWith<$Res>
    implements $DroppedImageEntityCopyWith<$Res> {
  factory _$DroppedImageEntityCopyWith(
          _DroppedImageEntity value, $Res Function(_DroppedImageEntity) then) =
      __$DroppedImageEntityCopyWithImpl<$Res>;
  @override
  $Res call({Uint8List fileData});
}

/// @nodoc
class __$DroppedImageEntityCopyWithImpl<$Res>
    extends _$DroppedImageEntityCopyWithImpl<$Res>
    implements _$DroppedImageEntityCopyWith<$Res> {
  __$DroppedImageEntityCopyWithImpl(
      _DroppedImageEntity _value, $Res Function(_DroppedImageEntity) _then)
      : super(_value, (v) => _then(v as _DroppedImageEntity));

  @override
  _DroppedImageEntity get _value => super._value as _DroppedImageEntity;

  @override
  $Res call({
    Object? fileData = freezed,
  }) {
    return _then(_DroppedImageEntity(
      fileData: fileData == freezed
          ? _value.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_DroppedImageEntity implements _DroppedImageEntity {
  _$_DroppedImageEntity({required this.fileData});

  @override
  final Uint8List fileData;

  @override
  String toString() {
    return 'DroppedImageEntity(fileData: $fileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DroppedImageEntity &&
            const DeepCollectionEquality().equals(other.fileData, fileData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fileData));

  @JsonKey(ignore: true)
  @override
  _$DroppedImageEntityCopyWith<_DroppedImageEntity> get copyWith =>
      __$DroppedImageEntityCopyWithImpl<_DroppedImageEntity>(this, _$identity);
}

abstract class _DroppedImageEntity implements DroppedImageEntity {
  factory _DroppedImageEntity({required Uint8List fileData}) =
      _$_DroppedImageEntity;

  @override
  Uint8List get fileData;
  @override
  @JsonKey(ignore: true)
  _$DroppedImageEntityCopyWith<_DroppedImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
