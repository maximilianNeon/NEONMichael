import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../entities/project_entity.dart';

part 'data_container.freezed.dart';

@injectable
@freezed
class DataContainer with _$DataContainer {
  factory DataContainer(
      {required List<ProjectEntity> projectEntityList,
      required Map<int, Uint8List> iconFileData,
      required Map<int, Uint8List> assetFileData}) = _DataContainer;
}
