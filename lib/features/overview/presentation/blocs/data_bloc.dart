import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/download_project_data.dart';
import 'package:neon_web/core/domain/usecases/upload_single_project.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';

part 'data_event.dart';
part 'data_state.dart';
part 'data_bloc.freezed.dart';

@singleton
class DataBloc
    extends Bloc<DataEvent, DataState> {
  DownloadProjectData downloadProjectData;
  UploadProjectData uploadProjectData;
  List<ProjectEntity> _projectData = [];

  

  DataBloc(
      {required this.uploadProjectData, required this.downloadProjectData})
      : super(_Initial()) {
    on<_LoadProjectData>((event, emit) async {
      emit(_Loading());

      final result = await downloadProjectData.call(params: NoParams());

     
      result.fold(
          (l) => emit(_Error()), (r) => emit(_Loaded(projectEntityList: r)));
    });
  }
}
