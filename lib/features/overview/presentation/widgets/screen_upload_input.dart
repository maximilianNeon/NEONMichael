import 'package:flutter/material.dart';
import 'package:neon_web/export_core_files.dart';

class ScreenUploadInput extends StatefulWidget {
  final String inputHeader;
  final List<String> matchingCategories;

  const ScreenUploadInput(
      {required this.inputHeader, required this.matchingCategories, Key? key})
      : super(key: key);

  @override
  State<ScreenUploadInput> createState() => _ScreenUploadInputState();
}

class _ScreenUploadInputState extends State<ScreenUploadInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(widget.inputHeader),
          SizedBox(
            height: UIHelper().verticalSpaceSmall(context),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 150, maxHeight: 30, minWidth: 30, minHeight: 0),
            child: TextFormField(
              maxLines: 1,
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: BorderSide(color: kColorGreyBorder)),
                contentPadding: EdgeInsets.all(8),
              ),
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: UIHelper().verticalSpaceSmall(context),
          ),
          Container(
            width: 150,
            height: 50,
            child: GridView.builder(
              itemCount: widget.matchingCategories.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 75, mainAxisExtent: 15),
              itemBuilder: (context, index) => Text(
                widget.matchingCategories.elementAt(index),
                style: TextStyle(fontSize: 10, color: kColorLila),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
