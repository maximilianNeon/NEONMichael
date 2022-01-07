import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/enum/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_entity.freezed.dart';

@freezed
class ProjectEntity with _$ProjectEntity{

  factory ProjectEntity ({required String title,
  required ProjectType projectType,
  required String description,
  required List<AssetEntity> assets,
  required String imageUrl,}) = _ProjectEntity;
  
}
