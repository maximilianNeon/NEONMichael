import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/widgets/filter_button.dart';
import 'package:neon_web/features/overview/presentation/widgets/search_bar.dart';
import 'package:neon_web/features/overview/presentation/widgets/sort_button.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  String enumResult = "";
  List<String> elementHeaders = [];

  void getListOfPatterns() {
    elementHeaders = EnumToString.toList(ElementHeader.values);
    enumResult = EnumToString.convertToString(ElementHeader.values[1]);
  }

  Widget getTextWidgets() {
    return ListView.builder(
      itemCount: elementHeaders.length,
      itemBuilder: (context, i) {
        var specificEnum = ElementHeader.values[i];
        return Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(elementHeaders[i]),
                  Expanded(
                    child: ListView.builder(
                      itemCount:
                          BuildPatternLists.userCollection.patternList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            print(enumResult[index]);
                          },
                          child: Text(enumResult[index]),
                        );
                      },
                    ),
                  ),
                ])
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    getListOfPatterns();
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
                  height: 700,
                  child: getTextWidgets(),
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
                    )
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
