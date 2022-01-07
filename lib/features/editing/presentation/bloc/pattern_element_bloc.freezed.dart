// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pattern_element_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PatternElementEventTearOff {
  const _$PatternElementEventTearOff();

  _AddPattern addPattern({required String pattern}) {
    return _AddPattern(
      pattern: pattern,
    );
  }

  _RemovePatter removePattern({required String pattern}) {
    return _RemovePatter(
      pattern: pattern,
    );
  }

  _AddElement addElement({required String pattern}) {
    return _AddElement(
      pattern: pattern,
    );
  }

  _RemoveElement removeElement({required String pattern}) {
    return _RemoveElement(
      pattern: pattern,
    );
  }

  _ChangeToPatternView changeToPatternView({required String imageUrl}) {
    return _ChangeToPatternView(
      imageUrl: imageUrl,
    );
  }

  _ChangeToElementView changeToElementView({required String imageUrl}) {
    return _ChangeToElementView(
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $PatternElementEvent = _$PatternElementEventTearOff();

/// @nodoc
mixin _$PatternElementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pattern) addPattern,
    required TResult Function(String pattern) removePattern,
    required TResult Function(String pattern) addElement,
    required TResult Function(String pattern) removeElement,
    required TResult Function(String imageUrl) changeToPatternView,
    required TResult Function(String imageUrl) changeToElementView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPattern value) addPattern,
    required TResult Function(_RemovePatter value) removePattern,
    required TResult Function(_AddElement value) addElement,
    required TResult Function(_RemoveElement value) removeElement,
    required TResult Function(_ChangeToPatternView value) changeToPatternView,
    required TResult Function(_ChangeToElementView value) changeToElementView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternElementEventCopyWith<$Res> {
  factory $PatternElementEventCopyWith(
          PatternElementEvent value, $Res Function(PatternElementEvent) then) =
      _$PatternElementEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatternElementEventCopyWithImpl<$Res>
    implements $PatternElementEventCopyWith<$Res> {
  _$PatternElementEventCopyWithImpl(this._value, this._then);

  final PatternElementEvent _value;
  // ignore: unused_field
  final $Res Function(PatternElementEvent) _then;
}

/// @nodoc
abstract class _$AddPatternCopyWith<$Res> {
  factory _$AddPatternCopyWith(
          _AddPattern value, $Res Function(_AddPattern) then) =
      __$AddPatternCopyWithImpl<$Res>;
  $Res call({String pattern});
}

/// @nodoc
class __$AddPatternCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$AddPatternCopyWith<$Res> {
  __$AddPatternCopyWithImpl(
      _AddPattern _value, $Res Function(_AddPattern) _then)
      : super(_value, (v) => _then(v as _AddPattern));

  @override
  _AddPattern get _value => super._value as _AddPattern;

  @override
  $Res call({
    Object? pattern = freezed,
  }) {
    return _then(_AddPattern(
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddPattern implements _AddPattern {
  const _$_AddPattern({required this.pattern});

  @override
  final String pattern;

  @override
  String toString() {
    return 'PatternElementEvent.addPattern(pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPattern &&
            const DeepCollectionEquality().equals(other.pattern, pattern));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pattern));

  @JsonKey(ignore: true)
  @override
  _$AddPatternCopyWith<_AddPattern> get copyWith =>
      __$AddPatternCopyWithImpl<_AddPattern>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pattern) addPattern,
    required TResult Function(String pattern) removePattern,
    required TResult Function(String pattern) addElement,
    required TResult Function(String pattern) removeElement,
    required TResult Function(String imageUrl) changeToPatternView,
    required TResult Function(String imageUrl) changeToElementView,
  }) {
    return addPattern(pattern);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
  }) {
    return addPattern?.call(pattern);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
    required TResult orElse(),
  }) {
    if (addPattern != null) {
      return addPattern(pattern);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPattern value) addPattern,
    required TResult Function(_RemovePatter value) removePattern,
    required TResult Function(_AddElement value) addElement,
    required TResult Function(_RemoveElement value) removeElement,
    required TResult Function(_ChangeToPatternView value) changeToPatternView,
    required TResult Function(_ChangeToElementView value) changeToElementView,
  }) {
    return addPattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
  }) {
    return addPattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
    required TResult orElse(),
  }) {
    if (addPattern != null) {
      return addPattern(this);
    }
    return orElse();
  }
}

