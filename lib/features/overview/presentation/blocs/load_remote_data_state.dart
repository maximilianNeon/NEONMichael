part of 'load_remote_data_bloc.dart';

@freezed
class LoadRemoteDataState with _$LoadRemoteDataState {
  const factory LoadRemoteDataState.initial() = _Initial;
  const factory LoadRemoteDataState.empty() = _Empty;
  const factory LoadRemoteDataState.loading() = _Loading;
  const factory LoadRemoteDataState.loaded() = _Loaded;
  const factory LoadRemoteDataState.error() = _Error;
  
}
