part of 'filter_button_bloc.dart';

@freezed
class FilterButtonState with _$FilterButtonState {
    const factory FilterButtonState.filterTurnedOff() = _FilterButtonTurnOffState;
  const factory FilterButtonState.elementFilterState(
      {required List<List<String>> globalItemList,
      required List headers,
      required List<ProjectEntity> chosenProjectByItem}) = _FilterButtonElementState;
  const factory FilterButtonState.typeFilterState(
      {required List<List<String>> globalItemList,
      required List headers,
      required List<ProjectEntity> chosenProjectByItem}) = _FilterButtonTypeState;
  const factory FilterButtonState.patternFilterState(
      {required List<List<String>> globalItemList,
      required List headers,
      required List<ProjectEntity> chosenProjectByItem}) = _FilterButtonPatternState;
}
