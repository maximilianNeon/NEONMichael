import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/presentation%20/pages/page_layout.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/details/presentation/detail_screen.dart';

import 'package:neon_web/features/overview/SearchFeature/presentation/widgets/search_bar.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_by_projectname.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/widgets/filter_button_row.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_items.dart';

class ProjectFocusPage extends StatelessWidget {
  final String projectTitle;
  const ProjectFocusPage({required this.projectTitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backArrow: true,
      uploadIcon: false,
      appBarHeader: "ProjectFocusPage",
      widget: Padding(
        padding: kPad16,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MenuItems(),
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
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      SizedBox(width: UIHelper().horizontalSpaceSmall(context)),
                      Text(this.projectTitle),
                    ],
                  ),
                  SizedBox(height: UIHelper().verticalSpaceMedium(context)),
                  BlocBuilder<ProjectFilterBloc, ProjectFilterState>(
                      builder: (context, state) => state.map(
                            initial: (_) => CircularProgressIndicator(),
                            filtered: (state) => Container(
                              width: UIHelper().displayWidth(context),
                              height: UIHelper().displayWidth(context),
                              child: GridView.builder(
                                  itemCount: state.map(
                                      initial: (_) => 0,
                                      filtered: (state) => state
                                          .projectEntityList
                                          .first
                                          .assets
                                          .length),
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          maxCrossAxisExtent: 150),
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.push<dynamic>(
                                              context,
                                              MaterialPageRoute<dynamic>(
                                                builder: (context) {
                                                  return DetailScreen(
                                                    imageUrl: state
                                                        .projectEntityList
                                                        .first
                                                        .assets[index]
                                                        .imageUrl,
                                                    projectIndex: state
                                                        .projectEntityList
                                                        .first
                                                        .assets[index]
                                                        .id,
                                                    project: state
                                                        .projectEntityList
                                                        .first,
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            decoration: BoxDecoration(
                                                color: kColorBlue,
                                                border: Border.all(),
                                                borderRadius:
                                                    BorderRadius.circular(9)),
                                            width: 150,
                                            height: 250,
                                            child: Hero(
                                              tag: state.projectEntityList.first
                                                  .assets[index].id
                                                  .toString(),
                                              child: Image.network(
                                                state.projectEntityList.first
                                                    .assets[index].imageUrl,
                                                width: 150,
                                                height: 200,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ))),
                            ),
                          ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
