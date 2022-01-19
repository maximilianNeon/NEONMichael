// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _ProjectEntity.fromJson(json);
}

/// @nodoc
class _$ProjectEntityTearOff {
  const _$ProjectEntityTearOff();

  _ProjectEntity call(
      {required String title,
      required ProjectType projectType,
      required String description,
      required List<AssetEntity> assets,
      required int projectId,
      required int imageReferenceId,
      required String imageUrl}) {
    return _ProjectEntity(
      title: title,
      projectType: projectType,
      description: description,
      assets: assets,
      projectId: projectId,
      imageReferenceId: imageReferenceId,
      imageUrl: imageUrl,
    );
  }

  ProjectEntity fromJson(Map<String, Object?> json) {
    return ProjectEntity.fromJson(json);
  }
}

/// @nodoc
const $ProjectEntity = _$ProjectEntityTearOff();

/// @nodoc
mixin _$ProjectEntity {
  String get title => throw _privateConstructorUsedError;
  ProjectType get projectType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<AssetEntity> get assets => throw _privateConstructorUsedError;
  int get projectId => throw _privateConstructorUsedError;
  int get imageReferenceId => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res>;
  $Res call(
      {String title,
      ProjectType projectType,
      String description,
      List<AssetEntity> assets,
      int projectId,
      int imageReferenceId,
      String imageUrl});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  final ProjectEntity _value;
  // ignore: unused_field
  final $Res Function(ProjectEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? projectType = freezed,
    Object? description = freezed,
    Object? assets = freezed,
    Object? projectId = freezed,
    Object? imageReferenceId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      projectType: projectType == freezed
          ? _value.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as ProjectType,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      imageReferenceId: imageReferenceId == freezed
          ? _value.imageReferenceId
          : imageReferenceId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectEntityCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$ProjectEntityCopyWith(
          _ProjectEntity value, $Res Function(_ProjectEntity) then) =
      __$ProjectEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      ProjectType projectType,
      String description,
      List<AssetEntity> assets,
      int projectId,
      int imageReferenceId,
      String imageUrl});
}

/// @nodoc
class __$ProjectEntityCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res>
    implements _$ProjectEntityCopyWith<$Res> {
  __$ProjectEntityCopyWithImpl(
      _ProjectEntity _value, $Res Function(_ProjectEntity) _then)
      : super(_value, (v) => _then(v as _ProjectEntity));

  @override
  _ProjectEntity get _value => super._value as _ProjectEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? projectType = freezed,
    Object? description = freezed,
    Object? assets = freezed,
    Object? projectId = freezed,
    Object? imageReferenceId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_ProjectEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      projectType: projectType == freezed
          ? _value.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as ProjectType,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      imageReferenceId: imageReferenceId == freezed
          ? _value.imageReferenceId
          : imageReferenceId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectEntity implements _ProjectEntity {
  _$_ProjectEntity(
      {required this.title,
      required this.projectType,
      required this.description,
      required this.assets,
      required this.projectId,
      required this.imageReferenceId,
      required this.imageUrl});

  factory _$_ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectEntityFromJson(json);

  @override
  final String title;
  @override
  final ProjectType projectType;
  @override
  final String description;
  @override
  final List<AssetEntity> assets;
  @override
  final int projectId;
  @override
  final int imageReferenceId;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ProjectEntity(title: $title, projectType: $projectType, description: $description, assets: $assets, projectId: $projectId, imageReferenceId: $imageReferenceId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectEntity &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.projectType, projectType) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.assets, assets) &&
            const DeepCollectionEquality().equals(other.projectId, projectId) &&
            const DeepCollectionEquality()
                .equals(other.imageReferenceId, imageReferenceId) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(projectType),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(assets),
      const DeepCollectionEquality().hash(projectId),
      const DeepCollectionEquality().hash(imageReferenceId),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$ProjectEntityCopyWith<_ProjectEntity> get copyWith =>
      __$ProjectEntityCopyWithImpl<_ProjectEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectEntityToJson(this);
  }
}

abstract class _ProjectEntity implements ProjectEntity {
  factory _ProjectEntity(
      {required String title,
      required ProjectType projectType,
      required String description,
      required List<AssetEntity> assets,
      required int projectId,
      required int imageReferenceId,
      required String imageUrl}) = _$_ProjectEntity;

  factory _ProjectEntity.fromJson(Map<String, dynamic> json) =
      _$_ProjectEntity.fromJson;

  @override
  String get title;
  @override
  ProjectType get projectType;
  @override
  String get description;
  @override
  List<AssetEntity> get assets;
  @override
  int get projectId;
  @override
  int get imageReferenceId;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$ProjectEntityCopyWith<_ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
