import 'package:neon_web/core/domain/entities/asset_entity.dart';

class ProjectEntity {
  final String title;
  final List<AssetEntity> assets;

  ProjectEntity({required this.title, required this.assets});
}
