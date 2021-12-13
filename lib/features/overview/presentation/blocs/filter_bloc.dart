import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/domain/usecases/build_type_lists.dart';
import 'package:neon_web/features/overview/data/menu_helpers.dart';
import 'package:neon_web/features/overview/data/project_helpers.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  List<bool>? filterButtons;
  List<List<String>>? globalItemList;
  List? headers;

  FilterBloc({this.filterButtons, this.globalItemList, this.headers})
      : super(FilterInitial());

  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    if (event is FilterMenuEventType) {
      globalItemList = BuildTypeLists.appTypeList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.typeHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      );
    }

    if (event is FilterMenuEventPattern) {
      globalItemList = BuildPatternLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.patternHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      );
    }

    if (event is FilterMenuEventElement) {
      globalItemList = BuildElementLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.elementHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: ProjectHelpers.mockProjects1,
      );
    }

    if (event is FilterProjectEvent) {
      List<ProjectEntity> chosenProjectByItem;
      chosenProjectByItem =
          ProjectHelpers.chooseFilterByFilterType(event.filterItem);
      globalItemList = BuildElementLists.globalItemList;
      filterButtons = FilterButtonList.filterButtons;
      headers = MenuHelpers.elementHeaders;
      yield FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: chosenProjectByItem,
      );
    }
  }
}
