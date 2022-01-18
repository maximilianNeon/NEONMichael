import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/features/overview/FilterFeature/presentation/bloc/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/export_core_files.dart';
import 'package:neon_web/features/overview/presentation/blocs/load_remote_data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';

class MenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProjectFilterBloc projectFilterBloc =
        BlocProvider.of<ProjectFilterBloc>(context);
    LoadRemoteDataBloc loadRemoteDataBloc =
        BlocProvider.of<LoadRemoteDataBloc>(context);
    FilterBloc filterBloc = BlocProvider.of<FilterBloc>(context);
    return BlocBuilder<FilterButtonBloc, FilterButtonState>(
        builder: (context, state) {
      return state.maybeMap(
          orElse: () => ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 220,
                  minWidth: 220,
                  maxHeight: double.infinity,
                  minHeight: 0,
                ),
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: kColorBlack)),
                  width: 220,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.maybeMap(
                          orElse: () => 0,
                          typeFilterState: (_) =>
                              BuildTypeLists.appTypeList.length,
                          elementFilterState: (_) =>
                              BuildElementLists.headLineList.length,
                          patternFilterState: (_) =>
                              BuildPatternLists.headlineList.length,
                        ),
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.maybeMap(
                                        orElse: () => "",
                                        typeFilterState: (_) => BuildTypeLists
                                            .appTypeList[i]
                                            .toString()
                                            .split(".")
                                            .last,
                                        elementFilterState: (_) => BuildElementLists
                                            .headLineList[i]
                                            .toString()
                                            .split(".")
                                            .last,
                                        patternFilterState: (_) => BuildPatternLists
                                            .headlineList[i]
                                            .toString()
                                            .split(".")
                                            .last,
                                      ),
                                      style: kMenuItem.copyWith(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: state.maybeMap(
                                        orElse: () => 0,
                                        typeFilterState: (_) => 1,
                                        elementFilterState: (_) =>
                                            BuildElementLists
                                                .globalItemList[i].length,
                                        patternFilterState: (_) =>
                                            BuildPatternLists
                                                .globalItemList[i].length,
                                      ),
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            state.maybeMap(
                                              orElse: () => "",
                                              typeFilterState: (_) => filterBloc
                                                  .add(FilterEvent.setTypeFilter(
                                                      filter: BuildTypeLists
                                                              .appTypeList[i].toString().split(".").last 
                                                          ,
                                                      projectEntityList: projectFilterBloc.state.map(
                                                          reset: (_) =>
                                                             loadRemoteDataBloc.state.maybeMap(orElse: () => [] , loaded: (state) => state.projectEntityList),
                                                          filtered: (filterState) =>
                                                              filterState
                                                                  .projectEntityList))),
                                              elementFilterState: (_) => filterBloc
                                                  .add(FilterEvent.setElementFilter(
                                                      filter: BuildElementLists
                                                          .globalItemList[i]
                                                              [index]
                                                          .toString().split(".").last,
                                                      projectEntityList: projectFilterBloc.state.map(
                                                          reset: (_) =>
                                                              loadRemoteDataBloc.state.maybeMap(orElse: () => [] , loaded: (state) => state.projectEntityList)
                                                                ,
                                                          filtered: (filterState) =>
                                                              filterState
                                                                  .projectEntityList))),
                                              patternFilterState: (_) => filterBloc
                                                  .add(FilterEvent.setPatternFilter(
                                                      filter: BuildPatternLists
                                                          .globalItemList[i]
                                                              [index]
                                                          .toString().split(".").last,
                                                      projectEntityList: projectFilterBloc.state.map(
                                                          reset: (_) =>
                                                             loadRemoteDataBloc.state.maybeMap(orElse: () => [] , loaded: (state) => state.projectEntityList),
                                                          filtered: (filterState) =>
                                                              filterState
                                                                  .projectEntityList))),
                                            );
                                          },
                                          child: Text(
                                            state.maybeMap(
                                              orElse: () => "",
                                              typeFilterState: (_) =>
                                                  BuildTypeLists.appTypeList[i].toString().split(".").last
                                                      ,
                                              elementFilterState: (_) =>
                                                  BuildElementLists
                                                      .globalItemList[i][index]
                                                      .toString()
                                                      .split(".")
                                                      .last,
                                              patternFilterState: (_) =>
                                                  BuildPatternLists
                                                      .globalItemList[i][index]
                                                      .toString()
                                                      .split(".")
                                                      .last,
                                            ),
                                            style: kMenuItem,
                                          ),
                                        );
                                      },
                                    ),
                                  ])
                            ],
                          );
                        }),
                  ),
                ),
              ),
          filterTurnedOff: (_) => Container());
    });
  }
}
