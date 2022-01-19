part of 'data_bloc.dart';

@freezed
class DataState with _$DataState {
  const factory DataState.initial() = _Initial;
  const factory DataState.empty() = _Empty;
  const factory DataState.loading() = _Loading;
  const factory DataState.loaded({required List<ProjectEntity> projectEntityList}) = _Loaded;
  const factory DataState.error() = _Error;
  
}
