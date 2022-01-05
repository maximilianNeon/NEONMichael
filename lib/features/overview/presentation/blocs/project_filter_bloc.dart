import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';

part 'project_filter_event.dart';
part 'project_filter_state.dart';
part 'project_filter_bloc.freezed.dart';

class ProjectFilterBloc extends Bloc<ProjectFilterEvent, ProjectFilterState> {
  ProjectFilterBloc() : super(_Initial()) {
    on<_SetProjectFilterEvent>((event, emit) {
      emit(_FilteredByProject(projectEntityList: event.projectEntityList));
    });
  }
}
