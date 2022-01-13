import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';


part 'dropped_Image_entity.freezed.dart';

@freezed
class DroppedImageEntity with _$DroppedImageEntity {
  factory DroppedImageEntity(
      { required Uint8List fileData}) = _DroppedImageEntity;
}