part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  
  const factory FilterState.empty(
      ) = _EmptyFilterState;
  const factory FilterState.filteredByPattern(
          {required List<ProjectEntity> filteredByPatternList}) =
      _PatternFilterState;
  const factory FilterState.filteredByElements(
      {required List<ProjectEntity> filteredByElements}) = _ElementFilterState;
  const factory FilterState.filteredByType(
      {required List<ProjectEntity> filterdByTypeList}) = _TypeFilterState;
}
