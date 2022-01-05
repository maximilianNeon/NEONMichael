part of 'project_filter_bloc.dart';

@freezed
class ProjectFilterState with _$ProjectFilterState {
  const factory ProjectFilterState.reset() = _ResetFilterState;
  const factory ProjectFilterState.filtered({required List<ProjectEntity> projectEntityList}) = _FilteredByProject;

}
