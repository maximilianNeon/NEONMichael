// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterEventTearOff {
  const _$FilterEventTearOff();

  _ResetFilterEvent resetFilter(List<ProjectEntity> projectEntitesList) {
    return _ResetFilterEvent(
      projectEntitesList,
    );
  }

  _ElementFilterEvent setElementFilter(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) {
    return _ElementFilterEvent(
      filter: filter,
      projectEntityList: projectEntityList,
    );
  }

  _PatternFilterEvent setPatternFilter(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) {
    return _PatternFilterEvent(
      filter: filter,
      projectEntityList: projectEntityList,
    );
  }

  _TypeFilterEvent setTypeFilter(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) {
    return _TypeFilterEvent(
      filter: filter,
      projectEntityList: projectEntityList,
    );
  }
}

/// @nodoc
const $FilterEvent = _$FilterEventTearOff();

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProjectEntity> projectEntitesList)
        resetFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setElementFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setPatternFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setTypeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterEvent value) resetFilter,
    required TResult Function(_ElementFilterEvent value) setElementFilter,
    required TResult Function(_PatternFilterEvent value) setPatternFilter,
    required TResult Function(_TypeFilterEvent value) setTypeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res> implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  final FilterEvent _value;
  // ignore: unused_field
  final $Res Function(FilterEvent) _then;
}

/// @nodoc
abstract class _$ResetFilterEventCopyWith<$Res> {
  factory _$ResetFilterEventCopyWith(
          _ResetFilterEvent value, $Res Function(_ResetFilterEvent) then) =
      __$ResetFilterEventCopyWithImpl<$Res>;
  $Res call({List<ProjectEntity> projectEntitesList});
}

/// @nodoc
class __$ResetFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$ResetFilterEventCopyWith<$Res> {
  __$ResetFilterEventCopyWithImpl(
      _ResetFilterEvent _value, $Res Function(_ResetFilterEvent) _then)
      : super(_value, (v) => _then(v as _ResetFilterEvent));

  @override
  _ResetFilterEvent get _value => super._value as _ResetFilterEvent;

  @override
  $Res call({
    Object? projectEntitesList = freezed,
  }) {
    return _then(_ResetFilterEvent(
      projectEntitesList == freezed
          ? _value.projectEntitesList
          : projectEntitesList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$_ResetFilterEvent implements _ResetFilterEvent {
  const _$_ResetFilterEvent(this.projectEntitesList);

  @override
  final List<ProjectEntity> projectEntitesList;

  @override
  String toString() {
    return 'FilterEvent.resetFilter(projectEntitesList: $projectEntitesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetFilterEvent &&
            const DeepCollectionEquality()
                .equals(other.projectEntitesList, projectEntitesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(projectEntitesList));

  @JsonKey(ignore: true)
  @override
  _$ResetFilterEventCopyWith<_ResetFilterEvent> get copyWith =>
      __$ResetFilterEventCopyWithImpl<_ResetFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProjectEntity> projectEntitesList)
        resetFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setElementFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setPatternFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setTypeFilter,
  }) {
    return resetFilter(projectEntitesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
  }) {
    return resetFilter?.call(projectEntitesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
    required TResult orElse(),
  }) {
    if (resetFilter != null) {
      return resetFilter(projectEntitesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterEvent value) resetFilter,
    required TResult Function(_ElementFilterEvent value) setElementFilter,
    required TResult Function(_PatternFilterEvent value) setPatternFilter,
    required TResult Function(_TypeFilterEvent value) setTypeFilter,
  }) {
    return resetFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
  }) {
    return resetFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
    required TResult orElse(),
  }) {
    if (resetFilter != null) {
      return resetFilter(this);
    }
    return orElse();
  }
}

abstract class _ResetFilterEvent implements FilterEvent {
  const factory _ResetFilterEvent(List<ProjectEntity> projectEntitesList) =
      _$_ResetFilterEvent;