abstract class _AddPattern implements PatternElementEvent {
  const factory _AddPattern({required String pattern}) = _$_AddPattern;

  String get pattern;
  @JsonKey(ignore: true)
  _$AddPatternCopyWith<_AddPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovePatterCopyWith<$Res> {
  factory _$RemovePatterCopyWith(
          _RemovePatter value, $Res Function(_RemovePatter) then) =
      __$RemovePatterCopyWithImpl<$Res>;
  $Res call({String pattern});
}

/// @nodoc
class __$RemovePatterCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$RemovePatterCopyWith<$Res> {
  __$RemovePatterCopyWithImpl(
      _RemovePatter _value, $Res Function(_RemovePatter) _then)
      : super(_value, (v) => _then(v as _RemovePatter));

  @override
  _RemovePatter get _value => super._value as _RemovePatter;

  @override
  $Res call({
    Object? pattern = freezed,
  }) {
    return _then(_RemovePatter(
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemovePatter implements _RemovePatter {
  const _$_RemovePatter({required this.pattern});

  @override
  final String pattern;

  @override
  String toString() {
    return 'PatternElementEvent.removePattern(pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemovePatter &&
            const DeepCollectionEquality().equals(other.pattern, pattern));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pattern));

  @JsonKey(ignore: true)
  @override
  _$RemovePatterCopyWith<_RemovePatter> get copyWith =>
      __$RemovePatterCopyWithImpl<_RemovePatter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pattern) addPattern,
    required TResult Function(String pattern) removePattern,
    required TResult Function(String pattern) addElement,
    required TResult Function(String pattern) removeElement,
    required TResult Function(String imageUrl) changeToPatternView,
    required TResult Function(String imageUrl) changeToElementView,
  }) {
    return removePattern(pattern);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
  }) {
    return removePattern?.call(pattern);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
    required TResult orElse(),
  }) {
    if (removePattern != null) {
      return removePattern(pattern);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPattern value) addPattern,
    required TResult Function(_RemovePatter value) removePattern,
    required TResult Function(_AddElement value) addElement,
    required TResult Function(_RemoveElement value) removeElement,
    required TResult Function(_ChangeToPatternView value) changeToPatternView,
    required TResult Function(_ChangeToElementView value) changeToElementView,
  }) {
    return removePattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
  }) {
    return removePattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
    required TResult orElse(),
  }) {
    if (removePattern != null) {
      return removePattern(this);
    }
    return orElse();
  }
}

abstract class _RemovePatter implements PatternElementEvent {
  const factory _RemovePatter({required String pattern}) = _$_RemovePatter;

  String get pattern;
  @JsonKey(ignore: true)
  _$RemovePatterCopyWith<_RemovePatter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddElementCopyWith<$Res> {
  factory _$AddElementCopyWith(
          _AddElement value, $Res Function(_AddElement) then) =
      __$AddElementCopyWithImpl<$Res>;
  $Res call({String pattern});
}

/// @nodoc
class __$AddElementCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$AddElementCopyWith<$Res> {
  __$AddElementCopyWithImpl(
      _AddElement _value, $Res Function(_AddElement) _then)
      : super(_value, (v) => _then(v as _AddElement));

  @override
  _AddElement get _value => super._value as _AddElement;

  @override
  $Res call({
    Object? pattern = freezed,
  }) {
    return _then(_AddElement(
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddElement implements _AddElement {
  const _$_AddElement({required this.pattern});

  @override
  final String pattern;

  @override
  String toString() {
    return 'PatternElementEvent.addElement(pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddElement &&
            const DeepCollectionEquality().equals(other.pattern, pattern));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pattern));

  @JsonKey(ignore: true)
  @override
  _$AddElementCopyWith<_AddElement> get copyWith =>
      __$AddElementCopyWithImpl<_AddElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pattern) addPattern,
    required TResult Function(String pattern) removePattern,
    required TResult Function(String pattern) addElement,
    required TResult Function(String pattern) removeElement,
    required TResult Function(String imageUrl) changeToPatternView,
    required TResult Function(String imageUrl) changeToElementView,
  }) {
    return addElement(pattern);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
  }) {
    return addElement?.call(pattern);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
    required TResult orElse(),
  }) {
    if (addElement != null) {
      return addElement(pattern);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPattern value) addPattern,
    required TResult Function(_RemovePatter value) removePattern,
    required TResult Function(_AddElement value) addElement,
    required TResult Function(_RemoveElement value) removeElement,
    required TResult Function(_ChangeToPatternView value) changeToPatternView,
    required TResult Function(_ChangeToElementView value) changeToElementView,
  }) {
    return addElement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
  }) {
    return addElement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
    required TResult orElse(),
  }) {
    if (addElement != null) {
      return addElement(this);
    }
    return orElse();
  }
}

