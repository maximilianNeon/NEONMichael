import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
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
              id: 11,
              elements: [
                ElementEntity(item: BarElements.NavigationDrawer),
                ElementEntity(item: BarElements.Searchbar)
              ],
              patterns: [
                PatternEntity(item: ActionsPatterns.AddAndCreate)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title2',
              id: 12,
              elements: [ElementEntity(item: ControlElements.Button)],
              patterns: [PatternEntity(item: ActionsPatterns.BanAndBlock)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title3',
              id: 13,
              elements: [ElementEntity(item: ImageElements.AnimationAndVideo)],
              patterns: [PatternEntity(item: MisPatterns.Misc)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title4',
              id: 14,
              elements: [ElementEntity(item: ViewElements.Badge)],
              patterns: [PatternEntity(item: SocialPatterns.Leaderboard)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'title5',
              id: 15,
              elements: [ElementEntity(item: ViewElements.Banner)],
              patterns: [PatternEntity(item: DataPatterns.Progress)]),
        ],
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        projectType: ProjectType.App,
        icon: const Icon(Icons.access_alarm)),
    ProjectEntity(
        title: 'New Project',
        assets: [
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle1',
              id: 21,
              elements: [
                ElementEntity(item: BarElements.Tabbar),
                ElementEntity(item: ControlElements.FloatingActionButton)
              ],
              patterns: [
                PatternEntity(item: UserCollectionsPatterns.Offline)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle2',
              id: 22,
              elements: [ElementEntity(item: OverlayElements.ActionSheet)],
              patterns: [PatternEntity(item: UserCollectionsPatterns.Trash)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle3',
              id: 23,
              elements: [ElementEntity(item: ImageElements.Avatar)],
              patterns: [PatternEntity(item: MisPatterns.Confetti)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle4',
              id: 24,
              elements: [ElementEntity(item: ViewElements.Divider)],
              patterns: [PatternEntity(item: SocialPatterns.SocialFeed)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle5',
              id: 25,
              elements: [ElementEntity(item: OverlayElements.Toast)],
              patterns: [PatternEntity(item: DataPatterns.SizeGiude)])
        ],
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        projectType: ProjectType.WebDesktop,
        icon: const Icon(Icons.access_alarm)),
    ProjectEntity(
        title: 'Mac Life',
        assets: [
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle1',
              id: 31,
              elements: [
                ElementEntity(item: BarElements.Toolbar),
                ElementEntity(item: ControlElements.SingleSelect)
              ],
              patterns: [
                PatternEntity(item: UtilityPatterns.AudioPlayer)
              ]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle2',
              id: 32,
              elements: [ElementEntity(item: ControlElements.ColorPicker)],
              patterns: [PatternEntity(item: UtilityPatterns.Calendar)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle3',
              id: 33,
              elements: [ElementEntity(item: ImageElements.Illustration)],
              patterns: [PatternEntity(item: ContentPatterns.Event)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle4',
              id: 34,
              elements: [ElementEntity(item: ViewElements.List)],
              patterns: [PatternEntity(item: UtilityPatterns.DateAndTime)]),
          AssetEntity(
              imageUrl: 'https://picsum.photos/200/300',
              title: 'NEWtitle5',
              id: 35,
              elements: [ElementEntity(item: ImageElements.Thumbnail)],
              patterns: [PatternEntity(item: DataPatterns.DashboardAndStats)])
        ],
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        projectType: ProjectType.WebMobile,
        icon: const Icon(Icons.access_alarm)),
  ];

  static List<ProjectEntity> chosenProjectTypeList = [];

  static List<ProjectEntity> chooseListItemsForElements(String filterItem) {
    final chosenProjects = mockProjects1.where((project) {
      final assetIndex = project.assets.indexWhere((asset) {
        final elementIndex = asset.elements.indexWhere((element) {
          final itemIndex = element.item.toString().contains(filterItem);
          return itemIndex;
        });
        return elementIndex >= 0;
      });
      return assetIndex >= 0;
    }).toList();
    return chosenProjects;
  }

  static List<ProjectEntity> chooseListItemForPatterns(String filterItem) {
    final chosenProjects = mockProjects1.where((project) {
      final assetIndex = project.assets.indexWhere((asset) {
        final patternIndex = asset.patterns.indexWhere((pattern) {
          final itemIndex = pattern.item.toString().contains(filterItem);
          return itemIndex;
        });
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

  //static List<ProjectEntity> chooseFilterByFilterType(String filterItem) {
  //  if (FilterButtonList.filterButtons[0]) {
  //    return chosenProjectTypeList = chooseListItemForType(filterItem);
  //  } else if (FilterButtonList.filterButtons[1]) {
  //    return chosenProjectTypeList = chooseListItemForPatterns(filterItem);
  //  } else if (FilterButtonList.filterButtons[2]) {
  //    return chosenProjectTypeList = chooseListItemsForElements(filterItem);
  //  }
  //  return ProjectHelpers.chosenProjectTypeList;
  //}

  static List<ProjectEntity> chooseListItemsByTitles(String filterItem) {
    final chosenProjectByTitle = mockProjects1
        .where((element) => element.title.contains(filterItem))
        .toList();
    return chosenProjectByTitle;
  }
}
