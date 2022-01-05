import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/util/enums.dart';

class ProjectEntity {
  final String title;
  final ProjectType projectType;
  final String description;
  final List<AssetEntity> assets;
  final Icon icon;

  ProjectEntity(
      {required this.title,
      required this.assets,
      required this.description,
      required this.projectType,
      required this.icon});
}
