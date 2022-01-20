import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/data/data_sources/firebase_remote_datasource.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
import 'package:neon_web/core/domain/repository/remote_data_source.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import '../../domain/entities/project_entity.dart';

@Injectable(as: RemoteDataSourceRepository)
class RemoteDataSourceImpl extends RemoteDataSourceRepository {
  FireBaseRemoteDataSourceImpl fireBaseRemoteDataSource;

  RemoteDataSourceImpl({required this.fireBaseRemoteDataSource});

  @override
  Future<Either<Failure, List<ProjectEntity>>> downloadAllProjects() async {
    try {
      final result = await fireBaseRemoteDataSource.downloadAllProjects();

      return result.fold((l) => Left(FunctionFailure()), (r) => Right(r));
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, Success>> uploadSingleProject(
      {required DataContainer dataContainer}) async {
    try {
      final result = await fireBaseRemoteDataSource.uploadSingleProjectToDB(
          dataContainer: dataContainer);

      return result.fold(
          (l) => Left(FunctionFailure()), (r) => Right(FunctionSuccess()));
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, Map<int, Uint8List>>> downloadAssetImageData(
      {required ProjectEntity projectEntity}) async {
    try {
      final result = await fireBaseRemoteDataSource.downloadAssetImageData(
          projectEntity: projectEntity);

      return result.fold((l) => Left(FunctionFailure()), (r) => Right(r));
    } catch (error) {
      return Left(FunctionFailure());
    }
  }
}
