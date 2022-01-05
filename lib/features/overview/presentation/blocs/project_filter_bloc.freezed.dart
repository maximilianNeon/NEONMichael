// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectFilterEventTearOff {
  const _$ProjectFilterEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SetProjectFilterEvent setProjectFilter(
      {required List<ProjectEntity> projectEntityList,
      required String projectTitle}) {
    return _SetProjectFilterEvent(
      projectEntityList: projectEntityList,
      projectTitle: projectTitle,
    );
  }
}

/// @nodoc
const $ProjectFilterEvent = _$ProjectFilterEventTearOff();

/// @nodoc
mixin _$ProjectFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)
        setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetProjectFilterEvent value) setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFilterEventCopyWith<$Res> {
  factory $ProjectFilterEventCopyWith(
          ProjectFilterEvent value, $Res Function(ProjectFilterEvent) then) =
      _$ProjectFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectFilterEventCopyWithImpl<$Res>
    implements $ProjectFilterEventCopyWith<$Res> {
  _$ProjectFilterEventCopyWithImpl(this._value, this._then);

  final ProjectFilterEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectFilterEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ProjectFilterEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProjectFilterEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)
        setProjectFilter,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetProjectFilterEvent value) setProjectFilter,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProjectFilterEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SetProjectFilterEventCopyWith<$Res> {
  factory _$SetProjectFilterEventCopyWith(_SetProjectFilterEvent value,
          $Res Function(_SetProjectFilterEvent) then) =
      __$SetProjectFilterEventCopyWithImpl<$Res>;
  $Res call({List<ProjectEntity> projectEntityList, String projectTitle});
}

/// @nodoc
class __$SetProjectFilterEventCopyWithImpl<$Res>
    extends _$ProjectFilterEventCopyWithImpl<$Res>
    implements _$SetProjectFilterEventCopyWith<$Res> {
  __$SetProjectFilterEventCopyWithImpl(_SetProjectFilterEvent _value,
      $Res Function(_SetProjectFilterEvent) _then)
      : super(_value, (v) => _then(v as _SetProjectFilterEvent));

  @override
  _SetProjectFilterEvent get _value => super._value as _SetProjectFilterEvent;

  @override
  $Res call({
    Object? projectEntityList = freezed,
    Object? projectTitle = freezed,
  }) {
    return _then(_SetProjectFilterEvent(
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      projectTitle: projectTitle == freezed
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetProjectFilterEvent implements _SetProjectFilterEvent {
  const _$_SetProjectFilterEvent(
      {required this.projectEntityList, required this.projectTitle});

  @override
  final List<ProjectEntity> projectEntityList;
  @override
  final String projectTitle;

  @override
  String toString() {
    return 'ProjectFilterEvent.setProjectFilter(projectEntityList: $projectEntityList, projectTitle: $projectTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetProjectFilterEvent &&
            const DeepCollectionEquality()
                .equals(other.projectEntityList, projectEntityList) &&
            const DeepCollectionEquality()
                .equals(other.projectTitle, projectTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(projectEntityList),
      const DeepCollectionEquality().hash(projectTitle));

  @JsonKey(ignore: true)
  @override
  _$SetProjectFilterEventCopyWith<_SetProjectFilterEvent> get copyWith =>
      __$SetProjectFilterEventCopyWithImpl<_SetProjectFilterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)
        setProjectFilter,
  }) {
    return setProjectFilter(projectEntityList, projectTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
  }) {
    return setProjectFilter?.call(projectEntityList, projectTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
    required TResult orElse(),
  }) {
    if (setProjectFilter != null) {
      return setProjectFilter(projectEntityList, projectTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetProjectFilterEvent value) setProjectFilter,
  }) {
    return setProjectFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
  }) {
    return setProjectFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
    required TResult orElse(),
  }) {
    if (setProjectFilter != null) {
      return setProjectFilter(this);
    }
    return orElse();
  }
}

