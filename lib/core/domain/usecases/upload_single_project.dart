import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
import 'package:neon_web/core/domain/repository/remote_data_source.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import '../../domain/entities/project_entity.dart';

@injectable
class UploadProjectData extends UseCaseInternal<Future, UploadParams> {
  RemoteDataSourceRepository remoteDataSourceRepository;

  UploadProjectData({required this.remoteDataSourceRepository});

  @override
  Future<Either<Failure, Success>> call({required UploadParams params}) async {
    try {
      final result = await remoteDataSourceRepository.uploadSingleProject(
          dataContainer: DataContainer(
              assetFileData: params.assetFileData,
              iconFileData: params.iconFileData,
              projectEntityList: [params.projectentity]));

      return result.fold(
          (l) => Left(UseCaseFailure()), (r) => Right(UseCaseSuccess()));
    } catch (error) {
      return Left(UseCaseFailure());
    }
  }
}

class UploadParams extends Equatable {
  final ProjectEntity projectentity;
  final Map<int, Uint8List> iconFileData;
  final Map<int, Uint8List> assetFileData;

  UploadParams(
      {required this.projectentity,
      required this.iconFileData,
      required this.assetFileData});

  @override
  List<Object?> get props => [projectentity, iconFileData, assetFileData];
}
