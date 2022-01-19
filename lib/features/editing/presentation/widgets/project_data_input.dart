import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/export_core_files.dart';
import 'package:neon_web/features/editing/presentation/bloc/project_editing_bloc.dart';

class ProjectDataInput extends StatefulWidget {
  final String textfieldTitle;
  final String textFormFieldText;

  const ProjectDataInput({required this.textFormFieldText,required this.textfieldTitle, Key? key})
      : super(key: key);

  @override
  State<ProjectDataInput> createState() => _ProjectDataInputState();
}

class _ProjectDataInputState extends State<ProjectDataInput> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(textEditingController.text);
    ProjectEditingBloc projectEditingBloc =
        BlocProvider.of<ProjectEditingBloc>(context);
    return BlocBuilder<ProjectEditingBloc, ProjectEditingState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.textfieldTitle),
              SizedBox(height: UIHelper().verticalSpaceSmall(context)),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: 400, maxHeight: 30, minWidth: 200, minHeight: 0),
                child: TextFormField(
                  initialValue: widget.textFormFieldText ,
                 // controller: textEditingController,
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: BorderSide(color: kColorGreyBorder)),
                      contentPadding: EdgeInsets.all(8),
                      hintText: widget.textfieldTitle),
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  onChanged: (text) {
                    switch (widget.textfieldTitle) {
                      case "Projekt Name":
                        return projectEditingBloc
                            .add(ProjectEditingEvent.addName(name: text));
                      case "Projekt Beschreibung":
                        return projectEditingBloc.add(
                          ProjectEditingEvent.addDescription(description: text),
                        );
                    }
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