  List<ProjectEntity> get projectEntitesList;
  @JsonKey(ignore: true)
  _$ResetFilterEventCopyWith<_ResetFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElementFilterEventCopyWith<$Res> {
  factory _$ElementFilterEventCopyWith(
          _ElementFilterEvent value, $Res Function(_ElementFilterEvent) then) =
      __$ElementFilterEventCopyWithImpl<$Res>;
  $Res call({String filter, List<ProjectEntity> projectEntityList});
}

/// @nodoc
class __$ElementFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$ElementFilterEventCopyWith<$Res> {
  __$ElementFilterEventCopyWithImpl(
      _ElementFilterEvent _value, $Res Function(_ElementFilterEvent) _then)
      : super(_value, (v) => _then(v as _ElementFilterEvent));

  @override
  _ElementFilterEvent get _value => super._value as _ElementFilterEvent;

  @override
  $Res call({
    Object? filter = freezed,
    Object? projectEntityList = freezed,
  }) {
    return _then(_ElementFilterEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$_ElementFilterEvent implements _ElementFilterEvent {
  const _$_ElementFilterEvent(
      {required this.filter, required this.projectEntityList});

  @override
  final String filter;
  @override
  final List<ProjectEntity> projectEntityList;

  @override
  String toString() {
    return 'FilterEvent.setElementFilter(filter: $filter, projectEntityList: $projectEntityList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElementFilterEvent &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality()
                .equals(other.projectEntityList, projectEntityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(projectEntityList));

  @JsonKey(ignore: true)
  @override
  _$ElementFilterEventCopyWith<_ElementFilterEvent> get copyWith =>
      __$ElementFilterEventCopyWithImpl<_ElementFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProjectEntity> projectEntitesList)
        resetFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setElementFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setPatternFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setTypeFilter,
  }) {
    return setElementFilter(filter, projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
  }) {
    return setElementFilter?.call(filter, projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
    required TResult orElse(),
  }) {
    if (setElementFilter != null) {
      return setElementFilter(filter, projectEntityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterEvent value) resetFilter,
    required TResult Function(_ElementFilterEvent value) setElementFilter,
    required TResult Function(_PatternFilterEvent value) setPatternFilter,
    required TResult Function(_TypeFilterEvent value) setTypeFilter,
  }) {
    return setElementFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
  }) {
    return setElementFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
    required TResult orElse(),
  }) {
    if (setElementFilter != null) {
      return setElementFilter(this);
    }
    return orElse();
  }
}

abstract class _ElementFilterEvent implements FilterEvent {
  const factory _ElementFilterEvent(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) = _$_ElementFilterEvent;

  String get filter;
  List<ProjectEntity> get projectEntityList;
  @JsonKey(ignore: true)
  _$ElementFilterEventCopyWith<_ElementFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PatternFilterEventCopyWith<$Res> {
  factory _$PatternFilterEventCopyWith(
          _PatternFilterEvent value, $Res Function(_PatternFilterEvent) then) =
      __$PatternFilterEventCopyWithImpl<$Res>;
  $Res call({String filter, List<ProjectEntity> projectEntityList});
}

/// @nodoc
class __$PatternFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$PatternFilterEventCopyWith<$Res> {
  __$PatternFilterEventCopyWithImpl(
      _PatternFilterEvent _value, $Res Function(_PatternFilterEvent) _then)
      : super(_value, (v) => _then(v as _PatternFilterEvent));

  @override
  _PatternFilterEvent get _value => super._value as _PatternFilterEvent;

  @override
  $Res call({
    Object? filter = freezed,
    Object? projectEntityList = freezed,
  }) {
    return _then(_PatternFilterEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$_PatternFilterEvent implements _PatternFilterEvent {
  const _$_PatternFilterEvent(
      {required this.filter, required this.projectEntityList});

  @override
  final String filter;
  @override
  final List<ProjectEntity> projectEntityList;

  @override
  String toString() {
    return 'FilterEvent.setPatternFilter(filter: $filter, projectEntityList: $projectEntityList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatternFilterEvent &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality()
                .equals(other.projectEntityList, projectEntityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(projectEntityList));

  @JsonKey(ignore: true)
  @override
  _$PatternFilterEventCopyWith<_PatternFilterEvent> get copyWith =>
      __$PatternFilterEventCopyWithImpl<_PatternFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProjectEntity> projectEntitesList)
        resetFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setElementFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setPatternFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setTypeFilter,
  }) {
    return setPatternFilter(filter, projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
  }) {
    return setPatternFilter?.call(filter, projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
    required TResult orElse(),
  }) {
    if (setPatternFilter != null) {
      return setPatternFilter(filter, projectEntityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterEvent value) resetFilter,
    required TResult Function(_ElementFilterEvent value) setElementFilter,
    required TResult Function(_PatternFilterEvent value) setPatternFilter,
    required TResult Function(_TypeFilterEvent value) setTypeFilter,
  }) {
    return setPatternFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
  }) {
    return setPatternFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
    required TResult orElse(),
  }) {
    if (setPatternFilter != null) {
      return setPatternFilter(this);
    }
    return orElse();
  }
}

