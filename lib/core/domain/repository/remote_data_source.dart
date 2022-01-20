import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import '../entities/project_entity.dart';

abstract class RemoteDataSourceRepository {
  Future<Either<Failure, List<ProjectEntity>>> downloadAllProjects();
  Future<Either<Failure, Success>> uploadSingleProject(
      {required DataContainer dataContainer});
  
  Future<Either<Failure, Map<int,Uint8List>>> downloadAssetImageData({required ProjectEntity projectEntity});
}
