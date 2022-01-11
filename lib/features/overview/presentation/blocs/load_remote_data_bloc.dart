import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';
import 'package:neon_web/features/overview/domain/usecases/load_projectdata.dart';

part 'load_remote_data_event.dart';
part 'load_remote_data_state.dart';
part 'load_remote_data_bloc.freezed.dart';

@singleton
class LoadRemoteDataBloc
    extends Bloc<LoadRemoteDataEvent, LoadRemoteDataState> {
  final LoadProjectData loadProjectData;
  List<ProjectEntity> _projectData = [];

  List<ProjectEntity> get loadedProjectData => _projectData;

  LoadRemoteDataBloc(this.loadProjectData) : super(_Initial()) {
    on<_LoadProjectData>((event, emit) async {
      emit(_Loading());
      _projectData = ProjectHelpers.mockProjects1;
      emit(_Loaded());
    });
  }
}
