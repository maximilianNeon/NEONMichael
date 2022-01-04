part of 'filter_button_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _Initial;
  const factory FilterState.filterMenuState({
    required List<bool> filterButtons,
    required List<List<String>> globalItemList,
    required List headers,
    required List<ProjectEntity> chosenProjectByItem,
  }) = _FilterMenuState;
  const factory FilterState.filterTurnedOff() = _FilterTurnOffState;
  const factory FilterState.elementFilterState(
      {required List<List<String>> globalItemList,
      required List headers,
      required List<ProjectEntity> chosenProjectByItem}) = _FilterElementState;
  const factory FilterState.typeFilterState(
      {required List<List<String>> globalItemList,
      required List headers,
      required List<ProjectEntity> chosenProjectByItem}) = _FilterTypeState;
  const factory FilterState.patternFilterState(
      {required List<List<String>> globalItemList,
      required List headers,
      required List<ProjectEntity> chosenProjectByItem}) = _FilterPatternState;
}
