import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_by_projectname.dart';

part 'project_filter_event.dart';
part 'project_filter_state.dart';
part 'project_filter_bloc.freezed.dart';

@singleton
class ProjectFilterBloc extends Bloc<ProjectFilterEvent, ProjectFilterState> {
  FilterProjectByTitle filterProjectByTitle;

  ProjectFilterBloc({required this.filterProjectByTitle}) : super(_Initial()) {
    on<_SetProjectFilterEvent>((event, emit) {
      emit(
        _FilteredByProject(
          projectEntityList: filterProjectByTitle.call(
              params: ProjectFilterParams(
                  projectEntityList: event.projectEntityList,
                  projectTitleFilter: event.projectTitle)),
        ),
      );
    });
  }
}
