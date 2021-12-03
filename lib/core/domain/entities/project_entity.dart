import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';

class ProjectEntity {
  final String title;
  final String type;
  final String description;
  final List<AssetEntity> assets;
  final Icon icon;

  ProjectEntity(
      {required this.title,
      required this.assets,
      required this.description,
      required this.type,
      required this.icon});
}
