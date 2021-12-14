import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';

mixin ProjectHelpers {
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
                ElementEntity(elementList: BuildElementLists.controlList)
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
                ElementEntity(elementList: BuildElementLists.viewList)
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
                ElementEntity(elementList: BuildElementLists.overlayList)
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
                ElementEntity(elementList: BuildElementLists.overlayList)
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
                ElementEntity(elementList: BuildElementLists.controlList)
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
                ElementEntity(elementList: BuildElementLists.imageList)
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

  static List<ProjectEntity> chooseListItemsForElements(String filterItem) {
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

  static List<ProjectEntity> chooseListItemForPatterns(String filterItem) {
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

  static List<ProjectEntity> chooseListItemForType(String filterItem) {
    final chosenProjects = mockProjects1
        .where((project) => project.projectType.toString().contains(filterItem))
        .toList();
    return chosenProjects;
  }

  static List<ProjectEntity> chooseFilterByFilterType(String filterItem) {
    if (FilterButtonList.filterButtons[0]) {
      return chosenProjectTypeList = chooseListItemForType(filterItem);
    } else if (FilterButtonList.filterButtons[1]) {
      return chosenProjectTypeList = chooseListItemForPatterns(filterItem);
    } else if (FilterButtonList.filterButtons[2]) {
      return chosenProjectTypeList = chooseListItemsForElements(filterItem);
    }
    return ProjectHelpers.chosenProjectTypeList;
  }
}
