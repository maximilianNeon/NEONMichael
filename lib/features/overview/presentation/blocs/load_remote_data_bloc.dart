import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_remote_data_event.dart';
part 'load_remote_data_state.dart';
part 'load_remote_data_bloc.freezed.dart';

class LoadRemoteDataBloc extends Bloc<LoadRemoteDataEvent, LoadRemoteDataState> {
  LoadRemoteDataBloc() : super(_Initial()) {
    on<LoadRemoteDataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
