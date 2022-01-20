import 'package:dartz/dartz.dart';
import 'package:file_saver/file_saver.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/data/data_sources/local_dataSource.dart';
import 'dart:typed_data';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/repository/loca_data_source.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:neon_web/core/error/failure.dart';


@Injectable(as: LocalDataSourceRepository)
class LocalDataSourceImplementation extends LocalDataSourceRepository {
  LocalDataSourceImpl localDataSourceImpl;

  LocalDataSourceImplementation(this.localDataSourceImpl);

  @override
  Future<Either<Failure, Success>> saveProjectImagesToDevice(
      {required List<AssetEntity> assetEntityList,
      required Map<int, Uint8List> assetImageCache}) async {
    try {
      await Future.forEach<AssetEntity>(assetEntityList, (asset) async {
        
        final String result = asset.patterns.map((e) => e.item.toString().split(".").last).toList().join("_");

        await localDataSourceImpl.saveSingleProjectImageFilesToLocalDevice(
            imageName: result,
            mimeType: MimeType.JPEG,
            imageData: assetImageCache[asset.id] ?? Uint8List(0));
      });

      return Right(FunctionSuccess());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }
}
