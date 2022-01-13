part of 'filter_button_bloc.dart';

@freezed
class FilterButtonState with _$FilterButtonState {
  const factory FilterButtonState.filterTurnedOff() = _FilterButtonTurnOffState;
  const factory FilterButtonState.elementFilterState({
    required List<List> globalItemList,
    required List headers,
  }) = _FilterButtonElementState;
  const factory FilterButtonState.typeFilterState({
    required List<List> globalItemList,
    required List headers,
  }) = _FilterButtonTypeState;
  const factory FilterButtonState.patternFilterState({
    required List<List> globalItemList,
    required List headers,
  }) = _FilterButtonPatternState;
}
