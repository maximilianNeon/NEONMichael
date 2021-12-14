part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _Initial;
  const factory FilterState.filterMenuState({
    required List<bool> filterButtons,
    required List<List<String>> globalItemList,
    required List headers,
    required List<ProjectEntity> chosenProjectByItem,
  }) = _FilterMenuState;
}
