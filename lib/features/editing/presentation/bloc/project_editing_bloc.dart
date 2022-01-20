import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/data/data_sources/firebase_remote_datasource.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
import 'package:neon_web/features/editing/domain/entities/dropped_Image_entity.dart';
import 'package:neon_web/features/overview/presentation/blocs/data_bloc.dart';
import '../../../../core/domain/entities/project_entity.dart';
import 'package:neon_web/core/enum/enums.dart';

part 'project_editing_event.dart';
part 'project_editing_state.dart';
part 'project_editing_bloc.freezed.dart';

@lazySingleton
class ProjectEditingBloc
    extends Bloc<ProjectEditingEvent, ProjectEditingState> {
  Map<int, Uint8List> iconImageFileCache = {};
  DataBloc dataBloc;
  ProjectEntity projectEntity = ProjectEntity(
      assets: [],
      imageReferenceId: 0,
      description: "",
      imageUrl: "",
      projectId: 0,
      projectType: ProjectType.App,
      title: "");

  ProjectEditingBloc({required this.dataBloc}) : super(_Initial()) {
    on<_AddName>((event, emit) {
      projectEntity = projectEntity.copyWith(title: event.name);
      emit(_Editing(
          projectEntity: projectEntity, iconFileCache: iconImageFileCache));
    });

    on<_AddType>((event, emit) {
      projectEntity = projectEntity.copyWith(projectType: event.type);
    });
    on<_AddDescription>((event, emit) {
      projectEntity = projectEntity.copyWith(description: event.description);
      emit(_Editing(
          projectEntity: projectEntity, iconFileCache: iconImageFileCache));
    });
    on<_UploadProject>(
      (event, emit) async {
        emit(_Loading());

        dataBloc.add(DataEvent.setToLoading());
        await FireBaseRemoteDataSourceImpl().uploadSingleProjectToDB(
          dataContainer: DataContainer(
            assetFileData: event.assetFileCache,
            iconFileData: iconImageFileCache,
            projectEntityList: [
              projectEntity.copyWith(assets: event.assetEntityList)
            ],
          ),
        );

        dataBloc.add(DataEvent.downloadProjectData());

        emit(_Editing(
            projectEntity: projectEntity, iconFileCache: iconImageFileCache));
      },
    );
    on<_AddExistingProject>(
      (event, emit) {
        projectEntity = event.projectEntity;
        emit(
          _Editing(
              projectEntity: event.projectEntity,
              iconFileCache: iconImageFileCache),
        );
      },
    );
    on<_UploadImage>((event, emit) {
      emit(_Loading());
      int generatedAssetId = DateTime.now().microsecondsSinceEpoch.toInt();

      iconImageFileCache.clear();

      iconImageFileCache
          .addAll({generatedAssetId: event.droppedImageEntity.fileData});

      projectEntity =
          projectEntity.copyWith(imageReferenceId: generatedAssetId);

      emit(_Editing(
          projectEntity: projectEntity, iconFileCache: iconImageFileCache));
    });

    on<_Reset>(
      (event, emit) {
        projectEntity = ProjectEntity(
            imageReferenceId: 0,
            projectId: DateTime.now().microsecondsSinceEpoch.toInt(),
            assets: [],
            description: "",
            imageUrl: "",
            projectType: ProjectType.App,
            title: "");

        emit(
          _Editing(
              projectEntity: ProjectEntity(
                  imageReferenceId: 0,
                  projectId: DateTime.now().microsecondsSinceEpoch.toInt(),
                  assets: [],
                  description: "",
                  imageUrl: "",
                  projectType: ProjectType.App,
                  title: ""),
              iconFileCache: iconImageFileCache),
        );
      },
    );
  }
}
