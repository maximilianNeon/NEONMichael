import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/enum/enums.dart';
import 'package:neon_web/core/style/color_constants.dart';
import 'package:neon_web/features/details/presentation/detail_screen.dart';
import 'package:neon_web/features/overview/FilterFeature/presentation/bloc/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/project_focus_page.dart';
import '../../../../core/domain/entities/project_entity.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProjectFilterBloc projectFilterBloc =
        BlocProvider.of<ProjectFilterBloc>(context);
    DataBloc dataBloc = BlocProvider.of<DataBloc>(context);
    FilterBloc filterBloc = BlocProvider.of<FilterBloc>(context);
    return BlocBuilder<DataBloc, DataState>(
      builder: (context, state) => state.maybeMap(
        orElse: () => CircularProgressIndicator(),
        loaded: (projectData) =>
            BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.map(
                filteredByElements: (state) => state.filteredByElements.length,
                filteredByPattern: (state) =>
                    state.filteredByPatternList.length,
                filteredByType: (state) => state.filterdByTypeList.length,
                empty: (_) => projectData.projectEntityList.length),
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      //setProjectFilter
                      projectFilterBloc.add(ProjectFilterEvent.setProjectFilter(
                        projectEntityList: projectData.projectEntityList,
                        projectTitle: state.map(
                            filteredByElements: (state) =>
                                state.filteredByElements[index].title,
                            filteredByPattern: (state) =>
                                state.filteredByPatternList[index].title,
                            filteredByType: (state) =>
                                state.filterdByTypeList[index].title,
                            empty: (_) =>
                                projectData.projectEntityList[index].title),
                      ));

                      //Navigate to ProjectFocusPage
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => state.map(
                            empty: (state) => ProjectFocusPage(
                              projectEntity:
                                  projectData.projectEntityList[index],
                            ),
                            filteredByPattern: (state) => ProjectFocusPage(
                              projectEntity: state.filteredByPatternList[index],
                            ),
                            filteredByElements: (state) => ProjectFocusPage(
                              projectEntity: state.filteredByElements[index],
                            ),
                            filteredByType: (state) => ProjectFocusPage(
                              projectEntity: state.filterdByTypeList[index],
                            ),
                          ),
                        ),
                      );

                      //Reset Filter
                      filterBloc.add(FilterEvent.resetFilter(
                          projectData.projectEntityList));
                    },
                    child: Text(
                      state.map(
                          filteredByElements: (state) =>
                              state.filteredByElements[index].title,
                          filteredByPattern: (state) =>
                              state.filteredByPatternList[index].title,
                          filteredByType: (state) =>
                              state.filterdByTypeList[index].title,
                          empty: (_) =>
                              projectData.projectEntityList[index].title),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                        maxHeight: 200,
                        maxWidth: double.infinity,
                        minHeight: 50,
                        minWidth: 50),
                    child: Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.topLeft,
                        //color: Colors.red,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.map(
                                filteredByElements: (state) => state
                                    .filteredByElements[index].assets.length,
                                filteredByPattern: (state) => state
                                    .filteredByPatternList[index].assets.length,
                                filteredByType: (state) => state
                                    .filterdByTypeList[index].assets.length,
                                empty: (state) => projectData
                                    .projectEntityList[index].assets.length),
                            itemBuilder: (context, i) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push<dynamic>(
                                      context,
                                      MaterialPageRoute<dynamic>(
                                        builder: (context) {
                                          return DetailScreen(
                                              projectEntity: state.map(
                                                filteredByElements: (state) =>
                                                    state.filteredByElements[
                                                        index],
                                                filteredByPattern: (state) =>
                                                    state.filteredByPatternList[
                                                        index],
                                                filteredByType: (state) => state
                                                    .filterdByTypeList[index],
                                                empty: (_) => projectData
                                                    .projectEntityList[index],
                                              ),
                                              assetEntity: state.map(
                                                filteredByElements: (state) =>
                                                    state
                                                        .filteredByElements[
                                                            index]
                                                        .assets[i],
                                                filteredByPattern: (state) =>
                                                    state
                                                        .filteredByPatternList[
                                                            index]
                                                        .assets[i],
                                                filteredByType: (state) => state
                                                    .filterdByTypeList[index]
                                                    .assets[i],
                                                empty: (_) => projectData
                                                    .projectEntityList[index]
                                                    .assets[i],
                                              ));
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        color: kColorBlue,
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(9)),
                                    width: 150,
                                    height: 250,
                                    child: Hero(
                                      tag: state.map(
                                        empty: (_) => projectData
                                            .projectEntityList[index]
                                            .assets[i]
                                            .id
                                            .toString(),
                                        filteredByPattern: (state) => state
                                            .filteredByPatternList[index]
                                            .assets[i]
                                            .id
                                            .toString(),
                                        filteredByElements: (state) => state
                                            .filteredByElements[index]
                                            .assets[i]
                                            .id
                                            .toString(),
                                        filteredByType: (state) => state
                                            .filterdByTypeList[index]
                                            .assets[i]
                                            .id
                                            .toString(),
                                      ),
                                      child: Image.network(
                                        state.map(
                                          empty: (state) => projectData
                                              .projectEntityList[index]
                                              .assets[i]
                                              .imageUrl,
                                          filteredByPattern: (state) => state
                                              .filteredByPatternList[index]
                                              .assets[i]
                                              .imageUrl,
                                          filteredByElements: (state) => state
                                              .filteredByElements[index]
                                              .assets[i]
                                              .imageUrl,
                                          filteredByType: (state) => state
                                              .filterdByTypeList[index]
                                              .assets[i]
                                              .imageUrl,
                                        ),
                                        width: 150,
                                        height: 200,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ));
                            }),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        }),
      ),
    );
  }
}
