import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/enum/enums.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/editing/presentation/bloc/project_editing_bloc.dart';

class ProjectTypeChooser extends StatefulWidget {
  ProjectType projectType;
  
  ProjectTypeChooser({required this.projectType ,Key? key}) : super(key: key);

  @override
  State<ProjectTypeChooser> createState() => _ProjectTypeChooserState();
}

class _ProjectTypeChooserState extends State<ProjectTypeChooser> {

  @override
  Widget build(BuildContext context) {
    ProjectEditingBloc projectEditingBloc = BlocProvider.of<ProjectEditingBloc>(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Projekt Art"),
          verticalSpaceSmall(context: context),
          Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    widget.projectType = ProjectType.App;
                    projectEditingBloc.add(ProjectEditingEvent.addType(type: ProjectType.App));

                  }),
                  child: Container(
                    
                    width: 100
                    ,
                    height: 30,
                    decoration: BoxDecoration(
                      color: widget.projectType == ProjectType.App ? kColorTopupRed : kColorWhite,
                        borderRadius: kBorderRadius_10,
                        border: Border.all(color: kColorBlack)),
                    child: Center(child: Text(ProjectType.App.toString().split(".").last)),
                  ),
                ),
                horizontalSpaceSmall(context: context),
                GestureDetector(
                  onTap: () => setState(() {
                    widget.projectType = ProjectType.WebDesktop;
                    projectEditingBloc.add(ProjectEditingEvent.addType(type: ProjectType.WebDesktop));
                  }),
                  child: Container(
                    
                    width: 100
                    ,
                    height: 30,
                    decoration: BoxDecoration(
                      color:
                        widget.projectType == ProjectType.WebDesktop ? kColorTopupRed : kColorWhite,
                        borderRadius: kBorderRadius_10,
                        border: Border.all(color: kColorBlack)),
                    child: Center(child: Text(ProjectType.WebDesktop.toString().split(".").last)),
                  ),
                ),
                horizontalSpaceSmall(context: context),
                GestureDetector(
                  onTap: () => setState(() {
                    widget.projectType = ProjectType.WebMobile;
                    projectEditingBloc.add(ProjectEditingEvent.addType(type: ProjectType.WebMobile));
                  }),
                  child: Container(
                    width: 100
                    ,
                    height: 30,
                    decoration: BoxDecoration(
                        color: widget.projectType == ProjectType.WebMobile
                            ? kColorTopupRed
                            : kColorWhite,
                        borderRadius: kBorderRadius_10,
                        border: Border.all(color: kColorBlack)),
                    child: Center(child: Text(ProjectType.WebMobile.toString().split(".").last)),
                  ),
                ),
              ])
        ]);
  }
}
