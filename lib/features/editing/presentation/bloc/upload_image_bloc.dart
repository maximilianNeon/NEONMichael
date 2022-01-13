import 'package:bloc/bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/features/editing/domain/entities/dropped_Image_entity.dart';

part 'upload_image_event.dart';
part 'upload_image_state.dart';
part 'upload_image_bloc.freezed.dart';

@lazySingleton
class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  UploadImageBloc() : super(_Initial()) {
    on<_UploadImage>((event, emit) async {
      emit(_Loading());

      emit(
        _Loaded(
          droppedImageEntity: DroppedImageEntity(
            fileData: event.droppedImageEntity.fileData,
          ),
        ),
      );
    });
  }
}