abstract class _PatternFilterEvent implements FilterEvent {
  const factory _PatternFilterEvent(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) = _$_PatternFilterEvent;

  String get filter;
  List<ProjectEntity> get projectEntityList;
  @JsonKey(ignore: true)
  _$PatternFilterEventCopyWith<_PatternFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeFilterEventCopyWith<$Res> {
  factory _$TypeFilterEventCopyWith(
          _TypeFilterEvent value, $Res Function(_TypeFilterEvent) then) =
      __$TypeFilterEventCopyWithImpl<$Res>;
  $Res call({String filter, List<ProjectEntity> projectEntityList});
}

/// @nodoc
class __$TypeFilterEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$TypeFilterEventCopyWith<$Res> {
  __$TypeFilterEventCopyWithImpl(
      _TypeFilterEvent _value, $Res Function(_TypeFilterEvent) _then)
      : super(_value, (v) => _then(v as _TypeFilterEvent));

  @override
  _TypeFilterEvent get _value => super._value as _TypeFilterEvent;

  @override
  $Res call({
    Object? filter = freezed,
    Object? projectEntityList = freezed,
  }) {
    return _then(_TypeFilterEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      projectEntityList: projectEntityList == freezed
          ? _value.projectEntityList
          : projectEntityList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$_TypeFilterEvent implements _TypeFilterEvent {
  const _$_TypeFilterEvent(
      {required this.filter, required this.projectEntityList});

  @override
  final String filter;
  @override
  final List<ProjectEntity> projectEntityList;

  @override
  String toString() {
    return 'FilterEvent.setTypeFilter(filter: $filter, projectEntityList: $projectEntityList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeFilterEvent &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality()
                .equals(other.projectEntityList, projectEntityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(projectEntityList));

  @JsonKey(ignore: true)
  @override
  _$TypeFilterEventCopyWith<_TypeFilterEvent> get copyWith =>
      __$TypeFilterEventCopyWithImpl<_TypeFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProjectEntity> projectEntitesList)
        resetFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setElementFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setPatternFilter,
    required TResult Function(
            String filter, List<ProjectEntity> projectEntityList)
        setTypeFilter,
  }) {
    return setTypeFilter(filter, projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
  }) {
    return setTypeFilter?.call(filter, projectEntityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProjectEntity> projectEntitesList)? resetFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setElementFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setPatternFilter,
    TResult Function(String filter, List<ProjectEntity> projectEntityList)?
        setTypeFilter,
    required TResult orElse(),
  }) {
    if (setTypeFilter != null) {
      return setTypeFilter(filter, projectEntityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilterEvent value) resetFilter,
    required TResult Function(_ElementFilterEvent value) setElementFilter,
    required TResult Function(_PatternFilterEvent value) setPatternFilter,
    required TResult Function(_TypeFilterEvent value) setTypeFilter,
  }) {
    return setTypeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
  }) {
    return setTypeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilterEvent value)? resetFilter,
    TResult Function(_ElementFilterEvent value)? setElementFilter,
    TResult Function(_PatternFilterEvent value)? setPatternFilter,
    TResult Function(_TypeFilterEvent value)? setTypeFilter,
    required TResult orElse(),
  }) {
    if (setTypeFilter != null) {
      return setTypeFilter(this);
    }
    return orElse();
  }
}

abstract class _TypeFilterEvent implements FilterEvent {
  const factory _TypeFilterEvent(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) = _$_TypeFilterEvent;

  String get filter;
  List<ProjectEntity> get projectEntityList;
  @JsonKey(ignore: true)
  _$TypeFilterEventCopyWith<_TypeFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  _EmptyFilterState empty() {
    return const _EmptyFilterState();
  }

