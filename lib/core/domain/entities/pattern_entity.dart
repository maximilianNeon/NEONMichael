import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/enum/enums.dart';


part 'pattern_entity.g.dart';
part 'pattern_entity.freezed.dart';

@freezed
@injectable
class PatternEntity with _$PatternEntity {
  factory PatternEntity({
    required Patterns item,
    required String header,
  }) = _PatternEntity;

  factory PatternEntity.fromJson(Map<String, dynamic> json) =>
      _$PatternEntityFromJson(json);
}