import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/features/overview/domain/usecases/load_projectdata.dart';

part 'load_remote_data_event.dart';
part 'load_remote_data_state.dart';
part 'load_remote_data_bloc.freezed.dart';

@singleton
class LoadRemoteDataBloc
    extends Bloc<LoadRemoteDataEvent, LoadRemoteDataState> {
  final LoadProjectData loadProjectData;
  List<ProjectEntity> projectData = [];

  List<ProjectEntity> get loadedProjectData => projectData;

  LoadRemoteDataBloc(this.loadProjectData) : super(_Initial()) {
    on<LoadRemoteDataEvent>((event, emit) async {
      event.map(loadProjectData: (_) {
        emit(_Loading());
      });
      final result = await loadProjectData.call(NoParams());
      result.fold(
        (failure) => emit(_Error()),
        (success) {
          projectData = success;
          emit(_Loaded());},
      );
    });
  }
}
