// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataEventTearOff {
  const _$DataEventTearOff();

  _LoadProjectData downloadProjectData() {
    return const _LoadProjectData();
  }

  _SaveOnDevice saveProjectAssetImagesOnDevice(
      {required ProjectEntity projectEntity}) {
    return _SaveOnDevice(
      projectEntity: projectEntity,
    );
  }
}

/// @nodoc
const $DataEvent = _$DataEventTearOff();

/// @nodoc
mixin _$DataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloadProjectData,
    required TResult Function(ProjectEntity projectEntity)
        saveProjectAssetImagesOnDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloadProjectData,
    TResult Function(ProjectEntity projectEntity)?
        saveProjectAssetImagesOnDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloadProjectData,
    TResult Function(ProjectEntity projectEntity)?
        saveProjectAssetImagesOnDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProjectData value) downloadProjectData,
    required TResult Function(_SaveOnDevice value)
        saveProjectAssetImagesOnDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadProjectData value)? downloadProjectData,
    TResult Function(_SaveOnDevice value)? saveProjectAssetImagesOnDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProjectData value)? downloadProjectData,
    TResult Function(_SaveOnDevice value)? saveProjectAssetImagesOnDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEventCopyWith<$Res> {
  factory $DataEventCopyWith(DataEvent value, $Res Function(DataEvent) then) =
      _$DataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataEventCopyWithImpl<$Res> implements $DataEventCopyWith<$Res> {
  _$DataEventCopyWithImpl(this._value, this._then);

  final DataEvent _value;
  // ignore: unused_field
  final $Res Function(DataEvent) _then;
}

/// @nodoc
abstract class _$LoadProjectDataCopyWith<$Res> {
  factory _$LoadProjectDataCopyWith(
          _LoadProjectData value, $Res Function(_LoadProjectData) then) =
      __$LoadProjectDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadProjectDataCopyWithImpl<$Res> extends _$DataEventCopyWithImpl<$Res>
    implements _$LoadProjectDataCopyWith<$Res> {
  __$LoadProjectDataCopyWithImpl(
      _LoadProjectData _value, $Res Function(_LoadProjectData) _then)
      : super(_value, (v) => _then(v as _LoadProjectData));

  @override
  _LoadProjectData get _value => super._value as _LoadProjectData;
}

/// @nodoc

class _$_LoadProjectData implements _LoadProjectData {
  const _$_LoadProjectData();

  @override
  String toString() {
    return 'DataEvent.downloadProjectData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadProjectData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloadProjectData,
    required TResult Function(ProjectEntity projectEntity)
        saveProjectAssetImagesOnDevice,
  }) {
    return downloadProjectData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloadProjectData,
    TResult Function(ProjectEntity projectEntity)?
        saveProjectAssetImagesOnDevice,
  }) {
    return downloadProjectData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloadProjectData,
    TResult Function(ProjectEntity projectEntity)?
        saveProjectAssetImagesOnDevice,
    required TResult orElse(),
  }) {
    if (downloadProjectData != null) {
      return downloadProjectData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProjectData value) downloadProjectData,
    required TResult Function(_SaveOnDevice value)
        saveProjectAssetImagesOnDevice,
  }) {
    return downloadProjectData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadProjectData value)? downloadProjectData,
    TResult Function(_SaveOnDevice value)? saveProjectAssetImagesOnDevice,
  }) {
    return downloadProjectData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProjectData value)? downloadProjectData,
    TResult Function(_SaveOnDevice value)? saveProjectAssetImagesOnDevice,
    required TResult orElse(),
  }) {
    if (downloadProjectData != null) {
      return downloadProjectData(this);
    }
    return orElse();
  }
}

abstract class _LoadProjectData implements DataEvent {
  const factory _LoadProjectData() = _$_LoadProjectData;
}

/// @nodoc
abstract class _$SaveOnDeviceCopyWith<$Res> {
  factory _$SaveOnDeviceCopyWith(
          _SaveOnDevice value, $Res Function(_SaveOnDevice) then) =
      __$SaveOnDeviceCopyWithImpl<$Res>;
  $Res call({ProjectEntity projectEntity});

  $ProjectEntityCopyWith<$Res> get projectEntity;
}

