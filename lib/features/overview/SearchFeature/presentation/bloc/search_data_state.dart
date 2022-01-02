part of 'search_data_bloc.dart';

@freezed
class SearchDataState with _$SearchDataState {
  const factory SearchDataState.initial() = _Initial;
  const factory SearchDataState.loading() = _Loading;
  const factory SearchDataState.loaded(
      {required List<ProjectEntity> projectEntityList}) = _Loaded;
  const factory SearchDataState.error() = _Error;
}
