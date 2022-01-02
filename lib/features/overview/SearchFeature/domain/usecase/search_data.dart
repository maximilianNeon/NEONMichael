import 'package:equatable/equatable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';

class SearchData extends UseCaseInternal<List<ProjectEntity>, Params> {

  @override
  List<ProjectEntity> call({required Params params}) {
    return params.projectEntityList.where((project) {
       //AppType muss in dieser Iteration getestet werden
      return project.assets.where((asset) {
            
            //Combining List<ElementEntity> and List<PatternEntity>
            final List<Object> list = asset.elements;
            list.addAll(asset.patterns);

            return list.indexWhere((listElement) =>
                    listElement.toString().contains(params.searchText)) >=
                0;
          }).length >=
          0;
    }).toList();
  }
}

class Params extends Equatable {
  final List<ProjectEntity> projectEntityList;
  final String searchText;

  Params({required this.searchText, required this.projectEntityList});

  @override
  List<Object?> get props => [searchText, projectEntityList];
}

//mixin SearchData {
//  static final searchData = ProjectHelpers.mockProjects1;
//
//  static List<ProjectEntity> searchItem(String filterItem) {
//    var chosenProjectTypeList = <ProjectEntity>[];
//    var chosenProjectPatternList = <ProjectEntity>[];
//    var chosenProjectElementList = <ProjectEntity>[];
//    var chosenProjectTitleList = <ProjectEntity>[];
//
//    chosenProjectTypeList = ProjectHelpers.chooseListItemForType(filterItem);
//    chosenProjectPatternList =
//        ProjectHelpers.chooseListItemForPatterns(filterItem);
//    chosenProjectElementList =
//        ProjectHelpers.chooseListItemsForElements(filterItem);
//    chosenProjectTitleList = ProjectHelpers.chooseListItemsByTitles(filterItem);
//    final projectList = chosenProjectTypeList
//      ..addAll(chosenProjectPatternList)
//      ..addAll(chosenProjectElementList)
//      ..addAll(chosenProjectTitleList);
//    return projectList;
//  }
//}
