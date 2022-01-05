import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';

@lazySingleton
class FilterDataByElement
    extends UseCaseInternal<List<ProjectEntity>, ProjectFilterParams> {
  @override
  List<ProjectEntity> call({required ProjectFilterParams params}) {
    return params.projectEntityList.where((project) {
      return project.title.contains(params.projectTitleFilter);
    }).toList();
  }
}

class ProjectFilterParams extends Equatable {
  final List<ProjectEntity> projectEntityList;
  final String projectTitleFilter;

  ProjectFilterParams(
      {required this.projectTitleFilter, required this.projectEntityList});

  @override
  List<Object?> get props => [projectTitleFilter, projectEntityList];
}
