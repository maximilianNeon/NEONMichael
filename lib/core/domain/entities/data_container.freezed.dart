// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataContainerTearOff {
  const _$DataContainerTearOff();

  _DataContainer call(
      {required List<ProjectEntity> projectEntityList,
      required Map<int, Uint8List> iconFileData,
      required Map<int, Uint8List> assetFileData}) {
    return _DataContainer(
      projectEntityList: projectEntityList,
      iconFileData: iconFileData,
      assetFileData: assetFileData,
    );
  }
}

/// @nodoc
const $DataContainer = _$DataContainerTearOff();

/// @nodoc
mixin _$DataContainer {
  List<ProjectEntity> get projectEntityList =>
      throw _privateConstructorUsedError;
  Map<int, Uint8List> get iconFileData => throw _privateConstructorUsedError;
  Map<int, Uint8List> get assetFileData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataContainerCopyWith<DataContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataContainerCopyWith<$Res> {
  factory $DataContainerCopyWith(
          DataContainer value, $Res Function(DataContainer) then) =
      _$DataContainerCopyWithImpl<$Res>;
  $Res call(
      {List<ProjectEntity> projectEntityList,
      Map<int, Uint8List> iconFileData,
      Map<int, Uint8List> assetFileData});
}

/// @nodoc
class _$DataContainerCopyWithImpl<$Res>
    implements $DataContainerCopyWith<$Res> {
  _$DataContainerCopyWithImpl(this._value, this._then);

  final DataContainer _value;
  // ignore: unused_field
  final $Res Function(DataContainer) _then;

  @override
  $Res call({
    Object? projectEntityList = freezed,
    Object? iconFileData = freezed,
    Object? assetFileData = freezed,
  }) {
    return _then(_value.copyWith(
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      iconFileData: iconFileData == freezed
          ? _value.iconFileData
          : iconFileData // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List>,
      assetFileData: assetFileData == freezed
          ? _value.assetFileData
          : assetFileData // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List>,
    ));
  }
}

/// @nodoc
abstract class _$DataContainerCopyWith<$Res>
    implements $DataContainerCopyWith<$Res> {
  factory _$DataContainerCopyWith(
          _DataContainer value, $Res Function(_DataContainer) then) =
      __$DataContainerCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProjectEntity> projectEntityList,
      Map<int, Uint8List> iconFileData,
      Map<int, Uint8List> assetFileData});
}

/// @nodoc
class __$DataContainerCopyWithImpl<$Res>
    extends _$DataContainerCopyWithImpl<$Res>
    implements _$DataContainerCopyWith<$Res> {
  __$DataContainerCopyWithImpl(
      _DataContainer _value, $Res Function(_DataContainer) _then)
      : super(_value, (v) => _then(v as _DataContainer));

  @override
  _DataContainer get _value => super._value as _DataContainer;

  @override
  $Res call({
    Object? projectEntityList = freezed,
    Object? iconFileData = freezed,
    Object? assetFileData = freezed,
  }) {
    return _then(_DataContainer(
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      iconFileData: iconFileData == freezed
          ? _value.iconFileData
          : iconFileData // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List>,
      assetFileData: assetFileData == freezed
          ? _value.assetFileData
          : assetFileData // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List>,
    ));
  }
}

/// @nodoc

class _$_DataContainer implements _DataContainer {
  _$_DataContainer(
      {required this.projectEntityList,
      required this.iconFileData,
      required this.assetFileData});

  @override
  final List<ProjectEntity> projectEntityList;
  @override
  final Map<int, Uint8List> iconFileData;
  @override
  final Map<int, Uint8List> assetFileData;

  @override
  String toString() {
    return 'DataContainer(projectEntityList: $projectEntityList, iconFileData: $iconFileData, assetFileData: $assetFileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataContainer &&
            const DeepCollectionEquality()
                .equals(other.projectEntityList, projectEntityList) &&
            const DeepCollectionEquality()
                .equals(other.iconFileData, iconFileData) &&
            const DeepCollectionEquality()
                .equals(other.assetFileData, assetFileData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(projectEntityList),
      const DeepCollectionEquality().hash(iconFileData),
      const DeepCollectionEquality().hash(assetFileData));

  @JsonKey(ignore: true)
  @override
  _$DataContainerCopyWith<_DataContainer> get copyWith =>
      __$DataContainerCopyWithImpl<_DataContainer>(this, _$identity);
}

abstract class _DataContainer implements DataContainer {
  factory _DataContainer(
      {required List<ProjectEntity> projectEntityList,
      required Map<int, Uint8List> iconFileData,
      required Map<int, Uint8List> assetFileData}) = _$_DataContainer;

  @override
  List<ProjectEntity> get projectEntityList;
  @override
  Map<int, Uint8List> get iconFileData;
  @override
  Map<int, Uint8List> get assetFileData;
  @override
  @JsonKey(ignore: true)
  _$DataContainerCopyWith<_DataContainer> get copyWith =>
      throw _privateConstructorUsedError;
}
