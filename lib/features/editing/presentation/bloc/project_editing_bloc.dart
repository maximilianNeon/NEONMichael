import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'project_editing_event.dart';
part 'project_editing_state.dart';
part 'project_editing_bloc.freezed.dart';


@lazySingleton
class ProjectEditingBloc extends Bloc<ProjectEditingEvent, ProjectEditingState> {
  ProjectEditingBloc() : super(_Initial()) {
    on<ProjectEditingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
