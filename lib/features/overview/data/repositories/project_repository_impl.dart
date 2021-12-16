
import 'package:neon_web/core/success/success.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/features/overview/domain/repository/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository{

  @override
  Future<Either<Failure, Success>> loadProjectData() {
       
    // TODO: implement loadProjectData
    throw UnimplementedError();
  }

}