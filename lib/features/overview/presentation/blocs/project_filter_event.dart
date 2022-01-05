part of 'project_filter_bloc.dart';

@freezed
class ProjectFilterEvent with _$ProjectFilterEvent {
  const factory ProjectFilterEvent.started() = _Started;
  const factory ProjectFilterEvent.setProjectFilter({required List<ProjectEntity> projectEntityList, required String projectTitle}) = _SetProjectFilterEvent;
  
}