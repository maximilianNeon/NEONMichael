import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/domain/usecases/build_type_lists.dart';
import 'package:neon_web/features/overview/data/menu_helpers.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';

import 'load_remote_data_bloc.dart';

part 'filter_button_event.dart';
part 'filter_button_state.dart';
part 'filter_button_bloc.freezed.dart';

@injectable
class FilterBloc extends Bloc<FilterButtonEvent, FilterState> {
  LoadRemoteDataBloc loadRemoteDataBloc;
  List<bool>? filterButtons;
  List<List<String>>? globalItemList;
  List? headers;

  
  
  FilterBloc({required this.loadRemoteDataBloc}) : super(const _Initial()) {
    on<_FilterButtonEventType>((event, emit) {
     
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

    on<_FilterButtonEventPattern>((event, emit) {
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

    on<_FilterButtonEventElement>((event, emit) {
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

    on<_FilterButtonEventProject>((event, emit) {
      List<ProjectEntity> chosenProjectByItem;
      chosenProjectByItem =
          ProjectHelpers.chooseFilterByFilterType(event.filterItem);
      filterButtons = FilterButtonList.filterButtons;
      emit(_FilterMenuState(
        filterButtons: filterButtons!,
        globalItemList: globalItemList!,
        headers: headers!,
        chosenProjectByItem: chosenProjectByItem,
      ));
    });
  }
}
