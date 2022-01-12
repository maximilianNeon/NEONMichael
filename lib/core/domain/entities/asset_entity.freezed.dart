// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'asset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetEntity _$AssetEntityFromJson(Map<String, dynamic> json) {
  return _AssetEntity.fromJson(json);
}

/// @nodoc
class _$AssetEntityTearOff {
  const _$AssetEntityTearOff();

  _AssetEntity call(
      {required String imageUrl,
      required String title,
      required int id,
      required List<PatternEntity> patterns,
      required List<ElementEntity> elements}) {
    return _AssetEntity(
      imageUrl: imageUrl,
      title: title,
      id: id,
      patterns: patterns,
      elements: elements,
    );
  }

  AssetEntity fromJson(Map<String, Object?> json) {
    return AssetEntity.fromJson(json);
  }
}

/// @nodoc
const $AssetEntity = _$AssetEntityTearOff();

/// @nodoc
mixin _$AssetEntity {
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<PatternEntity> get patterns => throw _privateConstructorUsedError;
  List<ElementEntity> get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetEntityCopyWith<AssetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetEntityCopyWith<$Res> {
  factory $AssetEntityCopyWith(
          AssetEntity value, $Res Function(AssetEntity) then) =
      _$AssetEntityCopyWithImpl<$Res>;
  $Res call(
      {String imageUrl,
      String title,
      int id,
      List<PatternEntity> patterns,
      List<ElementEntity> elements});
}

/// @nodoc
class _$AssetEntityCopyWithImpl<$Res> implements $AssetEntityCopyWith<$Res> {
  _$AssetEntityCopyWithImpl(this._value, this._then);

  final AssetEntity _value;
  // ignore: unused_field
  final $Res Function(AssetEntity) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? id = freezed,
    Object? patterns = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patterns: patterns == freezed
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
    ));
  }
}

/// @nodoc
abstract class _$AssetEntityCopyWith<$Res>
    implements $AssetEntityCopyWith<$Res> {
  factory _$AssetEntityCopyWith(
          _AssetEntity value, $Res Function(_AssetEntity) then) =
      __$AssetEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String title,
      int id,
      List<PatternEntity> patterns,
      List<ElementEntity> elements});
}

/// @nodoc
class __$AssetEntityCopyWithImpl<$Res> extends _$AssetEntityCopyWithImpl<$Res>
    implements _$AssetEntityCopyWith<$Res> {
  __$AssetEntityCopyWithImpl(
      _AssetEntity _value, $Res Function(_AssetEntity) _then)
      : super(_value, (v) => _then(v as _AssetEntity));

  @override
  _AssetEntity get _value => super._value as _AssetEntity;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? id = freezed,
    Object? patterns = freezed,
    Object? elements = freezed,
  }) {
    return _then(_AssetEntity(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patterns: patterns == freezed
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetEntity implements _AssetEntity {
  _$_AssetEntity(
      {required this.imageUrl,
      required this.title,
      required this.id,
      required this.patterns,
      required this.elements});

  factory _$_AssetEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AssetEntityFromJson(json);

  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final int id;
  @override
  final List<PatternEntity> patterns;
  @override
  final List<ElementEntity> elements;

  @override
  String toString() {
    return 'AssetEntity(imageUrl: $imageUrl, title: $title, id: $id, patterns: $patterns, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AssetEntity &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.patterns, patterns) &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(patterns),
      const DeepCollectionEquality().hash(elements));

  @JsonKey(ignore: true)
  @override
  _$AssetEntityCopyWith<_AssetEntity> get copyWith =>
      __$AssetEntityCopyWithImpl<_AssetEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetEntityToJson(this);
  }
}

abstract class _AssetEntity implements AssetEntity {
  factory _AssetEntity(
      {required String imageUrl,
      required String title,
      required int id,
      required List<PatternEntity> patterns,
      required List<ElementEntity> elements}) = _$_AssetEntity;

  factory _AssetEntity.fromJson(Map<String, dynamic> json) =
      _$_AssetEntity.fromJson;

  @override
  String get imageUrl;
  @override
  String get title;
  @override
  int get id;
  @override
  List<PatternEntity> get patterns;
  @override
  List<ElementEntity> get elements;
  @override
  @JsonKey(ignore: true)
  _$AssetEntityCopyWith<_AssetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
