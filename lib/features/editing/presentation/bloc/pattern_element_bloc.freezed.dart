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

  _AddPattern addPattern(
      {required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required PatternEntity patternEntity,
      required Uint8List imageFileData,
      required int id}) {
    return _AddPattern(
      currentPatternEntityList: currentPatternEntityList,
      currentElementEntityList: currentElementEntityList,
      patternEntity: patternEntity,
      imageFileData: imageFileData,
      id: id,
    );
  }

  _RemovePatter removePattern(
      {required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required PatternEntity patternEntity,
      required Uint8List imageFileData,
      required int id}) {
    return _RemovePatter(
      currentPatternEntityList: currentPatternEntityList,
      currentElementEntityList: currentElementEntityList,
      patternEntity: patternEntity,
      imageFileData: imageFileData,
      id: id,
    );
  }

  _AddElement addElement(
      {required int id,
      required ElementEntity elementEntity,
      required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required Uint8List imageFileData}) {
    return _AddElement(
      id: id,
      elementEntity: elementEntity,
      currentPatternEntityList: currentPatternEntityList,
      currentElementEntityList: currentElementEntityList,
      imageFileData: imageFileData,
    );
  }

  _RemoveElement removeElement(
      {required ElementEntity elementEntity,
      required int id,
      required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required Uint8List imageFileData}) {
    return _RemoveElement(
      elementEntity: elementEntity,
      id: id,
      currentPatternEntityList: currentPatternEntityList,
      currentElementEntityList: currentElementEntityList,
      imageFileData: imageFileData,
    );
  }

  _ChangeToPatternView changeToPatternView(
      {required Uint8List imageFileData,
      required List<ElementEntity> elementEntityList,
      required List<PatternEntity> patternEntityList,
      required int id}) {
    return _ChangeToPatternView(
      imageFileData: imageFileData,
      elementEntityList: elementEntityList,
      patternEntityList: patternEntityList,
      id: id,
    );
  }

  _ChangeToElementView changeToElementView(
      {required Uint8List imageFileData,
      required List<ElementEntity> elementEntityList,
      required List<PatternEntity> patternEntityList,
      required int id}) {
    return _ChangeToElementView(
      imageFileData: imageFileData,
      elementEntityList: elementEntityList,
      patternEntityList: patternEntityList,
      id: id,
    );
  }

  _AddExistingDataToBloc addExistingDataToBloc(
      {required AssetEntity assetEntity}) {
    return _AddExistingDataToBloc(
      assetEntity: assetEntity,
    );
  }

  _ResetBloc resetBloc() {
    return const _ResetBloc();
  }
}

/// @nodoc
const $PatternElementEvent = _$PatternElementEventTearOff();