abstract class _AddElement implements PatternElementEvent {
  const factory _AddElement({required String pattern}) = _$_AddElement;

  String get pattern;
  @JsonKey(ignore: true)
  _$AddElementCopyWith<_AddElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveElementCopyWith<$Res> {
  factory _$RemoveElementCopyWith(
          _RemoveElement value, $Res Function(_RemoveElement) then) =
      __$RemoveElementCopyWithImpl<$Res>;
  $Res call({String pattern});
}

/// @nodoc
class __$RemoveElementCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$RemoveElementCopyWith<$Res> {
  __$RemoveElementCopyWithImpl(
      _RemoveElement _value, $Res Function(_RemoveElement) _then)
      : super(_value, (v) => _then(v as _RemoveElement));

  @override
  _RemoveElement get _value => super._value as _RemoveElement;

  @override
  $Res call({
    Object? pattern = freezed,
  }) {
    return _then(_RemoveElement(
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveElement implements _RemoveElement {
  const _$_RemoveElement({required this.pattern});

  @override
  final String pattern;

  @override
  String toString() {
    return 'PatternElementEvent.removeElement(pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveElement &&
            const DeepCollectionEquality().equals(other.pattern, pattern));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pattern));

  @JsonKey(ignore: true)
  @override
  _$RemoveElementCopyWith<_RemoveElement> get copyWith =>
      __$RemoveElementCopyWithImpl<_RemoveElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pattern) addPattern,
    required TResult Function(String pattern) removePattern,
    required TResult Function(String pattern) addElement,
    required TResult Function(String pattern) removeElement,
    required TResult Function(String imageUrl) changeToPatternView,
    required TResult Function(String imageUrl) changeToElementView,
  }) {
    return removeElement(pattern);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
  }) {
    return removeElement?.call(pattern);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
    required TResult orElse(),
  }) {
    if (removeElement != null) {
      return removeElement(pattern);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPattern value) addPattern,
    required TResult Function(_RemovePatter value) removePattern,
    required TResult Function(_AddElement value) addElement,
    required TResult Function(_RemoveElement value) removeElement,
    required TResult Function(_ChangeToPatternView value) changeToPatternView,
    required TResult Function(_ChangeToElementView value) changeToElementView,
  }) {
    return removeElement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
  }) {
    return removeElement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
    required TResult orElse(),
  }) {
    if (removeElement != null) {
      return removeElement(this);
    }
    return orElse();
  }
}

abstract class _RemoveElement implements PatternElementEvent {
  const factory _RemoveElement({required String pattern}) = _$_RemoveElement;

