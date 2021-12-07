import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/enums.dart';

mixin BuildPatternLists {
  final userCollection =
      UserCollection(userCollection: UserCollectionsPatterns.values.toList());

  final communication =
      Communication(communication: CommunicationPatterns.values.toList());

  final mis = Mis(mis: MisPatterns.values.toList());

  ///
}
