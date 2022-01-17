// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectEntity _$$_ProjectEntityFromJson(Map<String, dynamic> json) =>
    _$_ProjectEntity(
      title: json['title'] as String,
      projectType: json['projectType'] as String,
      description: json['description'] as String,
      assets: (json['assets'] as List<dynamic>)
          .map((e) => AssetEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_ProjectEntityToJson(_$_ProjectEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'projectType': instance.projectType,
      'description': instance.description,
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'imageUrl': instance.imageUrl,
    };
