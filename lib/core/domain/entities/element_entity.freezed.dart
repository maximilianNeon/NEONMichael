// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'element_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElementEntity _$ElementEntityFromJson(Map<String, dynamic> json) {
  return _ElementEntity.fromJson(json);
}

/// @nodoc
class _$ElementEntityTearOff {
  const _$ElementEntityTearOff();

  _ElementEntity call({required String header, required Object item}) {
    return _ElementEntity(
      header: header,
      item: item,
    );
  }

  ElementEntity fromJson(Map<String, Object?> json) {
    return ElementEntity.fromJson(json);
  }
}

/// @nodoc
const $ElementEntity = _$ElementEntityTearOff();

/// @nodoc
mixin _$ElementEntity {
  String get header => throw _privateConstructorUsedError;
  Object get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementEntityCopyWith<ElementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementEntityCopyWith<$Res> {
  factory $ElementEntityCopyWith(
          ElementEntity value, $Res Function(ElementEntity) then) =
      _$ElementEntityCopyWithImpl<$Res>;
  $Res call({String header, Object item});
}

/// @nodoc
class _$ElementEntityCopyWithImpl<$Res>
    implements $ElementEntityCopyWith<$Res> {
  _$ElementEntityCopyWithImpl(this._value, this._then);

  final ElementEntity _value;
  // ignore: unused_field
  final $Res Function(ElementEntity) _then;

  @override
  $Res call({
    Object? header = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
abstract class _$ElementEntityCopyWith<$Res>
    implements $ElementEntityCopyWith<$Res> {
  factory _$ElementEntityCopyWith(
          _ElementEntity value, $Res Function(_ElementEntity) then) =
      __$ElementEntityCopyWithImpl<$Res>;
  @override
  $Res call({String header, Object item});
}

/// @nodoc
class __$ElementEntityCopyWithImpl<$Res>
    extends _$ElementEntityCopyWithImpl<$Res>
    implements _$ElementEntityCopyWith<$Res> {
  __$ElementEntityCopyWithImpl(
      _ElementEntity _value, $Res Function(_ElementEntity) _then)
      : super(_value, (v) => _then(v as _ElementEntity));

  @override
  _ElementEntity get _value => super._value as _ElementEntity;

  @override
  $Res call({
    Object? header = freezed,
    Object? item = freezed,
  }) {
    return _then(_ElementEntity(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElementEntity implements _ElementEntity {
  _$_ElementEntity({required this.header, required this.item});

  factory _$_ElementEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ElementEntityFromJson(json);

  @override
  final String header;
  @override
  final Object item;

  @override
  String toString() {
    return 'ElementEntity(header: $header, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElementEntity &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$ElementEntityCopyWith<_ElementEntity> get copyWith =>
      __$ElementEntityCopyWithImpl<_ElementEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementEntityToJson(this);
  }
}

abstract class _ElementEntity implements ElementEntity {
  factory _ElementEntity({required String header, required Object item}) =
      _$_ElementEntity;

  factory _ElementEntity.fromJson(Map<String, dynamic> json) =
      _$_ElementEntity.fromJson;

  @override
  String get header;
  @override
  Object get item;
  @override
  @JsonKey(ignore: true)
  _$ElementEntityCopyWith<_ElementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
