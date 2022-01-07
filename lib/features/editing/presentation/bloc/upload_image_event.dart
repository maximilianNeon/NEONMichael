part of 'upload_image_bloc.dart';

@freezed
class UploadImageEvent with _$UploadImageEvent {
  const factory UploadImageEvent.uploadImage({required dynamic event, required DropzoneViewController controller  }) = _UploadImage;

}