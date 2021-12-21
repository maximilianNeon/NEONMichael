import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';

mixin SearchData {
  static final searchData = ProjectHelpers.mockProjects1;

  static List<ProjectEntity> searchItem(String filterItem) {
    var chosenProjectTypeList = <ProjectEntity>[];
    var chosenProjectPatternList = <ProjectEntity>[];
    var chosenProjectElementList = <ProjectEntity>[];
    var chosenProjectTitleList = <ProjectEntity>[];

    chosenProjectTypeList = ProjectHelpers.chooseListItemForType(filterItem);
    chosenProjectPatternList =
        ProjectHelpers.chooseListItemForPatterns(filterItem);
    chosenProjectElementList =
        ProjectHelpers.chooseListItemsForElements(filterItem);
    chosenProjectTitleList = ProjectHelpers.chooseListItemsByTitles(filterItem);
    final projectList = chosenProjectTypeList
      ..addAll(chosenProjectPatternList)
      ..addAll(chosenProjectElementList)
      ..addAll(chosenProjectTitleList);
    return projectList;
  }
}
