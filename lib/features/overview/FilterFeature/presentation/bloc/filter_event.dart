part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.resetFilter(List<ProjectEntity> projectEntitesList) = _ResetFilterEvent;
  const factory FilterEvent.setElementFilter(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) = _ElementFilterEvent;
  const factory FilterEvent.setPatternFilter(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) = _PatternFilterEvent;
  const factory FilterEvent.setTypeFilter(
      {required String filter,
      required List<ProjectEntity> projectEntityList}) = _TypeFilterEvent;
}
