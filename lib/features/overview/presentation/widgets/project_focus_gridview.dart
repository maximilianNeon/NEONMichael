import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/export_core_files.dart';
import 'package:neon_web/features/details/presentation/detail_screen.dart';

class ProjectFocusGridView extends StatelessWidget {
  final List<ProjectEntity> projectEntityList;

  const ProjectFocusGridView({required this.projectEntityList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: UIHelper().displayWidth(context),
      height: UIHelper().displayWidth(context),
      child: projectEntityList.length > 0 ? GridView.builder(
        itemCount: projectEntityList.first.assets.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 10, crossAxisSpacing: 10, maxCrossAxisExtent: 150),
        itemBuilder: (context, index) =>  
             GestureDetector(
                onTap: () {
                  Navigator.push<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (context) {
                        return DetailScreen(
                            imageUrl:
                                projectEntityList.first.assets[index].imageUrl,
                            projectIndex:
                                projectEntityList.first.assets[index].id,
                            project: projectEntityList.first);
                      },
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: kColorBlue,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(9)),
                  width: 150,
                  height: 250,
                  child: Hero(
                    tag: projectEntityList.first.assets[index].id.toString(),
                    child: Image.network(
                      projectEntityList.first.assets[index].imageUrl,
                      width: 150,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
           ,
      ) : Text("No Data"),
    );
  }
}