  _PatternFilterState filteredByPattern(
      {required List<ProjectEntity> filteredByPatternList,
      required String actitvatedFilter}) {
    return _PatternFilterState(
      filteredByPatternList: filteredByPatternList,
      actitvatedFilter: actitvatedFilter,
    );
  }

  _ElementFilterState filteredByElements(
      {required List<ProjectEntity> filteredByElements,
      required String actitvatedFilter}) {
    return _ElementFilterState(
      filteredByElements: filteredByElements,
      actitvatedFilter: actitvatedFilter,
    );
  }

  _TypeFilterState filteredByType(
      {required List<ProjectEntity> filterdByTypeList,
      required String actitvatedFilter}) {
    return _TypeFilterState(
      filterdByTypeList: filterdByTypeList,
      actitvatedFilter: actitvatedFilter,
    );
  }
}

/// @nodoc
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)
        filteredByPattern,
    required TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)
        filteredByElements,
    required TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)
        filteredByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFilterState value) empty,
    required TResult Function(_PatternFilterState value) filteredByPattern,
    required TResult Function(_ElementFilterState value) filteredByElements,
    required TResult Function(_TypeFilterState value) filteredByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;
}

/// @nodoc
abstract class _$EmptyFilterStateCopyWith<$Res> {
  factory _$EmptyFilterStateCopyWith(
          _EmptyFilterState value, $Res Function(_EmptyFilterState) then) =
      __$EmptyFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$EmptyFilterStateCopyWith<$Res> {
  __$EmptyFilterStateCopyWithImpl(
      _EmptyFilterState _value, $Res Function(_EmptyFilterState) _then)
      : super(_value, (v) => _then(v as _EmptyFilterState));

  @override
  _EmptyFilterState get _value => super._value as _EmptyFilterState;
}

/// @nodoc

class _$_EmptyFilterState implements _EmptyFilterState {
  const _$_EmptyFilterState();

  @override
  String toString() {
    return 'FilterState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmptyFilterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)
        filteredByPattern,
    required TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)
        filteredByElements,
    required TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)
        filteredByType,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
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
    required TResult Function(_EmptyFilterState value) empty,
    required TResult Function(_PatternFilterState value) filteredByPattern,
    required TResult Function(_ElementFilterState value) filteredByElements,
    required TResult Function(_TypeFilterState value) filteredByType,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyFilterState implements FilterState {
  const factory _EmptyFilterState() = _$_EmptyFilterState;
}

/// @nodoc
abstract class _$PatternFilterStateCopyWith<$Res> {
  factory _$PatternFilterStateCopyWith(
          _PatternFilterState value, $Res Function(_PatternFilterState) then) =
      __$PatternFilterStateCopyWithImpl<$Res>;
  $Res call(
      {List<ProjectEntity> filteredByPatternList, String actitvatedFilter});
}

/// @nodoc
class __$PatternFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$PatternFilterStateCopyWith<$Res> {
  __$PatternFilterStateCopyWithImpl(
      _PatternFilterState _value, $Res Function(_PatternFilterState) _then)
      : super(_value, (v) => _then(v as _PatternFilterState));

  @override
  _PatternFilterState get _value => super._value as _PatternFilterState;

  @override
  $Res call({
    Object? filteredByPatternList = freezed,
    Object? actitvatedFilter = freezed,
  }) {
    return _then(_PatternFilterState(
      filteredByPatternList: filteredByPatternList == freezed
          ? _value.filteredByPatternList
          : filteredByPatternList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      actitvatedFilter: actitvatedFilter == freezed
          ? _value.actitvatedFilter
          : actitvatedFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PatternFilterState implements _PatternFilterState {
  const _$_PatternFilterState(
      {required this.filteredByPatternList, required this.actitvatedFilter});

  @override
  final List<ProjectEntity> filteredByPatternList;
  @override
  final String actitvatedFilter;

  @override
  String toString() {
    return 'FilterState.filteredByPattern(filteredByPatternList: $filteredByPatternList, actitvatedFilter: $actitvatedFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatternFilterState &&
            const DeepCollectionEquality()
                .equals(other.filteredByPatternList, filteredByPatternList) &&
            const DeepCollectionEquality()
                .equals(other.actitvatedFilter, actitvatedFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filteredByPatternList),
      const DeepCollectionEquality().hash(actitvatedFilter));

  @JsonKey(ignore: true)
  @override
  _$PatternFilterStateCopyWith<_PatternFilterState> get copyWith =>
      __$PatternFilterStateCopyWithImpl<_PatternFilterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)
        filteredByPattern,
    required TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)
        filteredByElements,
    required TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)
        filteredByType,
  }) {
    return filteredByPattern(filteredByPatternList, actitvatedFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
  }) {
    return filteredByPattern?.call(filteredByPatternList, actitvatedFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
    required TResult orElse(),
  }) {
    if (filteredByPattern != null) {
      return filteredByPattern(filteredByPatternList, actitvatedFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFilterState value) empty,
    required TResult Function(_PatternFilterState value) filteredByPattern,
    required TResult Function(_ElementFilterState value) filteredByElements,
    required TResult Function(_TypeFilterState value) filteredByType,
  }) {
    return filteredByPattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
  }) {
    return filteredByPattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
    required TResult orElse(),
  }) {
    if (filteredByPattern != null) {
      return filteredByPattern(this);
    }
    return orElse();
  }
}

