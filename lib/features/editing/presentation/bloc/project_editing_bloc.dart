import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/data/data_sources/firebase_remote_datasource.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/upload_image_bloc.dart';

import '../../../../core/domain/entities/project_entity.dart';
import 'package:neon_web/core/enum/enums.dart';

part 'project_editing_event.dart';
part 'project_editing_state.dart';
part 'project_editing_bloc.freezed.dart';

@lazySingleton
class ProjectEditingBloc
    extends Bloc<ProjectEditingEvent, ProjectEditingState> {
  AssetBloc assetBloc;
  UploadImageBloc uploadImageBloc;
  ProjectEntity projectEntity = ProjectEntity(
      assets: [],
      description: "",
      id: 0,
      projectType: ProjectType.App.toString(),
      title: "");

  ProjectEditingBloc({required this.assetBloc, required this.uploadImageBloc})
      : super(_Initial()) {
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
    on<_UploadProject>((event, emit) {
      //ProjectEntity

      //AssetFileCache and IconImageCache
     

      //Vorläufiger Request Test
      FireBaseRemoteDataSourceImpl().uploadSingleProjectToDB(
          dataContainer: DataContainer(
              assetFileData: assetBloc.assetFileCache,
              iconFileData: uploadImageBloc.iconImageFileCache,
              projectEntityList: [
            projectEntity.copyWith(
                id: uploadImageBloc.iconImageFileCache.keys.first, assets: assetBloc.assetEntityList)
          ]));
    });
  }
}
