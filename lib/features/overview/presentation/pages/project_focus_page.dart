import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/presentation%20/pages/page_layout.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/project_editing_bloc.dart';
import 'package:neon_web/features/editing/presentation/pages/project_upload_page.dart';
import 'package:neon_web/features/overview/FilterFeature/presentation/bloc/filter_bloc.dart';
import 'package:neon_web/features/overview/SearchFeature/presentation/widgets/search_bar.dart';
import 'package:neon_web/features/overview/presentation/blocs/data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/widgets/filter_button_row.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_container.dart';
import 'package:neon_web/features/overview/presentation/widgets/project_focus_gridview.dart';
import '../../../../core/domain/entities/project_entity.dart';

class ProjectFocusPage extends StatelessWidget {
  final ProjectEntity projectEntity;

  const ProjectFocusPage({required this.projectEntity, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataBloc dataBloc = BlocProvider.of<DataBloc>(context);
    ProjectFilterBloc projectFilterBloc =
        BlocProvider.of<ProjectFilterBloc>(context);
    return PageLayout(
      showBackArrow: true,
      showLogOutAndUpload: false,
      appBarHeader: "ProjectFocusPage",
      widget: Padding(
        padding: kPad16,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MenuContainer(),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SearchBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  FilterButtonRow(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(projectEntity.imageUrl),
                        radius: 40,
                      ),
                      horizontalSpaceSmall(context: context),
                      Text(projectEntity.title),
                      horizontalSpaceSmall(context: context),
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<ProjectEditingBloc>(context).add(
                              ProjectEditingEvent.addExistingProject(
                                  projectEntity: projectEntity));

                          BlocProvider.of<AssetBloc>(context).add(
                              AssetEvent.addExistingDataToAssetBloc(
                                  assetEntityList: projectEntity.assets));

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProjectUploadPage(),
                            ),
                          );
                        },
                        child: Icon(Icons.edit),
                      ),
                      horizontalSpaceSmall(context: context),
                      GestureDetector(
                        onTap: () {
                    
                          projectFilterBloc.state.map( 
                            reset: (_) {},
                            filtered: (filtered) => dataBloc.add(
                              DataEvent.saveProjectAssetImagesOnDevice(
                                  projectEntity:
                                      filtered.projectEntityList.first),
                            ),
                          );
                        },
                        child: Icon(Icons.download),
                      ),
                    ],
                  ),
                  SizedBox(height: UIHelper().verticalSpaceMedium(context)),
                  BlocBuilder<ProjectFilterBloc, ProjectFilterState>(
                    builder: (context, state) => state.map(
                      reset: (_) => CircularProgressIndicator(),
                      filtered: (projectState) =>
                          BlocBuilder<FilterBloc, FilterState>(
                        builder: (context, state) {
                          return state.map(
                            empty: (emptyState) => ProjectFocusGridView(
                                projectEntityList:
                                    projectState.projectEntityList),
                            filteredByElements: (elementFilterState) =>
                                ProjectFocusGridView(
                                    projectEntityList:
                                        elementFilterState.filteredByElements),
                            filteredByPattern: (patternFilterState) =>
                                ProjectFocusGridView(
                                    projectEntityList: patternFilterState
                                        .filteredByPatternList),
                            filteredByType: (typeFilterState) =>
                                ProjectFocusGridView(
                                    projectEntityList:
                                        typeFilterState.filterdByTypeList),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
