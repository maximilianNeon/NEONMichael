part of 'load_remote_data_bloc.dart';

@freezed
class LoadRemoteDataEvent with _$LoadRemoteDataEvent {
  const factory LoadRemoteDataEvent.downloadProjectData() = _LoadProjectData; 
}