/// @nodoc
class __$SaveOnDeviceCopyWithImpl<$Res> extends _$DataEventCopyWithImpl<$Res>
    implements _$SaveOnDeviceCopyWith<$Res> {
  __$SaveOnDeviceCopyWithImpl(
      _SaveOnDevice _value, $Res Function(_SaveOnDevice) _then)
      : super(_value, (v) => _then(v as _SaveOnDevice));

  @override
  _SaveOnDevice get _value => super._value as _SaveOnDevice;

  @override
  $Res call({
    Object? projectEntity = freezed,
  }) {
    return _then(_SaveOnDevice(
      projectEntity: projectEntity == freezed
          ? _value.projectEntity
          : projectEntity // ignore: cast_nullable_to_non_nullable
              as ProjectEntity,
    ));
  }

  @override
  $ProjectEntityCopyWith<$Res> get projectEntity {
    return $ProjectEntityCopyWith<$Res>(_value.projectEntity, (value) {
      return _then(_value.copyWith(projectEntity: value));
    });
  }
}

/// @nodoc

class _$_SaveOnDevice implements _SaveOnDevice {
  const _$_SaveOnDevice({required this.projectEntity});

  @override
  final ProjectEntity projectEntity;

  @override
  String toString() {
    return 'DataEvent.saveProjectAssetImagesOnDevice(projectEntity: $projectEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveOnDevice &&
            const DeepCollectionEquality()
                .equals(other.projectEntity, projectEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(projectEntity));

  @JsonKey(ignore: true)
  @override
  _$SaveOnDeviceCopyWith<_SaveOnDevice> get copyWith =>
      __$SaveOnDeviceCopyWithImpl<_SaveOnDevice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloadProjectData,
    required TResult Function(ProjectEntity projectEntity)
        saveProjectAssetImagesOnDevice,
  }) {
    return saveProjectAssetImagesOnDevice(projectEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloadProjectData,
    TResult Function(ProjectEntity projectEntity)?
        saveProjectAssetImagesOnDevice,
  }) {
    return saveProjectAssetImagesOnDevice?.call(projectEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloadProjectData,
    TResult Function(ProjectEntity projectEntity)?
        saveProjectAssetImagesOnDevice,
    required TResult orElse(),
  }) {
    if (saveProjectAssetImagesOnDevice != null) {
      return saveProjectAssetImagesOnDevice(projectEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProjectData value) downloadProjectData,
    required TResult Function(_SaveOnDevice value)
        saveProjectAssetImagesOnDevice,
  }) {
    return saveProjectAssetImagesOnDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadProjectData value)? downloadProjectData,
    TResult Function(_SaveOnDevice value)? saveProjectAssetImagesOnDevice,
  }) {
    return saveProjectAssetImagesOnDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProjectData value)? downloadProjectData,
    TResult Function(_SaveOnDevice value)? saveProjectAssetImagesOnDevice,
    required TResult orElse(),
  }) {
    if (saveProjectAssetImagesOnDevice != null) {
      return saveProjectAssetImagesOnDevice(this);
    }
    return orElse();
  }
}

abstract class _SaveOnDevice implements DataEvent {
  const factory _SaveOnDevice({required ProjectEntity projectEntity}) =
      _$_SaveOnDevice;

  ProjectEntity get projectEntity;
  @JsonKey(ignore: true)
  _$SaveOnDeviceCopyWith<_SaveOnDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Empty empty() {
    return const _Empty();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded({required List<ProjectEntity> projectEntityList}) {
    return _Loaded(
      projectEntityList: projectEntityList,
    );
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ProjectEntity> projectEntityList) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res> implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState _value;
  // ignore: unused_field
  final $Res Function(DataState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DataState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ProjectEntity> projectEntityList) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DataState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'DataState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ProjectEntity> projectEntityList) loaded,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements DataState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ProjectEntity> projectEntityList) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DataState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<ProjectEntity> projectEntityList});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? projectEntityList = freezed,
  }) {
    return _then(_Loaded(
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.projectEntityList});

  @override
  final List<ProjectEntity> projectEntityList;

  @override
  String toString() {
    return 'DataState.loaded(projectEntityList: $projectEntityList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality()
                .equals(other.projectEntityList, projectEntityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(projectEntityList));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ProjectEntity> projectEntityList) loaded,
    required TResult Function() error,
  }) {
    return loaded(projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(projectEntityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DataState {
  const factory _Loaded({required List<ProjectEntity> projectEntityList}) =
      _$_Loaded;

  List<ProjectEntity> get projectEntityList;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$DataStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'DataState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ProjectEntity> projectEntityList) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ProjectEntity> projectEntityList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DataState {
  const factory _Error() = _$_Error;
}
