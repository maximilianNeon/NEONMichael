import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/repository/remote_data_source.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';
import '../entities/project_entity.dart';


@injectable
class DownloadProjectData extends UseCaseInternal<Future, NoParams> {
  RemoteDataSourceRepository remoteDataSource;

  DownloadProjectData({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<ProjectEntity>>> call(
      {required NoParams params}) async {
    try {
      final result = await remoteDataSource.downloadAllProjects();

      return result.fold((l) => Left(UseCaseFailure()), (r) => Right(r));
    } catch (error) {
      return Left(UseCaseFailure());
    }
  }
}
