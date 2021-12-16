import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:neon_web/features/overview/domain/repository/project_repository.dart';

@lazySingleton
class LoadProjectData implements UseCase<Success, NoParams> {
  final ProjectRepository projectRepository;

  LoadProjectData({required this.projectRepository});

  @override
  Future<Either<Failure, Success>> call(NoParams) async {
    return await projectRepository.loadProjectData();
  }
}
