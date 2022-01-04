import 'package:flutter/material.dart';
import 'package:neon_web/core/presentation%20/pages/page_layout.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/core/util/ui_helper.dart';

import 'package:neon_web/features/overview/SearchFeature/presentation/widgets/search_bar.dart';
import 'package:neon_web/features/overview/presentation/widgets/filter_button_row.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_items.dart';


class ProjectFocusPage extends StatelessWidget {
  const ProjectFocusPage({Key? key}) : super(key: key);

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
                      Text("App Name"),
                    ],
                  ),
                  Container(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150),
                        itemCount: 0,
                        itemBuilder: (context, index) => Container()),
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
