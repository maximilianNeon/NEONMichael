import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';

abstract class RemoteDataSource {
  Future<Either<Failure, DataContainer>> donwloadAllProjects();
  Future<Either<Failure, Success>> uploadSingleProject(
      {required DataContainer dataContainer});
}
