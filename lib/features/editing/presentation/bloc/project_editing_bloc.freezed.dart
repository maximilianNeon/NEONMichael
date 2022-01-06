// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_editing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectEditingEventTearOff {
  const _$ProjectEditingEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Add add() {
    return const _Add();
  }
}

/// @nodoc
const $ProjectEditingEvent = _$ProjectEditingEventTearOff();

/// @nodoc
mixin _$ProjectEditingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEditingEventCopyWith<$Res> {
  factory $ProjectEditingEventCopyWith(
          ProjectEditingEvent value, $Res Function(ProjectEditingEvent) then) =
      _$ProjectEditingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectEditingEventCopyWithImpl<$Res>
    implements $ProjectEditingEventCopyWith<$Res> {
  _$ProjectEditingEventCopyWithImpl(this._value, this._then);

  final ProjectEditingEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectEditingEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ProjectEditingEventCopyWithImpl<$Res>
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
    return 'ProjectEditingEvent.started()';
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
    required TResult Function() add,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
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
    required TResult Function(_Add value) add,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProjectEditingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$ProjectEditingEventCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add();

  @override
  String toString() {
    return 'ProjectEditingEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Add);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() add,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements ProjectEditingEvent {
  const factory _Add() = _$_Add;
}

/// @nodoc
class _$ProjectEditingStateTearOff {
  const _$ProjectEditingStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Editing editing() {
    return const _Editing();
  }
}

/// @nodoc
const $ProjectEditingState = _$ProjectEditingStateTearOff();

/// @nodoc
mixin _$ProjectEditingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEditingStateCopyWith<$Res> {
  factory $ProjectEditingStateCopyWith(
          ProjectEditingState value, $Res Function(ProjectEditingState) then) =
      _$ProjectEditingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectEditingStateCopyWithImpl<$Res>
    implements $ProjectEditingStateCopyWith<$Res> {
  _$ProjectEditingStateCopyWithImpl(this._value, this._then);

  final ProjectEditingState _value;
  // ignore: unused_field
  final $Res Function(ProjectEditingState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ProjectEditingStateCopyWithImpl<$Res>
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
    return 'ProjectEditingState.initial()';
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
    required TResult Function() editing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
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
    required TResult Function(_Editing value) editing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProjectEditingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$EditingCopyWith<$Res> {
  factory _$EditingCopyWith(_Editing value, $Res Function(_Editing) then) =
      __$EditingCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditingCopyWithImpl<$Res>
    extends _$ProjectEditingStateCopyWithImpl<$Res>
    implements _$EditingCopyWith<$Res> {
  __$EditingCopyWithImpl(_Editing _value, $Res Function(_Editing) _then)
      : super(_value, (v) => _then(v as _Editing));

  @override
  _Editing get _value => super._value as _Editing;
}

/// @nodoc

class _$_Editing implements _Editing {
  const _$_Editing();

  @override
  String toString() {
    return 'ProjectEditingState.editing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Editing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements ProjectEditingState {
  const factory _Editing() = _$_Editing;
}
