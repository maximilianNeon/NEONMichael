import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/domain/usecases/build_type_lists.dart';
import 'package:neon_web/features/overview/data/project_helpers.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_items.dart';
import 'package:neon_web/features/overview/presentation/widgets/projects.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterInitial());

  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    if (event is FilterMenuEventType) {
      List<bool> filterButtons;
      List<List<String>> globalItemList;
      List headers;

      globalItemList = BuildTypeLists.appTypeList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuItems.typeHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons,
        globalItemList: globalItemList,
        headers: headers,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      );
    }

    if (event is FilterMenuEventPattern) {
      List<bool> filterButtons;
      List<List<String>> globalItemList;
      List headers;

      globalItemList = BuildPatternLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuItems.patternHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons,
        globalItemList: globalItemList,
        headers: headers,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      );
    }

    if (event is FilterMenuEventElement) {
      List<bool> filterButtons;
      List<List<String>> globalItemList;
      List headers;

      globalItemList = BuildElementLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuItems.elementHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons,
        globalItemList: globalItemList,
        headers: headers,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      );
    }

    if (event is FilterProjectEvent) {
      final projects = Projects();
      List<ProjectEntity> chosenProjectByItem;
      List<bool> filterButtons;
      List<List<String>> globalItemList;
      List headers;
      chosenProjectByItem = projects.chooseFilterByFilterType(event.filterItem);
      globalItemList = BuildElementLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuItems.elementHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons,
        globalItemList: globalItemList,
        headers: headers,
        chosenProjectByItem: chosenProjectByItem,
      );
    }
  }
}
