part of 'filter_button_bloc.dart';

@freezed
class FilterButtonState with _$FilterButtonState {
  const factory FilterButtonState.filterTurnedOff() = _FilterButtonTurnOffState;
  const factory FilterButtonState.elementFilterState() = _FilterButtonElementState;
  const factory FilterButtonState.typeFilterState() = _FilterButtonTypeState;
  const factory FilterButtonState.patternFilterState() = _FilterButtonPatternState;
}
