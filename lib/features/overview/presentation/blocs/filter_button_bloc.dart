import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/usecases/build_element_Lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/domain/usecases/build_type_lists.dart';

part 'filter_button_event.dart';
part 'filter_button_state.dart';
part 'filter_button_bloc.freezed.dart';

@singleton
class FilterButtonBloc extends Bloc<FilterButtonEvent, FilterButtonState> {
  FilterButtonBloc() : super(const _FilterButtonTurnOffState()) {
    on<_FilterButtonEventType>((event, emit) {
      emit(_FilterButtonTypeState(typeList: BuildTypeLists.appTypeList));
    });

    on<_FilterButtonEventPattern>((event, emit) {
      emit(_FilterButtonPatternState(
          headLineList: BuildPatternLists.headlineList,
          patternList: BuildPatternLists.globalItemList));
    });

    on<_FilterButtonEventElement>((event, emit) {
      emit(_FilterButtonElementState(
          elementList: BuildElementLists.globalItemList,
          headLineList: BuildElementLists.headLineList));
    });

    on<_TurnOffFilter>((event, emit) {
      emit(_FilterButtonTurnOffState());
    });
  }
}
