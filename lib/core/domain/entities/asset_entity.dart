import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';

part 'asset_entity.freezed.dart';
part 'asset_entity.g.dart';

@injectable
@freezed
class AssetEntity with _$AssetEntity {

 
  factory AssetEntity({
    required String imageUrl,
    required String title,
    required int id,
    required List<PatternEntity> patterns,
    required List<ElementEntity> elements,
  }) = _AssetEntity;

  factory AssetEntity.fromJson(Map<String, dynamic> json) =>
      _$AssetEntityFromJson(json);

 
}
