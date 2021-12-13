import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/data/project_helpers.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/detail_screen.dart';

class Projects extends StatelessWidget {
  // List<ProjectEntity> chooseListItemsForElements(String filterItem) {
  //   final chosenProjects = ProjectHelpers.mockProjects1.where((project) {
  //     final assetIndex = project.assets.indexWhere((asset) {
  //       final elementIndex = asset.elements
  //           .indexWhere((element) => element.elementList.contains(filterItem));
  //       return elementIndex >= 0;
  //     });
  //     return assetIndex >= 0;
  //   }).toList();
  //   return chosenProjects;
  // }

  // List<ProjectEntity> chooseListItemForPatterns(String filterItem) {
  //   final chosenProjects = ProjectHelpers.mockProjects1.where((project) {
  //     final assetIndex = project.assets.indexWhere((asset) {
  //       final patternIndex = asset.patterns
  //           .indexWhere((pattern) => pattern.patternList.contains(filterItem));
  //       return patternIndex >= 0;
  //     });
  //     return assetIndex >= 0;
  //   }).toList();
  //   return chosenProjects;
  // }

  // List<ProjectEntity> chooseListItemForType(String filterItem) {
  //   final chosenProjects = ProjectHelpers.mockProjects1
  //       .where((project) => project.projectType.toString().contains(filterItem))
  //       .toList();
  //   return chosenProjects;
  // }

  // List<ProjectEntity> chooseFilterByFilterType(String filterItem) {
  //   if (FilterButtonList.filterButtons[0]) {
  //     return ProjectHelpers.chosenProjectTypeList =
  //         chooseListItemForType(filterItem);
  //   } else if (FilterButtonList.filterButtons[1]) {
  //     return ProjectHelpers.chosenProjectTypeList =
  //         chooseListItemForPatterns(filterItem);
  //   } else if (FilterButtonList.filterButtons[2]) {
  //     return ProjectHelpers.chosenProjectTypeList =
  //         chooseListItemsForElements(filterItem);
  //   }
  //   return ProjectHelpers.chosenProjectTypeList;
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        if (state is FilterMenuState) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: state.chosenProjectByItem.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.chosenProjectByItem[index].title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    textDirection: TextDirection.ltr,
                    children: [
                      SizedBox(
                        // width: 900,
                        height: 350,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              state.chosenProjectByItem[index].assets.length,
                          itemBuilder: (context, i) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print(ProjectHelpers
                                          .chosenProjectTypeList[index]
                                          .assets[i]
                                          .id);
                                      Navigator.push<dynamic>(context,
                                          MaterialPageRoute<dynamic>(
                                              builder: (context) {
                                        return DetailScreen(
                                            index: state
                                                .chosenProjectByItem[index]
                                                .assets[i]
                                                .id);
                                      }));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: kColorBlue,
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        width: 150,
                                        height: 250,
                                        child: Image.network(
                                          state.chosenProjectByItem[index]
                                              .assets[i].imageUrl,
                                          width: 150,
                                          height: 250,
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