abstract class _PatternFilterState implements FilterState {
  const factory _PatternFilterState(
      {required List<ProjectEntity> filteredByPatternList,
      required String actitvatedFilter}) = _$_PatternFilterState;

  List<ProjectEntity> get filteredByPatternList;
  String get actitvatedFilter;
  @JsonKey(ignore: true)
  _$PatternFilterStateCopyWith<_PatternFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ElementFilterStateCopyWith<$Res> {
  factory _$ElementFilterStateCopyWith(
          _ElementFilterState value, $Res Function(_ElementFilterState) then) =
      __$ElementFilterStateCopyWithImpl<$Res>;
  $Res call({List<ProjectEntity> filteredByElements, String actitvatedFilter});
}

/// @nodoc
class __$ElementFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$ElementFilterStateCopyWith<$Res> {
  __$ElementFilterStateCopyWithImpl(
      _ElementFilterState _value, $Res Function(_ElementFilterState) _then)
      : super(_value, (v) => _then(v as _ElementFilterState));

  @override
  _ElementFilterState get _value => super._value as _ElementFilterState;

  @override
  $Res call({
    Object? filteredByElements = freezed,
    Object? actitvatedFilter = freezed,
  }) {
    return _then(_ElementFilterState(
      filteredByElements: filteredByElements == freezed
          ? _value.filteredByElements
          : filteredByElements // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      actitvatedFilter: actitvatedFilter == freezed
          ? _value.actitvatedFilter
          : actitvatedFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ElementFilterState implements _ElementFilterState {
  const _$_ElementFilterState(
      {required this.filteredByElements, required this.actitvatedFilter});

  @override
  final List<ProjectEntity> filteredByElements;
  @override
  final String actitvatedFilter;

  @override
  String toString() {
    return 'FilterState.filteredByElements(filteredByElements: $filteredByElements, actitvatedFilter: $actitvatedFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElementFilterState &&
            const DeepCollectionEquality()
                .equals(other.filteredByElements, filteredByElements) &&
            const DeepCollectionEquality()
                .equals(other.actitvatedFilter, actitvatedFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filteredByElements),
      const DeepCollectionEquality().hash(actitvatedFilter));

  @JsonKey(ignore: true)
  @override
  _$ElementFilterStateCopyWith<_ElementFilterState> get copyWith =>
      __$ElementFilterStateCopyWithImpl<_ElementFilterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)
        filteredByPattern,
    required TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)
        filteredByElements,
    required TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)
        filteredByType,
  }) {
    return filteredByElements(this.filteredByElements, actitvatedFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
  }) {
    return filteredByElements?.call(this.filteredByElements, actitvatedFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
    required TResult orElse(),
  }) {
    if (filteredByElements != null) {
      return filteredByElements(this.filteredByElements, actitvatedFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFilterState value) empty,
    required TResult Function(_PatternFilterState value) filteredByPattern,
    required TResult Function(_ElementFilterState value) filteredByElements,
    required TResult Function(_TypeFilterState value) filteredByType,
  }) {
    return filteredByElements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
  }) {
    return filteredByElements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
    required TResult orElse(),
  }) {
    if (filteredByElements != null) {
      return filteredByElements(this);
    }
    return orElse();
  }
}

