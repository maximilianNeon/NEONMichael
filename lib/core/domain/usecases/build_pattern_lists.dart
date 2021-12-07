import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/enums.dart';

mixin BuildPatternLists {
  static final userCollection =
      UserCollection(userCollection: UserCollectionsPatterns.values.toList());
}
