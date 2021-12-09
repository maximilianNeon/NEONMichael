import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/pages/detail_screen.dart';

mixin Projects {
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
          // AssetEntity(
          //     imageUrl: 'https://picsum.photos/200/300',
          //     title: 'title6',
          //     id: 6,
          //     elements: [
          //       ElementEntity(elementList: BuildElementLists.globalItemList)
          //     ],
          //     patterns: [
          //       PatternEntity(patternList: BuildPatternLists.data)
          //     ])
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
                PatternEntity(patternList: BuildPatternLists.actions)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle2',
              id: 2,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.actions)
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
        projectType: ProjectType.App,
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
                PatternEntity(patternList: BuildPatternLists.actions)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle2',
              id: 2,
              elements: [
                ElementEntity(elementList: BuildElementLists.globalItemList)
              ],
              patterns: [
                PatternEntity(patternList: BuildPatternLists.actions)
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
        projectType: ProjectType.App,
        icon: const Icon(Icons.access_alarm)),
  ];

  static Widget getProjects() {
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
                Container(
                  // width: 900,
                  height: 150,
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
                                print(mockProjects1[index].assets[i].id);
                                Navigator.push<dynamic>(context,
                                    MaterialPageRoute<dynamic>(
                                        builder: (context) {
                                  return DetailScreen(
                                    index: mockProjects1[index].assets[i].id,
                                  );
                                }));
                              },
                              child: Container(
                                  decoration:
                                      const BoxDecoration(color: kColorBlue),
                                  width: 150,
                                  height: 150,
                                  child: Image.network(
                                    mockProjects1[index].assets[i].imageUrl,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
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
  }
}
