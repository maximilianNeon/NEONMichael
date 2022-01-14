import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_entity.freezed.dart';
part 'project_entity.g.dart';

@injectable
@freezed
class ProjectEntity with _$ProjectEntity{

  factory ProjectEntity ({required String title,
  required String projectType,
  required String description,
  required List<AssetEntity> assets,
  required int id,}) = _ProjectEntity;
  
  factory ProjectEntity.fromJson(Map<String, dynamic> json) => _$ProjectEntityFromJson(json);
 
}

