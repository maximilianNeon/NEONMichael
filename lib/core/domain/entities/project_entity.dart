import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neon_web/core/enum/enums.dart';

part 'project_entity.freezed.dart';
part 'project_entity.g.dart';

@injectable
@freezed
class ProjectEntity with _$ProjectEntity{

  factory ProjectEntity ({required String title,
  required ProjectType projectType,
  required String description,
  required List<AssetEntity> assets,
  required int projectId,
  required int imageReferenceId,
  required String imageUrl}) = _ProjectEntity;
  
  factory ProjectEntity.fromJson(Map<String, dynamic> json) => _$ProjectEntityFromJson(json);
 
}

