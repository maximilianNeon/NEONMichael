import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterInitial());

  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    if (event is FilterMenuEvent) {
      List<bool> filterButtons;
      List globalItemList;
      List headers;
      globalItemList = event.globalItemList;
      filterButtons = event.filterButtons;
      headers = event.headers;
      yield FilterMenuState(
          filterButtons: filterButtons,
          globalItemList: globalItemList,
          headers: headers);
    }
  }
}
