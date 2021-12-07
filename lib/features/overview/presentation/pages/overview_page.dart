import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/elemen_lists.dart';
import 'package:neon_web/core/domain/entities/pattern_lists.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/core/style/constants.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  List<String> enumResult = [];
  void getListOfPatterns() {
    enumResult = EnumToString.toList(OverlayElements.values);
  }

  Widget getTextWidgets() {
    return Column(children: enumResult.map((item) => Text(item)).toList());
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: kColorDarkBlue)),
                      width: 800,
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            contentPadding: EdgeInsets.all(8)),
                      ),
                    ),
                    SizedBox(
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
                        Text(
                          'Sortiert nach Projekten',
                          style: TextStyle(color: kColorDarkBlue),
                        ),
                        SizedBox(width: 20),
                        Text('Sortiert nach Screens'),
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
