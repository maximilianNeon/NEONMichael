import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';

class AssetEntity {
  final String imageUrl;
  final String title;
  final int id;
  final List<PatternEntity> patterns;
  final List<ElementEntity> elements;

  AssetEntity({
    required this.imageUrl,
    required this.title,
    required this.id,
    required this.elements,
    required this.patterns,
  });
}
