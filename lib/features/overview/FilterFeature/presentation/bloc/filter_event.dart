part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.resetFilter() = _ResetFilterEvent;
  const factory FilterEvent.setElementFilter({required String filter}) =
      _ElementFilterEvent;
  const factory FilterEvent.setPatternFilter({required String filter}) =
      _PatternFilterEvent;
  const factory FilterEvent.setTypeFilter({required String filter}) =
      _TypeFilterEvent;
}
