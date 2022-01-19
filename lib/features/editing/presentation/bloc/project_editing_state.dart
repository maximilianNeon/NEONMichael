part of 'project_editing_bloc.dart';

@freezed
class ProjectEditingState with _$ProjectEditingState {
  const factory ProjectEditingState.initial() = _Initial;
  const factory ProjectEditingState.editing(
      {required ProjectEntity projectEntity, required Map<int, Uint8List> iconFileCache}) = _Editing;
  const factory ProjectEditingState.loading(
      ) = _Loading;

}
