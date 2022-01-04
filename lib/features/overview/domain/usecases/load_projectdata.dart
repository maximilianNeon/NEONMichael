import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';
import 'package:neon_web/features/overview/domain/repository/project_repository.dart';

@lazySingleton
class LoadProjectData
    implements UseCaseExternal<List<ProjectEntity>, NoParams> {
  final ProjectRepository projectRepository;

  LoadProjectData({required this.projectRepository});

  @override
  // ignore: avoid_types_as_parameter_names
  Future<Either<Failure, List<ProjectEntity>>> call(NoParams) async {
    return await projectRepository.loadProjectData();
  }
}