  String get pattern;
  @JsonKey(ignore: true)
  _$RemoveElementCopyWith<_RemoveElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeToPatternViewCopyWith<$Res> {
  factory _$ChangeToPatternViewCopyWith(_ChangeToPatternView value,
          $Res Function(_ChangeToPatternView) then) =
      __$ChangeToPatternViewCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$ChangeToPatternViewCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$ChangeToPatternViewCopyWith<$Res> {
  __$ChangeToPatternViewCopyWithImpl(
      _ChangeToPatternView _value, $Res Function(_ChangeToPatternView) _then)
      : super(_value, (v) => _then(v as _ChangeToPatternView));

  @override
  _ChangeToPatternView get _value => super._value as _ChangeToPatternView;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_ChangeToPatternView(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeToPatternView implements _ChangeToPatternView {
  const _$_ChangeToPatternView({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PatternElementEvent.changeToPatternView(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeToPatternView &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$ChangeToPatternViewCopyWith<_ChangeToPatternView> get copyWith =>
      __$ChangeToPatternViewCopyWithImpl<_ChangeToPatternView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pattern) addPattern,
    required TResult Function(String pattern) removePattern,
    required TResult Function(String pattern) addElement,
    required TResult Function(String pattern) removeElement,
    required TResult Function(String imageUrl) changeToPatternView,
    required TResult Function(String imageUrl) changeToElementView,
  }) {
    return changeToPatternView(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
  }) {
    return changeToPatternView?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
    required TResult orElse(),
  }) {
    if (changeToPatternView != null) {
      return changeToPatternView(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPattern value) addPattern,
    required TResult Function(_RemovePatter value) removePattern,
    required TResult Function(_AddElement value) addElement,
    required TResult Function(_RemoveElement value) removeElement,
    required TResult Function(_ChangeToPatternView value) changeToPatternView,
    required TResult Function(_ChangeToElementView value) changeToElementView,
  }) {
    return changeToPatternView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
  }) {
    return changeToPatternView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
    required TResult orElse(),
  }) {
    if (changeToPatternView != null) {
      return changeToPatternView(this);
    }
    return orElse();
  }
}

abstract class _ChangeToPatternView implements PatternElementEvent {
  const factory _ChangeToPatternView({required String imageUrl}) =
      _$_ChangeToPatternView;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$ChangeToPatternViewCopyWith<_ChangeToPatternView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeToElementViewCopyWith<$Res> {
  factory _$ChangeToElementViewCopyWith(_ChangeToElementView value,
          $Res Function(_ChangeToElementView) then) =
      __$ChangeToElementViewCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$ChangeToElementViewCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$ChangeToElementViewCopyWith<$Res> {
  __$ChangeToElementViewCopyWithImpl(
      _ChangeToElementView _value, $Res Function(_ChangeToElementView) _then)
      : super(_value, (v) => _then(v as _ChangeToElementView));

  @override
  _ChangeToElementView get _value => super._value as _ChangeToElementView;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_ChangeToElementView(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeToElementView implements _ChangeToElementView {
  const _$_ChangeToElementView({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PatternElementEvent.changeToElementView(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeToElementView &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$ChangeToElementViewCopyWith<_ChangeToElementView> get copyWith =>
      __$ChangeToElementViewCopyWithImpl<_ChangeToElementView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pattern) addPattern,
    required TResult Function(String pattern) removePattern,
    required TResult Function(String pattern) addElement,
    required TResult Function(String pattern) removeElement,
    required TResult Function(String imageUrl) changeToPatternView,
    required TResult Function(String imageUrl) changeToElementView,
  }) {
    return changeToElementView(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
  }) {
    return changeToElementView?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pattern)? addPattern,
    TResult Function(String pattern)? removePattern,
    TResult Function(String pattern)? addElement,
    TResult Function(String pattern)? removeElement,
    TResult Function(String imageUrl)? changeToPatternView,
    TResult Function(String imageUrl)? changeToElementView,
    required TResult orElse(),
  }) {
    if (changeToElementView != null) {
      return changeToElementView(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPattern value) addPattern,
    required TResult Function(_RemovePatter value) removePattern,
    required TResult Function(_AddElement value) addElement,
    required TResult Function(_RemoveElement value) removeElement,
    required TResult Function(_ChangeToPatternView value) changeToPatternView,
    required TResult Function(_ChangeToElementView value) changeToElementView,
  }) {
    return changeToElementView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
  }) {
    return changeToElementView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPattern value)? addPattern,
    TResult Function(_RemovePatter value)? removePattern,
    TResult Function(_AddElement value)? addElement,
    TResult Function(_RemoveElement value)? removeElement,
    TResult Function(_ChangeToPatternView value)? changeToPatternView,
    TResult Function(_ChangeToElementView value)? changeToElementView,
    required TResult orElse(),
  }) {
    if (changeToElementView != null) {
      return changeToElementView(this);
    }
    return orElse();
  }
}

