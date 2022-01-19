part of 'project_editing_bloc.dart';

@freezed
class ProjectEditingEvent with _$ProjectEditingEvent {
  const factory ProjectEditingEvent.reset() = _Reset;
  const factory ProjectEditingEvent.addName({required String name}) =  _AddName;
  const factory ProjectEditingEvent.addType({required ProjectType type}) =  _AddType;
  const factory ProjectEditingEvent.addDescription({required String description}) =  _AddDescription;
  const factory ProjectEditingEvent.upload({required Map<int, Uint8List> assetFileCache, required List<AssetEntity> assetEntityList}) =  _UploadProject;
  const factory ProjectEditingEvent.addExistingProject({required ProjectEntity projectEntity}) =  _AddExistingProject;
  const factory ProjectEditingEvent.uploadImage({required DroppedImageEntity droppedImageEntity}) =  _UploadImage;

  
}