abstract class _ElementFilterState implements FilterState {
  const factory _ElementFilterState(
      {required List<ProjectEntity> filteredByElements,
      required String actitvatedFilter}) = _$_ElementFilterState;

  List<ProjectEntity> get filteredByElements;
  String get actitvatedFilter;
  @JsonKey(ignore: true)
  _$ElementFilterStateCopyWith<_ElementFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeFilterStateCopyWith<$Res> {
  factory _$TypeFilterStateCopyWith(
          _TypeFilterState value, $Res Function(_TypeFilterState) then) =
      __$TypeFilterStateCopyWithImpl<$Res>;
  $Res call({List<ProjectEntity> filterdByTypeList, String actitvatedFilter});
}

/// @nodoc
class __$TypeFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$TypeFilterStateCopyWith<$Res> {
  __$TypeFilterStateCopyWithImpl(
      _TypeFilterState _value, $Res Function(_TypeFilterState) _then)
      : super(_value, (v) => _then(v as _TypeFilterState));

  @override
  _TypeFilterState get _value => super._value as _TypeFilterState;

  @override
  $Res call({
    Object? filterdByTypeList = freezed,
    Object? actitvatedFilter = freezed,
  }) {
    return _then(_TypeFilterState(
      filterdByTypeList: filterdByTypeList == freezed
          ? _value.filterdByTypeList
          : filterdByTypeList // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      actitvatedFilter: actitvatedFilter == freezed
          ? _value.actitvatedFilter
          : actitvatedFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TypeFilterState implements _TypeFilterState {
  const _$_TypeFilterState(
      {required this.filterdByTypeList, required this.actitvatedFilter});

  @override
  final List<ProjectEntity> filterdByTypeList;
  @override
  final String actitvatedFilter;

  @override
  String toString() {
    return 'FilterState.filteredByType(filterdByTypeList: $filterdByTypeList, actitvatedFilter: $actitvatedFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeFilterState &&
            const DeepCollectionEquality()
                .equals(other.filterdByTypeList, filterdByTypeList) &&
            const DeepCollectionEquality()
                .equals(other.actitvatedFilter, actitvatedFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filterdByTypeList),
      const DeepCollectionEquality().hash(actitvatedFilter));

  @JsonKey(ignore: true)
  @override
  _$TypeFilterStateCopyWith<_TypeFilterState> get copyWith =>
      __$TypeFilterStateCopyWithImpl<_TypeFilterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)
        filteredByPattern,
    required TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)
        filteredByElements,
    required TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)
        filteredByType,
  }) {
    return filteredByType(filterdByTypeList, actitvatedFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
  }) {
    return filteredByType?.call(filterdByTypeList, actitvatedFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<ProjectEntity> filteredByPatternList, String actitvatedFilter)?
        filteredByPattern,
    TResult Function(
            List<ProjectEntity> filteredByElements, String actitvatedFilter)?
        filteredByElements,
    TResult Function(
            List<ProjectEntity> filterdByTypeList, String actitvatedFilter)?
        filteredByType,
    required TResult orElse(),
  }) {
    if (filteredByType != null) {
      return filteredByType(filterdByTypeList, actitvatedFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFilterState value) empty,
    required TResult Function(_PatternFilterState value) filteredByPattern,
    required TResult Function(_ElementFilterState value) filteredByElements,
    required TResult Function(_TypeFilterState value) filteredByType,
  }) {
    return filteredByType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
  }) {
    return filteredByType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFilterState value)? empty,
    TResult Function(_PatternFilterState value)? filteredByPattern,
    TResult Function(_ElementFilterState value)? filteredByElements,
    TResult Function(_TypeFilterState value)? filteredByType,
    required TResult orElse(),
  }) {
    if (filteredByType != null) {
      return filteredByType(this);
    }
    return orElse();
  }
}

abstract class _TypeFilterState implements FilterState {
  const factory _TypeFilterState(
      {required List<ProjectEntity> filterdByTypeList,
      required String actitvatedFilter}) = _$_TypeFilterState;

  List<ProjectEntity> get filterdByTypeList;
  String get actitvatedFilter;
  @JsonKey(ignore: true)
  _$TypeFilterStateCopyWith<_TypeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
