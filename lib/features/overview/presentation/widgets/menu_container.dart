import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/features/overview/FilterFeature/presentation/bloc/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/export_core_files.dart';
import 'package:neon_web/features/overview/presentation/blocs/load_remote_data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_items.dart';

class MenuContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterButtonBloc, FilterButtonState>(
        builder: (context, state) {
      return state.maybeMap(
          orElse: () => ConstrainedBox(
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
                          typeFilterState: (state) => state.typeList.length,
                          elementFilterState: (state) =>
                              state.headLineList.length,
                          patternFilterState: (state) =>
                              state.headLineList.length,
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
                                        typeFilterState: (state) => state
                                            .typeList[i]
                                            .toString()
                                            .split(".")
                                            .last,
                                        elementFilterState: (state) => state
                                            .headLineList[i]
                                            .toString()
                                            .split(".")
                                            .last,
                                        patternFilterState: (state) => state
                                            .headLineList[i]
                                            .toString()
                                            .split(".")
                                            .last,
                                      ),
                                      style: kMenuItem.copyWith(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: state.maybeMap(
                                        orElse: () => 0,
                                        typeFilterState: (_) => 1,
                                        elementFilterState: (_) =>
                                            BuildElementLists
                                                .globalItemList[i].length,
                                        patternFilterState: (_) =>
                                            BuildPatternLists
                                                .globalItemList[i].length,
                                      ),
                                      itemBuilder: (context, index) {
                                        return MenuItems(
                                          i: i,
                                          index: index,
                                        );
                                      },
                                    ),
                                  ])
                            ],
                          );
                        }),
                  ),
                ),
              ),
          filterTurnedOff: (_) => Container());
    });
  }
}
