import 'package:flutter/material.dart';
import 'package:neon_web/export_core_files.dart';

class ProjectDataInput extends StatelessWidget {
  final String textfieldTitle;

  const ProjectDataInput(
      {required this.textfieldTitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(textfieldTitle),
          SizedBox(height: UIHelper().verticalSpaceSmall(context)),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 400, maxHeight: 30, minWidth: 200, minHeight: 0),
            child: TextFormField(
              maxLines: 1,
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: BorderSide(color: kColorGreyBorder)),
                  contentPadding: EdgeInsets.all(8),
                  hintText: textfieldTitle),
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
