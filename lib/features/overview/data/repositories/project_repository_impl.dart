
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:neon_web/features/overview/domain/repository/project_repository.dart';

@LazySingleton(as: ProjectRepository)
class ProjectRepositoryImpl implements ProjectRepository{

  @override
  Future<Either<Failure, List<ProjectEntity>>> loadProjectData() {
       
    // TODO: implement loadProjectData
    throw UnimplementedError();
  }

}