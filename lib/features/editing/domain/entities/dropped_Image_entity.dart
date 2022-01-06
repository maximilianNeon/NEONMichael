import 'package:freezed_annotation/freezed_annotation.dart';


part 'dropped_Image_entity.freezed.dart';

@freezed
class DroppedImageEntity with _$DroppedImageEntity {
  factory DroppedImageEntity(
      {required String url,
      required String name,
      required String mime,
      required int bytes}) = _DroppedImageEntity;
}