abstract class _SetProjectFilterEvent implements ProjectFilterEvent {
  const factory _SetProjectFilterEvent(
      {required List<ProjectEntity> projectEntityList,
      required String projectTitle}) = _$_SetProjectFilterEvent;

  List<ProjectEntity> get projectEntityList;
  String get projectTitle;
  @JsonKey(ignore: true)
  _$SetProjectFilterEventCopyWith<_SetProjectFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProjectFilterStateTearOff {
  const _$ProjectFilterStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _FilteredByProject filtered(
      {required List<ProjectEntity> projectEntityList}) {
    return _FilteredByProject(
      projectEntityList: projectEntityList,
    );
  }
}

/// @nodoc
const $ProjectFilterState = _$ProjectFilterStateTearOff();

/// @nodoc
mixin _$ProjectFilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectEntity> projectEntityList) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FilteredByProject value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteredByProject value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteredByProject value)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFilterStateCopyWith<$Res> {
  factory $ProjectFilterStateCopyWith(
          ProjectFilterState value, $Res Function(ProjectFilterState) then) =
      _$ProjectFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectFilterStateCopyWithImpl<$Res>
    implements $ProjectFilterStateCopyWith<$Res> {
  _$ProjectFilterStateCopyWithImpl(this._value, this._then);

  final ProjectFilterState _value;
  // ignore: unused_field
  final $Res Function(ProjectFilterState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ProjectFilterStateCopyWithImpl<$Res>
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
    return 'ProjectFilterState.initial()';
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
    required TResult Function(List<ProjectEntity> projectEntityList) filtered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
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
    required TResult Function(_FilteredByProject value) filtered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteredByProject value)? filtered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteredByProject value)? filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProjectFilterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FilteredByProjectCopyWith<$Res> {
  factory _$FilteredByProjectCopyWith(
          _FilteredByProject value, $Res Function(_FilteredByProject) then) =
      __$FilteredByProjectCopyWithImpl<$Res>;
  $Res call({List<ProjectEntity> projectEntityList});
}

/// @nodoc
class __$FilteredByProjectCopyWithImpl<$Res>
    extends _$ProjectFilterStateCopyWithImpl<$Res>
    implements _$FilteredByProjectCopyWith<$Res> {
  __$FilteredByProjectCopyWithImpl(
      _FilteredByProject _value, $Res Function(_FilteredByProject) _then)
      : super(_value, (v) => _then(v as _FilteredByProject));

  @override
  _FilteredByProject get _value => super._value as _FilteredByProject;

  @override
  $Res call({
    Object? projectEntityList = freezed,
  }) {
    return _then(_FilteredByProject(
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$_FilteredByProject implements _FilteredByProject {
  const _$_FilteredByProject({required this.projectEntityList});

  @override
  final List<ProjectEntity> projectEntityList;

  @override
  String toString() {
    return 'ProjectFilterState.filtered(projectEntityList: $projectEntityList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilteredByProject &&
            const DeepCollectionEquality()
                .equals(other.projectEntityList, projectEntityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(projectEntityList));

  @JsonKey(ignore: true)
  @override
  _$FilteredByProjectCopyWith<_FilteredByProject> get copyWith =>
      __$FilteredByProjectCopyWithImpl<_FilteredByProject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectEntity> projectEntityList) filtered,
  }) {
    return filtered(projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
  }) {
    return filtered?.call(projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(projectEntityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FilteredByProject value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteredByProject value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteredByProject value)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _FilteredByProject implements ProjectFilterState {
  const factory _FilteredByProject(
      {required List<ProjectEntity> projectEntityList}) = _$_FilteredByProject;

  List<ProjectEntity> get projectEntityList;
  @JsonKey(ignore: true)
  _$FilteredByProjectCopyWith<_FilteredByProject> get copyWith =>
      throw _privateConstructorUsedError;
}
