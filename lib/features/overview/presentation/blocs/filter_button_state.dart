part of 'filter_button_bloc.dart';

@freezed
class FilterButtonState with _$FilterButtonState {
  const factory FilterButtonState.filterTurnedOff() = _FilterButtonTurnOffState;
  const factory FilterButtonState.elementFilterState({required List elementList, required List headLineList}) = _FilterButtonElementState;
  const factory FilterButtonState.typeFilterState({required List typeList}) = _FilterButtonTypeState;
  const factory FilterButtonState.patternFilterState({required List patternList, required List headLineList}) = _FilterButtonPatternState;
}
