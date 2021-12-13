import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/enums.dart';

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
}
