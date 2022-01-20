import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/repository/loca_data_source.dart';
import 'package:neon_web/core/domain/repository/remote_data_source.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import '../../domain/entities/project_entity.dart';

@injectable
class SaveProjectImagesToDevice extends UseCaseInternal<
    Future<Either<Failure, Success>>, SaveProjectImagesToDeviceParams> {
  RemoteDataSourceRepository remoteDataSourceRepository;
  LocalDataSourceRepository localDataSourceRepository;

  SaveProjectImagesToDevice(
      {required this.remoteDataSourceRepository,
      required this.localDataSourceRepository});

  @override
  Future<Either<Failure, Success>> call(
      {required SaveProjectImagesToDeviceParams params}) async {
   
    try {
      final remoteResult = await remoteDataSourceRepository
          .downloadAssetImageData(projectEntity: params.projectentity);

      await remoteResult.fold(
          (l) => Left(FunctionFailure()),
          (r) async =>
              await localDataSourceRepository.saveProjectImagesToDevice(
                  assetEntityList: params.projectentity.assets,
                  assetImageCache: r));

      return Right(FunctionSuccess());
    } catch (error) {
      return Left(UseCaseFailure());
    }
  }
}

class SaveProjectImagesToDeviceParams extends Equatable {
  final ProjectEntity projectentity;

  SaveProjectImagesToDeviceParams({required this.projectentity});

  @override
  List<Object?> get props => [projectentity];
}
