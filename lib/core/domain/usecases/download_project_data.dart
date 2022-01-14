import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
import 'package:neon_web/core/domain/repository/remote_data_source.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';


@injectable
class DownloadProjectData extends UseCaseInternal<Future, NoParams> {
  RemoteDataSource remoteDataSource;

  DownloadProjectData({required this.remoteDataSource});

  @override
  Future<Either<Failure, DataContainer>> call(
      {required NoParams params}) async {
    try {
      final result = await remoteDataSource.donwloadAllProjects();

      return result.fold((l) => Left(UseCaseFailure()), (r) => Right(r));
    } catch (error) {
      return Left(UseCaseFailure());
    }
  }
}
