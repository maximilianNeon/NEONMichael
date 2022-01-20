

import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';

abstract class LocalDataSourceRepository {
  
  Future<Either<Failure,Success>> saveProjectImagesToDevice({required List<AssetEntity> assetEntityList, required Map<int, Uint8List> assetImageCache});

}