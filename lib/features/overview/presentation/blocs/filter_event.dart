part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.started() = _Started;
  const factory FilterEvent.filterMenuEventType() = _FilterMenuEventType;
  const factory FilterEvent.filterMenuEventPattern() = _FilterMenuEventPattern;
  const factory FilterEvent.filterMenuEventElement() = _FilterMenuEventElement;
  const factory FilterEvent.filterProjectEvent({
    required String filterItem,
  }) = _FilterProjectEvent;
}
