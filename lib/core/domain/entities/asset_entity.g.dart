// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssetEntity _$$_AssetEntityFromJson(Map<String, dynamic> json) =>
    _$_AssetEntity(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      id: json['id'] as int,
      patterns: (json['patterns'] as List<dynamic>)
          .map((e) => PatternEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      elements: (json['elements'] as List<dynamic>)
          .map((e) => ElementEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AssetEntityToJson(_$_AssetEntity instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'id': instance.id,
      'patterns': instance.patterns.map((e) => e.toJson()).toList(),
      'elements': instance.elements.map((e) => e.toJson()).toList(),
    };
