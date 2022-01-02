import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';

class FilterDataByType extends UseCaseInternal<List<ProjectEntity>, Params> {
  @override
  // ignore: avoid_types_as_parameter_names
  List<ProjectEntity> call({required Params params}) {
    return params.projectEntityList
        .where((project) =>
            project.projectType.toString().contains(params.typeFilter))
        .toList();
  }
}

class Params extends Equatable {
  final List<ProjectEntity> projectEntityList;
  final String typeFilter;

  Params({required this.typeFilter, required this.projectEntityList});

  @override
  // TODO: implement props
  List<Object?> get props => [typeFilter, projectEntityList];
}
