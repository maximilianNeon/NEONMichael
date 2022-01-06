part of 'project_editing_bloc.dart';

@freezed
class ProjectEditingState with _$ProjectEditingState {
  const factory ProjectEditingState.initial() = _Initial;
  const factory ProjectEditingState.editing({required ProjectEntity projectEntity}) = _Editing;
}
