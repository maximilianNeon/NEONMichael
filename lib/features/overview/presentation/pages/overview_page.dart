import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/widgets/filter_button.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_items.dart';
import 'package:neon_web/features/overview/presentation/widgets/projects.dart';
import 'package:neon_web/features/overview/presentation/widgets/search_bar.dart';
import 'package:neon_web/features/overview/presentation/widgets/sort_button.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorWhite,
        shape: Border.all(color: kColorDarkBlue),
        title: const Text(
          'Neon Mobbin',
          style: TextStyle(color: kColorBlack),
        ),
        centerTitle: true,
        titleSpacing: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: kColorDarkBlue)),
                  width: 200,
                  // height: 700,
                  child: MenuItems.getMenu(),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SearchBar(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FilterButton(buttonName: 'Filter nach Art'),
                        const SizedBox(width: 20),
                        const FilterButton(buttonName: 'Filter nach Patterns'),
                        const SizedBox(
                          width: 20,
                        ),
                        const FilterButton(buttonName: 'Filter nach Elements'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SortButton(buttonName: 'Sortiert nach Projekten'),
                        const SizedBox(width: 20),
                        const SortButton(buttonName: 'Sortiert nach Screens'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 700, width: 400, child: Projects.getProjects()),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
