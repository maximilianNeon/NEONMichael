part of 'filter_button_bloc.dart';

@freezed
class FilterButtonEvent with _$FilterButtonEvent {
  const factory FilterButtonEvent.filterButtonEventType() =
      _FilterButtonEventType;
  const factory FilterButtonEvent.filterButtonEventPattern() =
      _FilterButtonEventPattern;
  const factory FilterButtonEvent.filterButtonEventElement() =
      _FilterButtonEventElement;
  const factory FilterButtonEvent.turnOffFilter() = _TurnOffFilter;
}