abstract class _ChangeToElementView implements PatternElementEvent {
  const factory _ChangeToElementView({required String imageUrl}) =
      _$_ChangeToElementView;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$ChangeToElementViewCopyWith<_ChangeToElementView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PatternElementStateTearOff {
  const _$PatternElementStateTearOff();

  _PatternView pattern({required String imageUrl}) {
    return _PatternView(
      imageUrl: imageUrl,
    );
  }

  _Initial initial() {
    return const _Initial();
  }

  _ElementView element({required String imageUrl}) {
    return _ElementView(
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $PatternElementState = _$PatternElementStateTearOff();

/// @nodoc
mixin _$PatternElementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) pattern,
    required TResult Function() initial,
    required TResult Function(String imageUrl) element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ElementView value) element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternElementStateCopyWith<$Res> {
  factory $PatternElementStateCopyWith(
          PatternElementState value, $Res Function(PatternElementState) then) =
      _$PatternElementStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatternElementStateCopyWithImpl<$Res>
    implements $PatternElementStateCopyWith<$Res> {
  _$PatternElementStateCopyWithImpl(this._value, this._then);

  final PatternElementState _value;
  // ignore: unused_field
  final $Res Function(PatternElementState) _then;
}

/// @nodoc
abstract class _$PatternViewCopyWith<$Res> {
  factory _$PatternViewCopyWith(
          _PatternView value, $Res Function(_PatternView) then) =
      __$PatternViewCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$PatternViewCopyWithImpl<$Res>
    extends _$PatternElementStateCopyWithImpl<$Res>
    implements _$PatternViewCopyWith<$Res> {
  __$PatternViewCopyWithImpl(
      _PatternView _value, $Res Function(_PatternView) _then)
      : super(_value, (v) => _then(v as _PatternView));

  @override
  _PatternView get _value => super._value as _PatternView;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_PatternView(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PatternView implements _PatternView {
  const _$_PatternView({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PatternElementState.pattern(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatternView &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$PatternViewCopyWith<_PatternView> get copyWith =>
      __$PatternViewCopyWithImpl<_PatternView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) pattern,
    required TResult Function() initial,
    required TResult Function(String imageUrl) element,
  }) {
    return pattern(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
  }) {
    return pattern?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
    required TResult orElse(),
  }) {
    if (pattern != null) {
      return pattern(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ElementView value) element,
  }) {
    return pattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
  }) {
    return pattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
    required TResult orElse(),
  }) {
    if (pattern != null) {
      return pattern(this);
    }
    return orElse();
  }
}

abstract class _PatternView implements PatternElementState {
  const factory _PatternView({required String imageUrl}) = _$_PatternView;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$PatternViewCopyWith<_PatternView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PatternElementStateCopyWithImpl<$Res>
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
    return 'PatternElementState.initial()';
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
    required TResult Function(String imageUrl) pattern,
    required TResult Function() initial,
    required TResult Function(String imageUrl) element,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
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
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ElementView value) element,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PatternElementState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ElementViewCopyWith<$Res> {
  factory _$ElementViewCopyWith(
          _ElementView value, $Res Function(_ElementView) then) =
      __$ElementViewCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$ElementViewCopyWithImpl<$Res>
    extends _$PatternElementStateCopyWithImpl<$Res>
    implements _$ElementViewCopyWith<$Res> {
  __$ElementViewCopyWithImpl(
      _ElementView _value, $Res Function(_ElementView) _then)
      : super(_value, (v) => _then(v as _ElementView));

  @override
  _ElementView get _value => super._value as _ElementView;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_ElementView(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ElementView implements _ElementView {
  const _$_ElementView({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PatternElementState.element(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElementView &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$ElementViewCopyWith<_ElementView> get copyWith =>
      __$ElementViewCopyWithImpl<_ElementView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) pattern,
    required TResult Function() initial,
    required TResult Function(String imageUrl) element,
  }) {
    return element(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
  }) {
    return element?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? pattern,
    TResult Function()? initial,
    TResult Function(String imageUrl)? element,
    required TResult orElse(),
  }) {
    if (element != null) {
      return element(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Initial value) initial,
    required TResult Function(_ElementView value) element,
  }) {
    return element(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
  }) {
    return element?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Initial value)? initial,
    TResult Function(_ElementView value)? element,
    required TResult orElse(),
  }) {
    if (element != null) {
      return element(this);
    }
    return orElse();
  }
}

abstract class _ElementView implements PatternElementState {
  const factory _ElementView({required String imageUrl}) = _$_ElementView;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$ElementViewCopyWith<_ElementView> get copyWith =>
      throw _privateConstructorUsedError;
}
