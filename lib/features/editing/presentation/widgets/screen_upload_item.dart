import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/export_core_files.dart';
import 'package:neon_web/features/editing/presentation/bloc/pattern_element_bloc.dart';
import 'package:neon_web/features/editing/presentation/widgets/screen_upload_input.dart';

class ScreenUploadItem extends StatelessWidget {
  String imageUrl;

  ScreenUploadItem({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PatternElementBloc patternElementBloc = BlocProvider.of<PatternElementBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
              
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
            GestureDetector(
              onTap: (){
                patternElementBloc.add(PatternElementEvent.changeToPatternView(imageUrl: imageUrl));

              },
              child: Text("Pattern und Elements hinzufügen")),
             SizedBox(
              height: UIHelper().verticalSpaceMedium(context),
            ),
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
