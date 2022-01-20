import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:file_saver/file_saver.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';

abstract class LocalDataSource {
  Future<Either<Failure, Success>> saveSingleProjectImageFilesToLocalDevice({
    required String imageName,
    required MimeType mimeType,
    required Uint8List imageData,
  });
}

@injectable
class LocalDataSourceImpl extends LocalDataSource {
  @override
  Future<Either<Failure, Success>> saveSingleProjectImageFilesToLocalDevice({
    required String imageName,
    required MimeType mimeType,
    required Uint8List imageData,
  }) async {
    try {
      await FileSaver.instance
          .saveFile(imageName, imageData, ".jpeg", mimeType: mimeType);

      return Right(FunctionSuccess());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }
}
