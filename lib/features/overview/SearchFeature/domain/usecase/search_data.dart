import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';

mixin SearchData {
  static final searchData = ProjectHelpers.mockProjects1;

  static List<ProjectEntity> searchItem(String filterItem) {
    var chosenProjectTypeList1 = <ProjectEntity>[];
    var chosenProjectTypeList2 = <ProjectEntity>[];
    var chosenProjectTypeList3 = <ProjectEntity>[];
    var chosenProjectTypeList4 = <ProjectEntity>[];

    chosenProjectTypeList1 = ProjectHelpers.chooseListItemForType(filterItem);
    chosenProjectTypeList2 =
        ProjectHelpers.chooseListItemForPatterns(filterItem);
    chosenProjectTypeList3 =
        ProjectHelpers.chooseListItemsForElements(filterItem);
    chosenProjectTypeList4 = ProjectHelpers.chooseListItemsByTitles(filterItem);
    final projectList = chosenProjectTypeList1
      ..addAll(chosenProjectTypeList2)
      ..addAll(chosenProjectTypeList3)
      ..addAll(chosenProjectTypeList4);
    return projectList;
  }
}
