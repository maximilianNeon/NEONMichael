import 'package:flutter/material.dart';
import 'package:neon_web/export_core_files.dart';
import 'package:neon_web/features/editing/presentation/widgets/screen_upload_input.dart';

class ScreenUploadItem extends StatelessWidget {
  String imageUrl;

  ScreenUploadItem({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              imageUrl,
              height: 250,
              width: 150,
            )),
        SizedBox(
          width: UIHelper().horizontalSpaceSmall(context),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ScreenUploadInput(
                inputHeader: "Pattern", matchingCategories: ["Social Feed"]),
            SizedBox(
              height: UIHelper().verticalSpaceMedium(context),
            ),
            ScreenUploadInput(
              inputHeader: "Elements",
              matchingCategories: ["Button", "TabBar", "SearchBar"],
            )
          ],
        )
      ],
    );
  }
}