/// @nodoc
mixin _$PatternElementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
  $Res call(
      {List<PatternEntity> currentPatternEntityList,
      List<ElementEntity> currentElementEntityList,
      PatternEntity patternEntity,
      Uint8List imageFileData,
      int id});

  $PatternEntityCopyWith<$Res> get patternEntity;
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
    Object? currentPatternEntityList = freezed,
    Object? currentElementEntityList = freezed,
    Object? patternEntity = freezed,
    Object? imageFileData = freezed,
    Object? id = freezed,
  }) {
    return _then(_AddPattern(
      currentPatternEntityList: currentPatternEntityList == freezed
          ? _value.currentPatternEntityList
          : currentPatternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      currentElementEntityList: currentElementEntityList == freezed
          ? _value.currentElementEntityList
          : currentElementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      patternEntity: patternEntity == freezed
          ? _value.patternEntity
          : patternEntity // ignore: cast_nullable_to_non_nullable
              as PatternEntity,
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PatternEntityCopyWith<$Res> get patternEntity {
    return $PatternEntityCopyWith<$Res>(_value.patternEntity, (value) {
      return _then(_value.copyWith(patternEntity: value));
    });
  }
}

/// @nodoc

class _$_AddPattern implements _AddPattern {
  const _$_AddPattern(
      {required this.currentPatternEntityList,
      required this.currentElementEntityList,
      required this.patternEntity,
      required this.imageFileData,
      required this.id});

  @override
  final List<PatternEntity> currentPatternEntityList;
  @override
  final List<ElementEntity> currentElementEntityList;
  @override
  final PatternEntity patternEntity;
  @override
  final Uint8List imageFileData;
  @override
  final int id;

  @override
  String toString() {
    return 'PatternElementEvent.addPattern(currentPatternEntityList: $currentPatternEntityList, currentElementEntityList: $currentElementEntityList, patternEntity: $patternEntity, imageFileData: $imageFileData, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPattern &&
            const DeepCollectionEquality().equals(
                other.currentPatternEntityList, currentPatternEntityList) &&
            const DeepCollectionEquality().equals(
                other.currentElementEntityList, currentElementEntityList) &&
            const DeepCollectionEquality()
                .equals(other.patternEntity, patternEntity) &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPatternEntityList),
      const DeepCollectionEquality().hash(currentElementEntityList),
      const DeepCollectionEquality().hash(patternEntity),
      const DeepCollectionEquality().hash(imageFileData),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$AddPatternCopyWith<_AddPattern> get copyWith =>
      __$AddPatternCopyWithImpl<_AddPattern>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return addPattern(currentPatternEntityList, currentElementEntityList,
        patternEntity, imageFileData, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return addPattern?.call(currentPatternEntityList, currentElementEntityList,
        patternEntity, imageFileData, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (addPattern != null) {
      return addPattern(currentPatternEntityList, currentElementEntityList,
          patternEntity, imageFileData, id);
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (addPattern != null) {
      return addPattern(this);
    }
    return orElse();
  }
}

abstract class _AddPattern implements PatternElementEvent {
  const factory _AddPattern(
      {required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required PatternEntity patternEntity,
      required Uint8List imageFileData,
      required int id}) = _$_AddPattern;

  List<PatternEntity> get currentPatternEntityList;
  List<ElementEntity> get currentElementEntityList;
  PatternEntity get patternEntity;
  Uint8List get imageFileData;
  int get id;
  @JsonKey(ignore: true)
  _$AddPatternCopyWith<_AddPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovePatterCopyWith<$Res> {
  factory _$RemovePatterCopyWith(
          _RemovePatter value, $Res Function(_RemovePatter) then) =
      __$RemovePatterCopyWithImpl<$Res>;
  $Res call(
      {List<PatternEntity> currentPatternEntityList,
      List<ElementEntity> currentElementEntityList,
      PatternEntity patternEntity,
      Uint8List imageFileData,
      int id});

  $PatternEntityCopyWith<$Res> get patternEntity;
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
    Object? currentPatternEntityList = freezed,
    Object? currentElementEntityList = freezed,
    Object? patternEntity = freezed,
    Object? imageFileData = freezed,
    Object? id = freezed,
  }) {
    return _then(_RemovePatter(
      currentPatternEntityList: currentPatternEntityList == freezed
          ? _value.currentPatternEntityList
          : currentPatternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      currentElementEntityList: currentElementEntityList == freezed
          ? _value.currentElementEntityList
          : currentElementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      patternEntity: patternEntity == freezed
          ? _value.patternEntity
          : patternEntity // ignore: cast_nullable_to_non_nullable
              as PatternEntity,
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PatternEntityCopyWith<$Res> get patternEntity {
    return $PatternEntityCopyWith<$Res>(_value.patternEntity, (value) {
      return _then(_value.copyWith(patternEntity: value));
    });
  }
}

/// @nodoc

class _$_RemovePatter implements _RemovePatter {
  const _$_RemovePatter(
      {required this.currentPatternEntityList,
      required this.currentElementEntityList,
      required this.patternEntity,
      required this.imageFileData,
      required this.id});

  @override
  final List<PatternEntity> currentPatternEntityList;
  @override
  final List<ElementEntity> currentElementEntityList;
  @override
  final PatternEntity patternEntity;
  @override
  final Uint8List imageFileData;
  @override
  final int id;

  @override
  String toString() {
    return 'PatternElementEvent.removePattern(currentPatternEntityList: $currentPatternEntityList, currentElementEntityList: $currentElementEntityList, patternEntity: $patternEntity, imageFileData: $imageFileData, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemovePatter &&
            const DeepCollectionEquality().equals(
                other.currentPatternEntityList, currentPatternEntityList) &&
            const DeepCollectionEquality().equals(
                other.currentElementEntityList, currentElementEntityList) &&
            const DeepCollectionEquality()
                .equals(other.patternEntity, patternEntity) &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPatternEntityList),
      const DeepCollectionEquality().hash(currentElementEntityList),
      const DeepCollectionEquality().hash(patternEntity),
      const DeepCollectionEquality().hash(imageFileData),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RemovePatterCopyWith<_RemovePatter> get copyWith =>
      __$RemovePatterCopyWithImpl<_RemovePatter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return removePattern(currentPatternEntityList, currentElementEntityList,
        patternEntity, imageFileData, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return removePattern?.call(currentPatternEntityList,
        currentElementEntityList, patternEntity, imageFileData, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (removePattern != null) {
      return removePattern(currentPatternEntityList, currentElementEntityList,
          patternEntity, imageFileData, id);
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (removePattern != null) {
      return removePattern(this);
    }
    return orElse();
  }
}

abstract class _RemovePatter implements PatternElementEvent {
  const factory _RemovePatter(
      {required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required PatternEntity patternEntity,
      required Uint8List imageFileData,
      required int id}) = _$_RemovePatter;

  List<PatternEntity> get currentPatternEntityList;
  List<ElementEntity> get currentElementEntityList;
  PatternEntity get patternEntity;
  Uint8List get imageFileData;
  int get id;
  @JsonKey(ignore: true)
  _$RemovePatterCopyWith<_RemovePatter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddElementCopyWith<$Res> {
  factory _$AddElementCopyWith(
          _AddElement value, $Res Function(_AddElement) then) =
      __$AddElementCopyWithImpl<$Res>;
  $Res call(
      {int id,
      ElementEntity elementEntity,
      List<PatternEntity> currentPatternEntityList,
      List<ElementEntity> currentElementEntityList,
      Uint8List imageFileData});

  $ElementEntityCopyWith<$Res> get elementEntity;
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
    Object? id = freezed,
    Object? elementEntity = freezed,
    Object? currentPatternEntityList = freezed,
    Object? currentElementEntityList = freezed,
    Object? imageFileData = freezed,
  }) {
    return _then(_AddElement(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      elementEntity: elementEntity == freezed
          ? _value.elementEntity
          : elementEntity // ignore: cast_nullable_to_non_nullable
              as ElementEntity,
      currentPatternEntityList: currentPatternEntityList == freezed
          ? _value.currentPatternEntityList
          : currentPatternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      currentElementEntityList: currentElementEntityList == freezed
          ? _value.currentElementEntityList
          : currentElementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  @override
  $ElementEntityCopyWith<$Res> get elementEntity {
    return $ElementEntityCopyWith<$Res>(_value.elementEntity, (value) {
      return _then(_value.copyWith(elementEntity: value));
    });
  }
}

/// @nodoc

class _$_AddElement implements _AddElement {
  const _$_AddElement(
      {required this.id,
      required this.elementEntity,
      required this.currentPatternEntityList,
      required this.currentElementEntityList,
      required this.imageFileData});

  @override
  final int id;
  @override
  final ElementEntity elementEntity;
  @override
  final List<PatternEntity> currentPatternEntityList;
  @override
  final List<ElementEntity> currentElementEntityList;
  @override
  final Uint8List imageFileData;

  @override
  String toString() {
    return 'PatternElementEvent.addElement(id: $id, elementEntity: $elementEntity, currentPatternEntityList: $currentPatternEntityList, currentElementEntityList: $currentElementEntityList, imageFileData: $imageFileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddElement &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.elementEntity, elementEntity) &&
            const DeepCollectionEquality().equals(
                other.currentPatternEntityList, currentPatternEntityList) &&
            const DeepCollectionEquality().equals(
                other.currentElementEntityList, currentElementEntityList) &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(elementEntity),
      const DeepCollectionEquality().hash(currentPatternEntityList),
      const DeepCollectionEquality().hash(currentElementEntityList),
      const DeepCollectionEquality().hash(imageFileData));

  @JsonKey(ignore: true)
  @override
  _$AddElementCopyWith<_AddElement> get copyWith =>
      __$AddElementCopyWithImpl<_AddElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return addElement(id, elementEntity, currentPatternEntityList,
        currentElementEntityList, imageFileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return addElement?.call(id, elementEntity, currentPatternEntityList,
        currentElementEntityList, imageFileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (addElement != null) {
      return addElement(id, elementEntity, currentPatternEntityList,
          currentElementEntityList, imageFileData);
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (addElement != null) {
      return addElement(this);
    }
    return orElse();
  }
}

abstract class _AddElement implements PatternElementEvent {
  const factory _AddElement(
      {required int id,
      required ElementEntity elementEntity,
      required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required Uint8List imageFileData}) = _$_AddElement;

  int get id;
  ElementEntity get elementEntity;
  List<PatternEntity> get currentPatternEntityList;
  List<ElementEntity> get currentElementEntityList;
  Uint8List get imageFileData;
  @JsonKey(ignore: true)
  _$AddElementCopyWith<_AddElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveElementCopyWith<$Res> {
  factory _$RemoveElementCopyWith(
          _RemoveElement value, $Res Function(_RemoveElement) then) =
      __$RemoveElementCopyWithImpl<$Res>;
  $Res call(
      {ElementEntity elementEntity,
      int id,
      List<PatternEntity> currentPatternEntityList,
      List<ElementEntity> currentElementEntityList,
      Uint8List imageFileData});

  $ElementEntityCopyWith<$Res> get elementEntity;
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
    Object? elementEntity = freezed,
    Object? id = freezed,
    Object? currentPatternEntityList = freezed,
    Object? currentElementEntityList = freezed,
    Object? imageFileData = freezed,
  }) {
    return _then(_RemoveElement(
      elementEntity: elementEntity == freezed
          ? _value.elementEntity
          : elementEntity // ignore: cast_nullable_to_non_nullable
              as ElementEntity,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      currentPatternEntityList: currentPatternEntityList == freezed
          ? _value.currentPatternEntityList
          : currentPatternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      currentElementEntityList: currentElementEntityList == freezed
          ? _value.currentElementEntityList
          : currentElementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  @override
  $ElementEntityCopyWith<$Res> get elementEntity {
    return $ElementEntityCopyWith<$Res>(_value.elementEntity, (value) {
      return _then(_value.copyWith(elementEntity: value));
    });
  }
}

/// @nodoc

class _$_RemoveElement implements _RemoveElement {
  const _$_RemoveElement(
      {required this.elementEntity,
      required this.id,
      required this.currentPatternEntityList,
      required this.currentElementEntityList,
      required this.imageFileData});

  @override
  final ElementEntity elementEntity;
  @override
  final int id;
  @override
  final List<PatternEntity> currentPatternEntityList;
  @override
  final List<ElementEntity> currentElementEntityList;
  @override
  final Uint8List imageFileData;

  @override
  String toString() {
    return 'PatternElementEvent.removeElement(elementEntity: $elementEntity, id: $id, currentPatternEntityList: $currentPatternEntityList, currentElementEntityList: $currentElementEntityList, imageFileData: $imageFileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveElement &&
            const DeepCollectionEquality()
                .equals(other.elementEntity, elementEntity) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(
                other.currentPatternEntityList, currentPatternEntityList) &&
            const DeepCollectionEquality().equals(
                other.currentElementEntityList, currentElementEntityList) &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(elementEntity),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currentPatternEntityList),
      const DeepCollectionEquality().hash(currentElementEntityList),
      const DeepCollectionEquality().hash(imageFileData));

  @JsonKey(ignore: true)
  @override
  _$RemoveElementCopyWith<_RemoveElement> get copyWith =>
      __$RemoveElementCopyWithImpl<_RemoveElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return removeElement(elementEntity, id, currentPatternEntityList,
        currentElementEntityList, imageFileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return removeElement?.call(elementEntity, id, currentPatternEntityList,
        currentElementEntityList, imageFileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (removeElement != null) {
      return removeElement(elementEntity, id, currentPatternEntityList,
          currentElementEntityList, imageFileData);
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (removeElement != null) {
      return removeElement(this);
    }
    return orElse();
  }
}

abstract class _RemoveElement implements PatternElementEvent {
  const factory _RemoveElement(
      {required ElementEntity elementEntity,
      required int id,
      required List<PatternEntity> currentPatternEntityList,
      required List<ElementEntity> currentElementEntityList,
      required Uint8List imageFileData}) = _$_RemoveElement;

  ElementEntity get elementEntity;
  int get id;
  List<PatternEntity> get currentPatternEntityList;
  List<ElementEntity> get currentElementEntityList;
  Uint8List get imageFileData;
  @JsonKey(ignore: true)
  _$RemoveElementCopyWith<_RemoveElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeToPatternViewCopyWith<$Res> {
  factory _$ChangeToPatternViewCopyWith(_ChangeToPatternView value,
          $Res Function(_ChangeToPatternView) then) =
      __$ChangeToPatternViewCopyWithImpl<$Res>;
  $Res call(
      {Uint8List imageFileData,
      List<ElementEntity> elementEntityList,
      List<PatternEntity> patternEntityList,
      int id});
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
    Object? imageFileData = freezed,
    Object? elementEntityList = freezed,
    Object? patternEntityList = freezed,
    Object? id = freezed,
  }) {
    return _then(_ChangeToPatternView(
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      elementEntityList: elementEntityList == freezed
          ? _value.elementEntityList
          : elementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      patternEntityList: patternEntityList == freezed
          ? _value.patternEntityList
          : patternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeToPatternView implements _ChangeToPatternView {
  const _$_ChangeToPatternView(
      {required this.imageFileData,
      required this.elementEntityList,
      required this.patternEntityList,
      required this.id});

  @override
  final Uint8List imageFileData;
  @override
  final List<ElementEntity> elementEntityList;
  @override
  final List<PatternEntity> patternEntityList;
  @override
  final int id;

  @override
  String toString() {
    return 'PatternElementEvent.changeToPatternView(imageFileData: $imageFileData, elementEntityList: $elementEntityList, patternEntityList: $patternEntityList, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeToPatternView &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData) &&
            const DeepCollectionEquality()
                .equals(other.elementEntityList, elementEntityList) &&
            const DeepCollectionEquality()
                .equals(other.patternEntityList, patternEntityList) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageFileData),
      const DeepCollectionEquality().hash(elementEntityList),
      const DeepCollectionEquality().hash(patternEntityList),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ChangeToPatternViewCopyWith<_ChangeToPatternView> get copyWith =>
      __$ChangeToPatternViewCopyWithImpl<_ChangeToPatternView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return changeToPatternView(
        imageFileData, elementEntityList, patternEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return changeToPatternView?.call(
        imageFileData, elementEntityList, patternEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (changeToPatternView != null) {
      return changeToPatternView(
          imageFileData, elementEntityList, patternEntityList, id);
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (changeToPatternView != null) {
      return changeToPatternView(this);
    }
    return orElse();
  }
}

abstract class _ChangeToPatternView implements PatternElementEvent {
  const factory _ChangeToPatternView(
      {required Uint8List imageFileData,
      required List<ElementEntity> elementEntityList,
      required List<PatternEntity> patternEntityList,
      required int id}) = _$_ChangeToPatternView;

  Uint8List get imageFileData;
  List<ElementEntity> get elementEntityList;
  List<PatternEntity> get patternEntityList;
  int get id;
  @JsonKey(ignore: true)
  _$ChangeToPatternViewCopyWith<_ChangeToPatternView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeToElementViewCopyWith<$Res> {
  factory _$ChangeToElementViewCopyWith(_ChangeToElementView value,
          $Res Function(_ChangeToElementView) then) =
      __$ChangeToElementViewCopyWithImpl<$Res>;
  $Res call(
      {Uint8List imageFileData,
      List<ElementEntity> elementEntityList,
      List<PatternEntity> patternEntityList,
      int id});
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
    Object? imageFileData = freezed,
    Object? elementEntityList = freezed,
    Object? patternEntityList = freezed,
    Object? id = freezed,
  }) {
    return _then(_ChangeToElementView(
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      elementEntityList: elementEntityList == freezed
          ? _value.elementEntityList
          : elementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      patternEntityList: patternEntityList == freezed
          ? _value.patternEntityList
          : patternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeToElementView implements _ChangeToElementView {
  const _$_ChangeToElementView(
      {required this.imageFileData,
      required this.elementEntityList,
      required this.patternEntityList,
      required this.id});

  @override
  final Uint8List imageFileData;
  @override
  final List<ElementEntity> elementEntityList;
  @override
  final List<PatternEntity> patternEntityList;
  @override
  final int id;

  @override
  String toString() {
    return 'PatternElementEvent.changeToElementView(imageFileData: $imageFileData, elementEntityList: $elementEntityList, patternEntityList: $patternEntityList, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeToElementView &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData) &&
            const DeepCollectionEquality()
                .equals(other.elementEntityList, elementEntityList) &&
            const DeepCollectionEquality()
                .equals(other.patternEntityList, patternEntityList) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageFileData),
      const DeepCollectionEquality().hash(elementEntityList),
      const DeepCollectionEquality().hash(patternEntityList),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ChangeToElementViewCopyWith<_ChangeToElementView> get copyWith =>
      __$ChangeToElementViewCopyWithImpl<_ChangeToElementView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return changeToElementView(
        imageFileData, elementEntityList, patternEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return changeToElementView?.call(
        imageFileData, elementEntityList, patternEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (changeToElementView != null) {
      return changeToElementView(
          imageFileData, elementEntityList, patternEntityList, id);
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (changeToElementView != null) {
      return changeToElementView(this);
    }
    return orElse();
  }
}

abstract class _ChangeToElementView implements PatternElementEvent {
  const factory _ChangeToElementView(
      {required Uint8List imageFileData,
      required List<ElementEntity> elementEntityList,
      required List<PatternEntity> patternEntityList,
      required int id}) = _$_ChangeToElementView;

  Uint8List get imageFileData;
  List<ElementEntity> get elementEntityList;
  List<PatternEntity> get patternEntityList;
  int get id;
  @JsonKey(ignore: true)
  _$ChangeToElementViewCopyWith<_ChangeToElementView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddExistingDataToBlocCopyWith<$Res> {
  factory _$AddExistingDataToBlocCopyWith(_AddExistingDataToBloc value,
          $Res Function(_AddExistingDataToBloc) then) =
      __$AddExistingDataToBlocCopyWithImpl<$Res>;
  $Res call({AssetEntity assetEntity});

  $AssetEntityCopyWith<$Res> get assetEntity;
}

/// @nodoc
class __$AddExistingDataToBlocCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$AddExistingDataToBlocCopyWith<$Res> {
  __$AddExistingDataToBlocCopyWithImpl(_AddExistingDataToBloc _value,
      $Res Function(_AddExistingDataToBloc) _then)
      : super(_value, (v) => _then(v as _AddExistingDataToBloc));

  @override
  _AddExistingDataToBloc get _value => super._value as _AddExistingDataToBloc;

  @override
  $Res call({
    Object? assetEntity = freezed,
  }) {
    return _then(_AddExistingDataToBloc(
      assetEntity: assetEntity == freezed
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
    ));
  }

  @override
  $AssetEntityCopyWith<$Res> get assetEntity {
    return $AssetEntityCopyWith<$Res>(_value.assetEntity, (value) {
      return _then(_value.copyWith(assetEntity: value));
    });
  }
}

/// @nodoc

class _$_AddExistingDataToBloc implements _AddExistingDataToBloc {
  const _$_AddExistingDataToBloc({required this.assetEntity});

  @override
  final AssetEntity assetEntity;

  @override
  String toString() {
    return 'PatternElementEvent.addExistingDataToBloc(assetEntity: $assetEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddExistingDataToBloc &&
            const DeepCollectionEquality()
                .equals(other.assetEntity, assetEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(assetEntity));

  @JsonKey(ignore: true)
  @override
  _$AddExistingDataToBlocCopyWith<_AddExistingDataToBloc> get copyWith =>
      __$AddExistingDataToBlocCopyWithImpl<_AddExistingDataToBloc>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return addExistingDataToBloc(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return addExistingDataToBloc?.call(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (addExistingDataToBloc != null) {
      return addExistingDataToBloc(assetEntity);
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
  }) {
    return addExistingDataToBloc(this);
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
  }) {
    return addExistingDataToBloc?.call(this);
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (addExistingDataToBloc != null) {
      return addExistingDataToBloc(this);
    }
    return orElse();
  }
}

abstract class _AddExistingDataToBloc implements PatternElementEvent {
  const factory _AddExistingDataToBloc({required AssetEntity assetEntity}) =
      _$_AddExistingDataToBloc;

  AssetEntity get assetEntity;
  @JsonKey(ignore: true)
  _$AddExistingDataToBlocCopyWith<_AddExistingDataToBloc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetBlocCopyWith<$Res> {
  factory _$ResetBlocCopyWith(
          _ResetBloc value, $Res Function(_ResetBloc) then) =
      __$ResetBlocCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetBlocCopyWithImpl<$Res>
    extends _$PatternElementEventCopyWithImpl<$Res>
    implements _$ResetBlocCopyWith<$Res> {
  __$ResetBlocCopyWithImpl(_ResetBloc _value, $Res Function(_ResetBloc) _then)
      : super(_value, (v) => _then(v as _ResetBloc));

  @override
  _ResetBloc get _value => super._value as _ResetBloc;
}

/// @nodoc

class _$_ResetBloc implements _ResetBloc {
  const _$_ResetBloc();

  @override
  String toString() {
    return 'PatternElementEvent.resetBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        addPattern,
    required TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)
        removePattern,
    required TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        addElement,
    required TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)
        removeElement,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToPatternView,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        changeToElementView,
    required TResult Function(AssetEntity assetEntity) addExistingDataToBloc,
    required TResult Function() resetBloc,
  }) {
    return resetBloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
  }) {
    return resetBloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        addPattern,
    TResult Function(
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            PatternEntity patternEntity,
            Uint8List imageFileData,
            int id)?
        removePattern,
    TResult Function(
            int id,
            ElementEntity elementEntity,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        addElement,
    TResult Function(
            ElementEntity elementEntity,
            int id,
            List<PatternEntity> currentPatternEntityList,
            List<ElementEntity> currentElementEntityList,
            Uint8List imageFileData)?
        removeElement,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToPatternView,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        changeToElementView,
    TResult Function(AssetEntity assetEntity)? addExistingDataToBloc,
    TResult Function()? resetBloc,
    required TResult orElse(),
  }) {
    if (resetBloc != null) {
      return resetBloc();
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
    required TResult Function(_AddExistingDataToBloc value)
        addExistingDataToBloc,
    required TResult Function(_ResetBloc value) resetBloc,
  }) {
    return resetBloc(this);
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
  }) {
    return resetBloc?.call(this);
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
    TResult Function(_AddExistingDataToBloc value)? addExistingDataToBloc,
    TResult Function(_ResetBloc value)? resetBloc,
    required TResult orElse(),
  }) {
    if (resetBloc != null) {
      return resetBloc(this);
    }
    return orElse();
  }
}

abstract class _ResetBloc implements PatternElementEvent {
  const factory _ResetBloc() = _$_ResetBloc;
}

/// @nodoc
class _$PatternElementStateTearOff {
  const _$PatternElementStateTearOff();

  _PatternView pattern(
      {required Uint8List imageFileData,
      required List<PatternEntity> patternEntityList,
      required List<ElementEntity> elementEntityList,
      required int id}) {
    return _PatternView(
      imageFileData: imageFileData,
      patternEntityList: patternEntityList,
      elementEntityList: elementEntityList,
      id: id,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _ElementView element(
      {required Uint8List imageFileData,
      required List<ElementEntity> elementEntityList,
      required List<PatternEntity> patternEntityList,
      required int id}) {
    return _ElementView(
      imageFileData: imageFileData,
      elementEntityList: elementEntityList,
      patternEntityList: patternEntityList,
      id: id,
    );
  }
}

/// @nodoc
const $PatternElementState = _$PatternElementStateTearOff();

/// @nodoc
mixin _$PatternElementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)
        pattern,
    required TResult Function() loading,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ElementView value) element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
    TResult Function(_ElementView value)? element,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
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
  $Res call(
      {Uint8List imageFileData,
      List<PatternEntity> patternEntityList,
      List<ElementEntity> elementEntityList,
      int id});
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
    Object? imageFileData = freezed,
    Object? patternEntityList = freezed,
    Object? elementEntityList = freezed,
    Object? id = freezed,
  }) {
    return _then(_PatternView(
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      patternEntityList: patternEntityList == freezed
          ? _value.patternEntityList
          : patternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      elementEntityList: elementEntityList == freezed
          ? _value.elementEntityList
          : elementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PatternView implements _PatternView {
  const _$_PatternView(
      {required this.imageFileData,
      required this.patternEntityList,
      required this.elementEntityList,
      required this.id});

  @override
  final Uint8List imageFileData;
  @override
  final List<PatternEntity> patternEntityList;
  @override
  final List<ElementEntity> elementEntityList;
  @override
  final int id;

  @override
  String toString() {
    return 'PatternElementState.pattern(imageFileData: $imageFileData, patternEntityList: $patternEntityList, elementEntityList: $elementEntityList, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatternView &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData) &&
            const DeepCollectionEquality()
                .equals(other.patternEntityList, patternEntityList) &&
            const DeepCollectionEquality()
                .equals(other.elementEntityList, elementEntityList) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageFileData),
      const DeepCollectionEquality().hash(patternEntityList),
      const DeepCollectionEquality().hash(elementEntityList),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$PatternViewCopyWith<_PatternView> get copyWith =>
      __$PatternViewCopyWithImpl<_PatternView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)
        pattern,
    required TResult Function() loading,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        element,
  }) {
    return pattern(imageFileData, patternEntityList, elementEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
  }) {
    return pattern?.call(
        imageFileData, patternEntityList, elementEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
    required TResult orElse(),
  }) {
    if (pattern != null) {
      return pattern(imageFileData, patternEntityList, elementEntityList, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ElementView value) element,
  }) {
    return pattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
    TResult Function(_ElementView value)? element,
  }) {
    return pattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
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
  const factory _PatternView(
      {required Uint8List imageFileData,
      required List<PatternEntity> patternEntityList,
      required List<ElementEntity> elementEntityList,
      required int id}) = _$_PatternView;

  Uint8List get imageFileData;
  List<PatternEntity> get patternEntityList;
  List<ElementEntity> get elementEntityList;
  int get id;
  @JsonKey(ignore: true)
  _$PatternViewCopyWith<_PatternView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$PatternElementStateCopyWithImpl<$Res>
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
    return 'PatternElementState.loading()';
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
    required TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)
        pattern,
    required TResult Function() loading,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        element,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
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
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ElementView value) element,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
    TResult Function(_ElementView value)? element,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
    TResult Function(_ElementView value)? element,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PatternElementState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ElementViewCopyWith<$Res> {
  factory _$ElementViewCopyWith(
          _ElementView value, $Res Function(_ElementView) then) =
      __$ElementViewCopyWithImpl<$Res>;
  $Res call(
      {Uint8List imageFileData,
      List<ElementEntity> elementEntityList,
      List<PatternEntity> patternEntityList,
      int id});
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
    Object? imageFileData = freezed,
    Object? elementEntityList = freezed,
    Object? patternEntityList = freezed,
    Object? id = freezed,
  }) {
    return _then(_ElementView(
      imageFileData: imageFileData == freezed
          ? _value.imageFileData
          : imageFileData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      elementEntityList: elementEntityList == freezed
          ? _value.elementEntityList
          : elementEntityList // ignore: cast_nullable_to_non_nullable
              as List<ElementEntity>,
      patternEntityList: patternEntityList == freezed
          ? _value.patternEntityList
          : patternEntityList // ignore: cast_nullable_to_non_nullable
              as List<PatternEntity>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ElementView implements _ElementView {
  const _$_ElementView(
      {required this.imageFileData,
      required this.elementEntityList,
      required this.patternEntityList,
      required this.id});

  @override
  final Uint8List imageFileData;
  @override
  final List<ElementEntity> elementEntityList;
  @override
  final List<PatternEntity> patternEntityList;
  @override
  final int id;

  @override
  String toString() {
    return 'PatternElementState.element(imageFileData: $imageFileData, elementEntityList: $elementEntityList, patternEntityList: $patternEntityList, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ElementView &&
            const DeepCollectionEquality()
                .equals(other.imageFileData, imageFileData) &&
            const DeepCollectionEquality()
                .equals(other.elementEntityList, elementEntityList) &&
            const DeepCollectionEquality()
                .equals(other.patternEntityList, patternEntityList) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageFileData),
      const DeepCollectionEquality().hash(elementEntityList),
      const DeepCollectionEquality().hash(patternEntityList),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ElementViewCopyWith<_ElementView> get copyWith =>
      __$ElementViewCopyWithImpl<_ElementView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)
        pattern,
    required TResult Function() loading,
    required TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)
        element,
  }) {
    return element(imageFileData, elementEntityList, patternEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
  }) {
    return element?.call(
        imageFileData, elementEntityList, patternEntityList, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List imageFileData,
            List<PatternEntity> patternEntityList,
            List<ElementEntity> elementEntityList,
            int id)?
        pattern,
    TResult Function()? loading,
    TResult Function(
            Uint8List imageFileData,
            List<ElementEntity> elementEntityList,
            List<PatternEntity> patternEntityList,
            int id)?
        element,
    required TResult orElse(),
  }) {
    if (element != null) {
      return element(imageFileData, elementEntityList, patternEntityList, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatternView value) pattern,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ElementView value) element,
  }) {
    return element(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
    TResult Function(_ElementView value)? element,
  }) {
    return element?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatternView value)? pattern,
    TResult Function(_Loading value)? loading,
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
  const factory _ElementView(
      {required Uint8List imageFileData,
      required List<ElementEntity> elementEntityList,
      required List<PatternEntity> patternEntityList,
      required int id}) = _$_ElementView;

  Uint8List get imageFileData;
  List<ElementEntity> get elementEntityList;
  List<PatternEntity> get patternEntityList;
  int get id;
  @JsonKey(ignore: true)
  _$ElementViewCopyWith<_ElementView> get copyWith =>
      throw _privateConstructorUsedError;
}
