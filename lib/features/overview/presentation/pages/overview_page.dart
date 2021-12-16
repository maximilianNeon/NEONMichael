import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
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
  void initState() {
    super.initState();
    FilterButtonList.changeFilterButton(0);
  }

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
        body: BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
          return state.map(
              initial: (_) => const Text('data'),
              filterMenuState: (state) {
                return Padding(
                  padding: kPad16,
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 2, color: kColorBlack)),
                          width: 220,
                          height: 850,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: MenuItems(),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
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
                                FilterButton(
                                    activeColor:
                                        state.filterButtons[0] == true
                                            ? kColorTopupRed
                                            : kColorWhite,
                                    onpress: () {
                                      FilterButtonList.changeFilterButton(
                                          0);
                                      BlocProvider.of<FilterBloc>(context)
                                          .add(const FilterButtonEvent
                                              .filterButtonEventType());
                                    },
                                    buttonName: 'Filter nach Art'),
                                const SizedBox(width: 20),
                                FilterButton(
                                    activeColor:
                                        state.filterButtons[1] == true
                                            ? kColorTopupRed
                                            : kColorWhite,
                                    onpress: () {
                                      FilterButtonList.changeFilterButton(
                                          1);
                                      BlocProvider.of<FilterBloc>(context)
                                          .add(const FilterButtonEvent
                                              .filterButtonEventPattern());
                                    },
                                    buttonName: 'Filter nach Patterns'),
                                const SizedBox(
                                  width: 20,
                                ),
                                FilterButton(
                                    activeColor:
                                        state.filterButtons[2] == true
                                            ? kColorTopupRed
                                            : kColorWhite,
                                    onpress: () {
                                      FilterButtonList.changeFilterButton(
                                          2);
                                      BlocProvider.of<FilterBloc>(context)
                                          .add(const FilterButtonEvent
                                              .filterButtonEventElement());
                                    },
                                    buttonName: 'Filter nach Elements'),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                SortButton(
                                    buttonName: 'Sortiert nach Projekten'),
                                SizedBox(width: 20),
                                SortButton(
                                    buttonName: 'Sortiert nach Screens'),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                height: 680, width: 800, child: Projects()),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              });

          // Padding(
          //   padding: kPad16,
          //   child: SingleChildScrollView(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         Row(
          //           mainAxisSize: MainAxisSize.max,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Container(
          //               alignment: Alignment.topCenter,
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(20),
          //                   border: Border.all(width: 2, color: kColorBlack)),
          //               width: 220,
          //               height: 850,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8),
          //                 child: MenuItems(),
          //               ),
          //             ),
          //             const SizedBox(
          //               width: 20,
          //             ),
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisSize: MainAxisSize.max,
          //               children: [
          //                 const SearchBar(),
          //                 const SizedBox(
          //                   height: 20,
          //                 ),
          //                 Row(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   children: [
          //                     FilterButton(
          //                         activeColor: state.filterButtons[0] == true
          //                             ? kColorTopupRed
          //                             : kColorWhite,
          //                         onpress: () {
          //                           FilterButtonList.changeFilterButton(0);
          //                           BlocProvider.of<FilterBloc>(context)
          //                               .add(FilterMenuEventType());
          //                         },
          //                         buttonName: 'Filter nach Art'),
          //                     const SizedBox(width: 20),
          //                     FilterButton(
          //                         activeColor: state.filterButtons[1] == true
          //                             ? kColorTopupRed
          //                             : kColorWhite,
          //                         onpress: () {
          //                           FilterButtonList.changeFilterButton(1);
          //                           BlocProvider.of<FilterBloc>(context)
          //                               .add(FilterMenuEventPattern());
          //                         },
          //                         buttonName: 'Filter nach Patterns'),
          //                     const SizedBox(
          //                       width: 20,
          //                     ),
          //                     FilterButton(
          //                         activeColor: state.filterButtons[2] == true
          //                             ? kColorTopupRed
          //                             : kColorWhite,
          //                         onpress: () {
          //                           FilterButtonList.changeFilterButton(2);
          //                           BlocProvider.of<FilterBloc>(context)
          //                               .add(FilterMenuEventElement());
          //                         },
          //                         buttonName: 'Filter nach Elements'),
          //                   ],
          //                 ),
          //                 const SizedBox(
          //                   height: 20,
          //                 ),
          //                 Row(
          //                   children: const [
          //                     SortButton(buttonName: 'Sortiert nach Projekten'),
          //                     SizedBox(width: 20),
          //                     SortButton(buttonName: 'Sortiert nach Screens'),
          //                   ],
          //                 ),
          //                 const SizedBox(
          //                   height: 20,
          //                 ),
          //                 SizedBox(height: 680, width: 800, child: Projects()),
          //               ],
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // );
        }));
  }
}
