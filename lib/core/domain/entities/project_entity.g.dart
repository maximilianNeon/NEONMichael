// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectEntity _$$_ProjectEntityFromJson(Map<String, dynamic> json) =>
    _$_ProjectEntity(
      title: json['title'] as String,
      projectType: $enumDecode(_$ProjectTypeEnumMap, json['projectType']),
      description: json['description'] as String,
      assets: (json['assets'] as List<dynamic>)
          .map((e) => AssetEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      projectId: json['projectId'] as int,
      imageReferenceId: json['imageReferenceId'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_ProjectEntityToJson(_$_ProjectEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'projectType': _$ProjectTypeEnumMap[instance.projectType],
      'description': instance.description,
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'projectId': instance.projectId,
      'imageReferenceId': instance.imageReferenceId,
      'imageUrl': instance.imageUrl,
    };

const _$ProjectTypeEnumMap = {
  ProjectType.App: 'App',
  ProjectType.WebDesktop: 'WebDesktop',
  ProjectType.WebMobile: 'WebMobile',
};
