import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/features/overview/FilterFeature/presentation/bloc/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';

class MenuItems extends StatelessWidget {
  final int index;
  final int i;

  const MenuItems({required this.i, required this.index, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FilterBloc filterBloc = BlocProvider.of<FilterBloc>(context);
    ProjectFilterBloc projectFilterBloc =
        BlocProvider.of<ProjectFilterBloc>(context);
   DataBloc dataBloc = BlocProvider.of<DataBloc>(context);

    return BlocBuilder<FilterButtonBloc, FilterButtonState>(
      builder: (context, state) {
        return BlocBuilder<FilterBloc, FilterState>(
          builder: (context, filterState) {
            return GestureDetector(
              onTap: () {
                state.maybeMap(
                  orElse: () => "",
                  typeFilterState: (state) => filterBloc.state.maybeMap(
                    orElse: () => filterBloc.add(
                      FilterEvent.setTypeFilter(
                        filter: state.typeList[i].toString().split(".").last,
                        projectEntityList: projectFilterBloc.state.map(
                            reset: (_) => dataBloc.state.maybeMap(
                                orElse: () => [],
                                loaded: (state) => state.projectEntityList),
                            filtered: (filterState) =>
                                filterState.projectEntityList),
                      ),
                    ),
                    filteredByType: (filteredByTypeState) => filteredByTypeState
                                .actitvatedFilter ==
                            state.typeList[i].toString().split(".").last
                        ? filterBloc.add(
                            FilterEvent.resetFilter(
                              dataBloc.state.maybeMap(
                                  orElse: () => [],
                                  loaded: (loadedData) =>
                                      loadedData.projectEntityList),
                            ),
                          )
                        : filterBloc.add(
                            FilterEvent.setTypeFilter(
                              filter:
                                  state.typeList[i].toString().split(".").last,
                              projectEntityList: projectFilterBloc.state.map(
                                  reset: (_) => dataBloc.state
                                      .maybeMap(
                                          orElse: () => [],
                                          loaded: (state) =>
                                              state.projectEntityList),
                                  filtered: (filterState) =>
                                      filterState.projectEntityList),
                            ),
                          ),
                  ),
                  elementFilterState: (state) => filterBloc.state.maybeMap(
                      orElse: () => filterBloc.add(
                            FilterEvent.setElementFilter(
                              filter: state.elementList[i][index]
                                  .toString()
                                  .split(".")
                                  .last,
                              projectEntityList: projectFilterBloc.state.map(
                                  reset: (_) => dataBloc.state
                                      .maybeMap(
                                          orElse: () => [],
                                          loaded: (state) =>
                                              state.projectEntityList),
                                  filtered: (filterState) =>
                                      filterState.projectEntityList),
                            ),
                          ),
                      filteredByElements: (filteredByElements) =>
                          filteredByElements.actitvatedFilter ==
                                  state.elementList[i][index]
                                      .toString()
                                      .split(".")
                                      .last
                              ? filterBloc.add(FilterEvent.resetFilter(
                                  dataBloc.state.maybeMap(
                                      orElse: () => [],
                                      loaded: (loadedData) =>
                                          loadedData.projectEntityList)))
                              : filterBloc.add(
                                  FilterEvent.setElementFilter(
                                    filter: state.elementList[i][index]
                                        .toString()
                                        .split(".")
                                        .last,
                                    projectEntityList: projectFilterBloc.state
                                        .map(
                                            reset: (_) => dataBloc
                                                .state
                                                .maybeMap(
                                                    orElse: () => [],
                                                    loaded: (state) => state
                                                        .projectEntityList),
                                            filtered: (filterState) =>
                                                filterState.projectEntityList),
                                  ),
                                )),
                  patternFilterState: (state) => filterBloc.state.maybeMap(
                    orElse: () => filterBloc.add(FilterEvent.setPatternFilter(
                        filter: state.patternList[i][index]
                            .toString()
                            .split(".")
                            .last,
                        projectEntityList: projectFilterBloc.state.map(
                            reset: (_) => dataBloc.state.maybeMap(
                                orElse: () => [],
                                loaded: (state) => state.projectEntityList),
                            filtered: (filterState) =>
                                filterState.projectEntityList))),
                    filteredByPattern: (filteredPatternType) =>
                        filteredPatternType.actitvatedFilter ==
                                state.patternList[i][index]
                                    .toString()
                                    .split(".")
                                    .last
                            ? filterBloc.add(FilterEvent.resetFilter(
                                dataBloc.state.maybeMap(
                                    orElse: () => [],
                                    loaded: (loadedData) =>
                                        loadedData.projectEntityList)))
                            : filterBloc.add(
                                FilterEvent.setPatternFilter(
                                  filter: state.patternList[i][index]
                                      .toString()
                                      .split(".")
                                      .last,
                                  projectEntityList: projectFilterBloc.state
                                      .map(
                                          reset: (_) => dataBloc.state
                                              .maybeMap(
                                                  orElse: () => [],
                                                  loaded:
                                                      (state) => state
                                                          .projectEntityList),
                                          filtered: (filterState) =>
                                              filterState.projectEntityList),
                                ),
                              ),
                  ),
                );
              },
              child: Text(
                state.maybeMap(
                  orElse: () => "",
                  typeFilterState: (state) =>
                      state.typeList[i].toString().split(".").last,
                  elementFilterState: (state) =>
                      state.elementList[i][index].toString().split(".").last,
                  patternFilterState: (state) =>
                      state.patternList[i][index].toString().split(".").last,
                ),
                style: TextStyle(
                  color: state.map(
                    filterTurnedOff: (_) => kColorBlack,
                    typeFilterState: (typeFilter) => filterBloc.state.maybeMap(
                        orElse: () => kColorBlack,
                        filteredByType: (filterState) =>
                            filterState.actitvatedFilter ==
                                    typeFilter.typeList[i]
                                        .toString()
                                        .split(".")
                                        .last
                                ? kColorTopupRed
                                : kColorBlack),
                    patternFilterState: (patternFilter) => filterBloc.state
                        .maybeMap(
                            orElse: () => kColorBlack,
                            filteredByPattern: (filterState) =>
                                filterState.actitvatedFilter ==
                                        patternFilter.patternList[i][index]
                                            .toString()
                                            .split(".")
                                            .last
                                    ? kColorTopupRed
                                    : kColorBlack),
                    elementFilterState: (elementFilter) => filterBloc.state
                        .maybeMap(
                            orElse: () => kColorBlack,
                            filteredByElements: (filterState) =>
                                filterState.actitvatedFilter ==
                                        elementFilter.elementList[i][index]
                                            .toString()
                                            .split(".")
                                            .last
                                    ? kColorTopupRed
                                    : kColorBlack),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
