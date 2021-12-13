import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/detail_screen.dart';

class Projects extends StatelessWidget {
  static List<ProjectEntity> mockProjects1 = [
    ProjectEntity(
        title: 'Doguniversity',
        assets: [
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title1',
              id: 1,
              elements: [
                ElementEntity(elementList: BuildElementLists.barList),
                ElementEntity(elementList: BuildElementLists.controlList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.actions)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title2',
              id: 2,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.actions)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title3',
              id: 3,
              elements: [
                ElementEntity(elementList: BuildElementLists.imageList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.mis)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title4',
              id: 4,
              elements: [
                ElementEntity(elementList: BuildElementLists.viewList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.social)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title5',
              id: 5,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.data)
              ]),
        ],
        description: 'Blablablabla',
        projectType: ProjectType.App,
        icon: const Icon(Icons.access_alarm)),
    ProjectEntity(
        title: 'New Project',
        assets: [
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle1',
              id: 1,
              elements: [
                ElementEntity(elementList: BuildElementLists.barList),
                ElementEntity(elementList: BuildElementLists.controlList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.userCollection)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle2',
              id: 2,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.userCollection)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle3',
              id: 3,
              elements: [
                ElementEntity(elementList: BuildElementLists.imageList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.mis)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle4',
              id: 4,
              elements: [
                ElementEntity(elementList: BuildElementLists.viewList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.social)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle5',
              id: 5,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.data)
              ])
        ],
        description: 'Blablablabla',
        projectType: ProjectType.WebDesktop,
        icon: const Icon(Icons.access_alarm)),
    ProjectEntity(
        title: 'Mac Life',
        assets: [
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle1',
              id: 1,
              elements: [
                ElementEntity(elementList: BuildElementLists.barList),
                ElementEntity(elementList: BuildElementLists.controlList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.utility)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle2',
              id: 2,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.utility)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle3',
              id: 3,
              elements: [
                ElementEntity(elementList: BuildElementLists.imageList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.content)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle4',
              id: 4,
              elements: [
                ElementEntity(elementList: BuildElementLists.viewList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.utility)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle5',
              id: 5,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.data)
              ])
        ],
        description: 'Blablablabla',
        projectType: ProjectType.WebMobile,
        icon: const Icon(Icons.access_alarm)),
  ];

  static List<ProjectEntity> chosenProjectTypeList = [];

  List<ProjectEntity> chooseListItemsForElements(String filterItem) {
    final chosenProjects = mockProjects1.where((project) {
      final assetIndex = project.assets.indexWhere((asset) {
        final elementIndex = asset.elements
            .indexWhere((element) => element.elementList.contains(filterItem));
        return elementIndex >= 0;
      });
      return assetIndex >= 0;
    }).toList();
    return chosenProjects;
  }

  List<ProjectEntity> chooseListItemForPatterns(String filterItem) {
    final chosenProjects = mockProjects1.where((project) {
      final assetIndex = project.assets.indexWhere((asset) {
        final patternIndex = asset.patterns
            .indexWhere((pattern) => pattern.patternList.contains(filterItem));
        return patternIndex >= 0;
      });
      return assetIndex >= 0;
    }).toList();
    return chosenProjects;
  }

  List<ProjectEntity> chooseListItemForType(String filterItem) {
    final chosenProjects = mockProjects1
        .where((project) => project.projectType.toString().contains(filterItem))
        .toList();
    return chosenProjects;
  }

  List<ProjectEntity> chooseFilterByFilterType(String filterItem) {
    if (FilterButtonList.filterButtons[0]) {
      //chosenProjectTypeList.clear();
      return chosenProjectTypeList = chooseListItemForType(filterItem);
    } else if (FilterButtonList.filterButtons[1]) {
      // chosenProjectTypeList.clear();
      return chosenProjectTypeList = chooseListItemForPatterns(filterItem);
    } else if (FilterButtonList.filterButtons[2]) {
      // chosenProjectTypeList.clear();
      return chosenProjectTypeList = chooseListItemsForElements(filterItem);
    }
    return chosenProjectTypeList;
  }

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
                                      print(chosenProjectTypeList[index]
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
        } else if (state is FilterMenuState) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: mockProjects1.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mockProjects1[index].title,
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
                        height: 250,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: mockProjects1[index].assets.length,
                          itemBuilder: (context, i) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print(chosenProjectTypeList[index]
                                          .assets[i]
                                          .id);
                                      Navigator.push<dynamic>(context,
                                          MaterialPageRoute<dynamic>(
                                              builder: (context) {
                                        return DetailScreen(
                                          index:
                                              mockProjects1[index].assets[i].id,
                                        );
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
                                          mockProjects1[index]
                                              .assets[i]
                                              .imageUrl,
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

//-----------------------old---------------------------------------

// mixin Projects {
//   static List<ProjectEntity> mockProjects1 = [
//     ProjectEntity(
//         title: 'Doguniversity',
//         assets: [
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'title1',
//               id: 1,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.barList),
//                 ElementEntity(elementList: BuildElementLists.controlList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.actions)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'title2',
//               id: 2,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.globalItemList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.actions)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'title3',
//               id: 3,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.imageList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.mis)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'title4',
//               id: 4,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.viewList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.social)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'title5',
//               id: 5,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.globalItemList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.data)
//               ]),
//         ],
//         description: 'Blablablabla',
//         projectType: ProjectType.App,
//         icon: const Icon(Icons.access_alarm)),
//     ProjectEntity(
//         title: 'New Project',
//         assets: [
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle1',
//               id: 1,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.barList),
//                 ElementEntity(elementList: BuildElementLists.controlList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.userCollection)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle2',
//               id: 2,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.globalItemList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.userCollection)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle3',
//               id: 3,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.imageList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.mis)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle4',
//               id: 4,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.viewList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.social)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle5',
//               id: 5,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.globalItemList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.data)
//               ])
//         ],
//         description: 'Blablablabla',
//         projectType: ProjectType.WebDesktop,
//         icon: const Icon(Icons.access_alarm)),
//     ProjectEntity(
//         title: 'Mac Life',
//         assets: [
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle1',
//               id: 1,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.barList),
//                 ElementEntity(elementList: BuildElementLists.controlList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.utility)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle2',
//               id: 2,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.globalItemList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.utility)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle3',
//               id: 3,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.imageList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.content)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle4',
//               id: 4,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.viewList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.utility)
//               ]),
//           AssetEntity(
//               imageUrl: 'https://picsum.photos/200/300',
//               title: 'NEWtitle5',
//               id: 5,
//               elements: [
//                 ElementEntity(elementList: BuildElementLists.globalItemList)
//               ],
//               patterns: [
//                 PatternEntity(patternList: BuildPatternLists.data)
//               ])
//         ],
//         description: 'Blablablabla',
//         projectType: ProjectType.WebMobile,
//         icon: const Icon(Icons.access_alarm)),
//   ];

//   static List<ProjectEntity> chosenProjectTypeList = mockProjects1;

//   static List<ProjectEntity> chooseListItemsForElements(String filterItem) {
//     final chosenProjects = mockProjects1.where((project) {
//       final assetIndex = project.assets.indexWhere((asset) {
//         final elementIndex = asset.elements
//             .indexWhere((element) => element.elementList.contains(filterItem));
//         return elementIndex >= 0;
//       });
//       return assetIndex >= 0;
//     }).toList();
//     return chosenProjects;
//   }

//   static List<ProjectEntity> chooseListItemForPatterns(String filterItem) {
//     final chosenProjects = mockProjects1.where((project) {
//       final assetIndex = project.assets.indexWhere((asset) {
//         final patternIndex = asset.patterns
//             .indexWhere((pattern) => pattern.patternList.contains(filterItem));
//         return patternIndex >= 0;
//       });
//       return assetIndex >= 0;
//     }).toList();
//     return chosenProjects;
//   }

//   static List<ProjectEntity> chooseListItemForType(String filterItem) {
//     final chosenProjects = mockProjects1
//         .where((project) => project.projectType.toString().contains(filterItem))
//         .toList();
//     return chosenProjects;
//   }

//   static List<ProjectEntity> chooseFilterByFilterType(String filterItem) {
//     if (FilterButtonList.filterButtons[0]) {
//       //chosenProjectTypeList.clear();
//       return chosenProjectTypeList = Projects.chooseListItemForType(filterItem);
//     } else if (FilterButtonList.filterButtons[1]) {
//       // chosenProjectTypeList.clear();
//       return chosenProjectTypeList =
//           Projects.chooseListItemForPatterns(filterItem);
//     } else if (FilterButtonList.filterButtons[2]) {
//       // chosenProjectTypeList.clear();
//       return chosenProjectTypeList =
//           Projects.chooseListItemsForElements(filterItem);
//     }
//     return chosenProjectTypeList;
//   }

//   static Widget getProjects() {
//     return BlocBuilder<FilterBloc, FilterState>(
//       builder: (context, state) {
//         if (state is FilterMenuState) {
//           return ListView.builder(
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             itemCount: state.chosenProjectByItem.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     state.chosenProjectByItem[index].title,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     textDirection: TextDirection.ltr,
//                     children: [
//                       SizedBox(
//                         // width: 900,
//                         height: 350,
//                         child: ListView.builder(
//                           physics: const ClampingScrollPhysics(),
//                           shrinkWrap: true,
//                           scrollDirection: Axis.horizontal,
//                           itemCount:
//                               state.chosenProjectByItem[index].assets.length,
//                           itemBuilder: (context, i) {
//                             return SingleChildScrollView(
//                               scrollDirection: Axis.vertical,
//                               child: Row(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       print(chosenProjectTypeList[index]
//                                           .assets[i]
//                                           .id);
//                                       Navigator.push<dynamic>(context,
//                                           MaterialPageRoute<dynamic>(
//                                               builder: (context) {
//                                         return DetailScreen(
//                                             index: state
//                                                 .chosenProjectByItem[index]
//                                                 .assets[i]
//                                                 .id);
//                                       }));
//                                     },
//                                     child: Container(
//                                         decoration: BoxDecoration(
//                                             color: kColorBlue,
//                                             border: Border.all(),
//                                             borderRadius:
//                                                 BorderRadius.circular(9)),
//                                         width: 150,
//                                         height: 250,
//                                         child: Image.network(
//                                           state.chosenProjectByItem[index]
//                                               .assets[i].imageUrl,
//                                           width: 150,
//                                           height: 250,
//                                           fit: BoxFit.fill,
//                                         )),
//                                   ),
//                                   const SizedBox(
//                                     width: 10,
//                                   )
//                                 ],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   )
//                 ],
//               );
//             },
//           );
//         } else if (state is FilterMenuState) {
//           return ListView.builder(
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             itemCount: mockProjects1.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     mockProjects1[index].title,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     textDirection: TextDirection.ltr,
//                     children: [
//                       SizedBox(
//                         // width: 900,
//                         height: 250,
//                         child: ListView.builder(
//                           physics: const ClampingScrollPhysics(),
//                           shrinkWrap: true,
//                           scrollDirection: Axis.horizontal,
//                           itemCount: mockProjects1[index].assets.length,
//                           itemBuilder: (context, i) {
//                             return SingleChildScrollView(
//                               scrollDirection: Axis.vertical,
//                               child: Row(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       print(chosenProjectTypeList[index]
//                                           .assets[i]
//                                           .id);
//                                       Navigator.push<dynamic>(context,
//                                           MaterialPageRoute<dynamic>(
//                                               builder: (context) {
//                                         return DetailScreen(
//                                           index:
//                                               mockProjects1[index].assets[i].id,
//                                         );
//                                       }));
//                                     },
//                                     child: Container(
//                                         decoration: BoxDecoration(
//                                             color: kColorBlue,
//                                             border: Border.all(),
//                                             borderRadius:
//                                                 BorderRadius.circular(9)),
//                                         width: 150,
//                                         height: 250,
//                                         child: Image.network(
//                                           mockProjects1[index]
//                                               .assets[i]
//                                               .imageUrl,
//                                           width: 150,
//                                           height: 250,
//                                           fit: BoxFit.fill,
//                                         )),
//                                   ),
//                                   const SizedBox(
//                                     width: 10,
//                                   )
//                                 ],
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   )
//                 ],
//               );
//             },
//           );
//         } else {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }
