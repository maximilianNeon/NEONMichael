import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/util/enums.dart';
import '../../../../core/domain/entities/project_entity.dart';

part 'project_editing_event.dart';
part 'project_editing_state.dart';
part 'project_editing_bloc.freezed.dart';

@lazySingleton
class ProjectEditingBloc
    extends Bloc<ProjectEditingEvent, ProjectEditingState> {
  ProjectEntity projectEntity = ProjectEntity(
      assets: [],
      description: "",
      imageUrl: "",
      projectType: ProjectType.App,
      title: "");

  ProjectEditingBloc() : super(_Initial()) {
    on<_AddName>((event, emit) {
      
      projectEntity = projectEntity.copyWith(title: event.name);
      emit(_Editing(projectEntity: projectEntity));
    });

    on<_AddType>((event, emit) {
      //projectEntity = projectEntity.copyWith(type: event.type);
    });
    on<_AddDescription>((event, emit) {
      projectEntity = projectEntity.copyWith(description: event.description);
      emit(_Editing(projectEntity: projectEntity));
    });
  }
}
