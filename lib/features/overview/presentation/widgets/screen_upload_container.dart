import 'package:flutter/material.dart';
import 'package:neon_web/features/overview/presentation/widgets/screen_upload_input.dart';
import 'package:neon_web/export_core_files.dart';

class ScreenUploadContainer extends StatelessWidget {
  const ScreenUploadContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      constraints: BoxConstraints(
          maxWidth: 400, maxHeight: 300, minHeight: 0, minWidth: 0),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              constraints: BoxConstraints(
                maxHeight: 300,
                maxWidth: 160,
                minWidth: 30,
                minHeight: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            width: UIHelper().horizontalSpaceSmall(context),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ScreenUploadInput(inputHeader: "Pattern", matchingCategories: ["Social Feed"]),
              SizedBox(
                height: UIHelper().verticalSpaceMedium(context),
              ),
              ScreenUploadInput(inputHeader: "Elements", matchingCategories: ["Button" ,"TabBar", "SearchBar"],)
            ],
          )
        ],
      ),
    );
  }
}
