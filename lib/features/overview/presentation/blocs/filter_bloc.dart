import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';

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
      List<List<String>> globalItemList;
      List headers;
      globalItemList = event.globalItemList;
      filterButtons = event.filterButtons;
      headers = event.headers;
      yield FilterMenuState(
        filterButtons: filterButtons,
        globalItemList: globalItemList,
        headers: headers,
      );
    }
    if (event is FilterProjectEvent) {
      List<ProjectEntity> chosenProjectType;
      chosenProjectType = event.chosenProjectType;
      yield FilterProjectState(chosenProjectType: chosenProjectType);
    }
  }
}
