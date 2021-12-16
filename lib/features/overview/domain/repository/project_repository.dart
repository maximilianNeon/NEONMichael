
import 'package:dartz/dartz.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';


abstract class ProjectRepository {
 
 Future<Either<Failure,List<ProjectEntity>>> loadProjectData();

}