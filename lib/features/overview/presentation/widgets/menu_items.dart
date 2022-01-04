import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/data/menu_helpers.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/export_core_files.dart';

class MenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
      return ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 220,
          minWidth: 220,
          maxHeight: double.infinity,
          minHeight: 0,
        ),
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: kColorBlack)),
          width: 220,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.maybeMap(
                  orElse: () => 0,
                  typeFilterState: (_) => MenuHelpers.typeHeaders.length,
                  elementFilterState: (_) => MenuHelpers.elementHeaders.length,
                  patternFilterState: (_) => MenuHelpers.patternHeaders.length,
                ),
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.maybeMap(
                                orElse: () => "",
                                typeFilterState: (_) =>
                                    MenuHelpers.typeHeaders[i].toString(),
                                elementFilterState: (_) =>
                                    MenuHelpers.elementHeaders[i].toString(),
                                patternFilterState: (_) =>
                                    MenuHelpers.patternHeaders[i].toString(),
                              ),
                              style: kMenuItem.copyWith(
                                  fontWeight: FontWeight.w700),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.maybeMap(
                                orElse: () => 0,
                                typeFilterState: (_) =>
                                    BuildTypeLists.appTypeList[i].length,
                                elementFilterState: (_) =>
                                    BuildElementLists.globalItemList[i].length,
                                patternFilterState: (_) =>
                                    BuildPatternLists.globalItemList[i].length,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    final chosenItem = state.maybeMap(
                                      orElse: () => "",
                                      typeFilterState: (_) =>
                                          BuildTypeLists.appTypeList[i][index],
                                      elementFilterState: (_) =>
                                          BuildElementLists.globalItemList[i]
                                              [index],
                                      patternFilterState: (_) =>
                                          BuildPatternLists.globalItemList[i]
                                              [index],
                                    );

                                    BlocProvider.of<FilterBloc>(context).add(
                                        FilterButtonEvent
                                            .filterButtonEventProject(
                                                filterItem: chosenItem));
                                  },
                                  child: Text(
                                    state.maybeMap(
                                      orElse: () => "",
                                      typeFilterState: (_) =>
                                          BuildTypeLists.appTypeList[i][index],
                                      elementFilterState: (_) =>
                                          BuildElementLists.globalItemList[i]
                                              [index],
                                      patternFilterState: (_) =>
                                          BuildPatternLists.globalItemList[i]
                                              [index],
                                    ),
                                    style: kMenuItem,
                                  ),
                                );
                              },
                            ),
                          ])
                    ],
                  );
                }),
          ),
        ),
      );
    });
  }
}
