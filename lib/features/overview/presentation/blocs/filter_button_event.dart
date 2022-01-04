part of 'filter_button_bloc.dart';

@freezed
class FilterButtonEvent with _$FilterButtonEvent {
  const factory FilterButtonEvent.started() = _Started;
  const factory FilterButtonEvent.filterButtonEventType() =
      _FilterButtonEventType;
  const factory FilterButtonEvent.filterButtonEventPattern() =
      _FilterButtonEventPattern;
  const factory FilterButtonEvent.filterButtonEventElement() =
      _FilterButtonEventElement;
  const factory FilterButtonEvent.filterButtonEventProject({
    required String filterItem,
  }) = _FilterButtonEventProject;
  const factory FilterButtonEvent.filterProjectButtonScreen({
    required String filterItem,
  }) = _FilterButtonEventScreen;
  const factory FilterButtonEvent.filterProjectSearchBar(
      {required String searchItem}) = _FilterProjectSearchBar;
  const factory FilterButtonEvent.turnOffFilter() = _TurnOffFilter;
}
