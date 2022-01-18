import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'filter_button_event.dart';
part 'filter_button_state.dart';
part 'filter_button_bloc.freezed.dart';

@singleton
class FilterButtonBloc extends Bloc<FilterButtonEvent, FilterButtonState> {

  FilterButtonBloc()
      : super(const _FilterButtonTurnOffState()) {
    on<_FilterButtonEventType>((event, emit) {
      emit(_FilterButtonTypeState());
    });

    on<_FilterButtonEventPattern>((event, emit) {
      emit(_FilterButtonPatternState());
    });

    on<_FilterButtonEventElement>((event, emit) {
      emit(_FilterButtonElementState());
    });

    on<_TurnOffFilter>((event, emit) {
      emit(_FilterButtonTurnOffState());
    });
  }
}
