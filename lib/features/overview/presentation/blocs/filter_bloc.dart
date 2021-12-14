import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/domain/usecases/build_type_lists.dart';
import 'package:neon_web/features/overview/data/menu_helpers.dart';
import 'package:neon_web/features/overview/data/project_helpers.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  List<bool>? filterButtons;
  List<List<String>>? globalItemList;
  List? headers;

  FilterBloc() : super(const _Initial()) {
    on<_FilterMenuEventType>((event, emit) {
      globalItemList = BuildTypeLists.appTypeList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.typeHeaders;
      emit(_FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      ));
    });

    on<_FilterMenuEventPattern>((event, emit) {
      globalItemList = BuildPatternLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.patternHeaders;
      emit(_FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      ));
    });

    on<_FilterMenuEventElement>((event, emit) {
      globalItemList = BuildElementLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.elementHeaders;
      emit(_FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      ));
    });

    on<_FilterProjectEvent>((event, emit) {
      List<ProjectEntity> chosenProjectByItem;
      chosenProjectByItem =
          ProjectHelpers.chooseFilterByFilterType(event.filterItem);
      globalItemList = BuildElementLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.elementHeaders;
      emit(_FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: chosenProjectByItem,
      ));
    });
  }
}
