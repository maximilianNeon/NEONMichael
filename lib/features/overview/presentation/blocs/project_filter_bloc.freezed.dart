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

  _ResetFilterEvent reset() {
    return const _ResetFilterEvent();
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
    required TResult Function() reset,
    required TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)
        setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterEvent value) reset,
    required TResult Function(_SetProjectFilterEvent value) setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? reset,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? reset,
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
abstract class _$ResetFilterEventCopyWith<$Res> {
  factory _$ResetFilterEventCopyWith(
          _ResetFilterEvent value, $Res Function(_ResetFilterEvent) then) =
      __$ResetFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetFilterEventCopyWithImpl<$Res>
    extends _$ProjectFilterEventCopyWithImpl<$Res>
    implements _$ResetFilterEventCopyWith<$Res> {
  __$ResetFilterEventCopyWithImpl(
      _ResetFilterEvent _value, $Res Function(_ResetFilterEvent) _then)
      : super(_value, (v) => _then(v as _ResetFilterEvent));

  @override
  _ResetFilterEvent get _value => super._value as _ResetFilterEvent;
}

/// @nodoc

class _$_ResetFilterEvent implements _ResetFilterEvent {
  const _$_ResetFilterEvent();

  @override
  String toString() {
    return 'ProjectFilterEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetFilterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)
        setProjectFilter,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterEvent value) reset,
    required TResult Function(_SetProjectFilterEvent value) setProjectFilter,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? reset,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? reset,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetFilterEvent implements ProjectFilterEvent {
  const factory _ResetFilterEvent() = _$_ResetFilterEvent;
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
    required TResult Function() reset,
    required TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)
        setProjectFilter,
  }) {
    return setProjectFilter(projectEntityList, projectTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(
            List<ProjectEntity> projectEntityList, String projectTitle)?
        setProjectFilter,
  }) {
    return setProjectFilter?.call(projectEntityList, projectTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
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
    required TResult Function(_ResetFilterEvent value) reset,
    required TResult Function(_SetProjectFilterEvent value) setProjectFilter,
  }) {
    return setProjectFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? reset,
    TResult Function(_SetProjectFilterEvent value)? setProjectFilter,
  }) {
    return setProjectFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? reset,
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

  _ResetFilterState reset() {
    return const _ResetFilterState();
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
    required TResult Function() reset,
    required TResult Function(List<ProjectEntity> projectEntityList) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterState value) reset,
    required TResult Function(_FilteredByProject value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterState value)? reset,
    TResult Function(_FilteredByProject value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterState value)? reset,
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
abstract class _$ResetFilterStateCopyWith<$Res> {
  factory _$ResetFilterStateCopyWith(
          _ResetFilterState value, $Res Function(_ResetFilterState) then) =
      __$ResetFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetFilterStateCopyWithImpl<$Res>
    extends _$ProjectFilterStateCopyWithImpl<$Res>
    implements _$ResetFilterStateCopyWith<$Res> {
  __$ResetFilterStateCopyWithImpl(
      _ResetFilterState _value, $Res Function(_ResetFilterState) _then)
      : super(_value, (v) => _then(v as _ResetFilterState));

  @override
  _ResetFilterState get _value => super._value as _ResetFilterState;
}

/// @nodoc

class _$_ResetFilterState implements _ResetFilterState {
  const _$_ResetFilterState();

  @override
  String toString() {
    return 'ProjectFilterState.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetFilterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(List<ProjectEntity> projectEntityList) filtered,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterState value) reset,
    required TResult Function(_FilteredByProject value) filtered,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterState value)? reset,
    TResult Function(_FilteredByProject value)? filtered,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterState value)? reset,
    TResult Function(_FilteredByProject value)? filtered,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetFilterState implements ProjectFilterState {
  const factory _ResetFilterState() = _$_ResetFilterState;
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
    required TResult Function() reset,
    required TResult Function(List<ProjectEntity> projectEntityList) filtered,
  }) {
    return filtered(projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<ProjectEntity> projectEntityList)? filtered,
  }) {
    return filtered?.call(projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
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
    required TResult Function(_ResetFilterState value) reset,
    required TResult Function(_FilteredByProject value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterState value)? reset,
    TResult Function(_FilteredByProject value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterState value)? reset,
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
