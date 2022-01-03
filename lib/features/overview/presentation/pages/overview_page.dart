import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/presentation%20/widgets/custom_appbar.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/features/overview/presentation/widgets/filter_button.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_items.dart';
import 'package:neon_web/features/overview/presentation/widgets/projects.dart';
import 'package:neon_web/features/overview/SearchFeature/presentation/widgets/search_bar.dart';
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

  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
        return state.map(
            initial: (_) => const Text('data'),
            filterMenuState: (state) {
              return SingleChildScrollView(
                
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(header: "NEON MOBBIN", backArrow: false, uploadIcon: true, ),
                    Padding(
                    padding: kPad16,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ConstrainedBox(
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
                              child: MenuItems(),
                            ),
                          ),
                        ),
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
                              SearchBar(
                              
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FilterButton(
                                      activeColor: state.filterButtons[0] == true
                                          ? kColorTopupRed
                                          : kColorWhite,
                                      onpress: () {
                                        FilterButtonList.changeFilterButton(0);
                                        BlocProvider.of<FilterBloc>(context).add(
                                            const FilterButtonEvent
                                                .filterButtonEventType());
                                      },
                                      buttonName: 'Filter nach Art'),
                                  const SizedBox(width: 20),
                                  FilterButton(
                                      activeColor: state.filterButtons[1] == true
                                          ? kColorTopupRed
                                          : kColorWhite,
                                      onpress: () {
                                        FilterButtonList.changeFilterButton(1);
                                        BlocProvider.of<FilterBloc>(context).add(
                                            const FilterButtonEvent
                                                .filterButtonEventPattern());
                                      },
                                      buttonName: 'Filter nach Patterns'),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  FilterButton(
                                      activeColor: state.filterButtons[2] == true
                                          ? kColorTopupRed
                                          : kColorWhite,
                                      onpress: () {
                                        FilterButtonList.changeFilterButton(2);
                                        BlocProvider.of<FilterBloc>(context).add(
                                            const FilterButtonEvent
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
                                  SortButton(buttonName: 'Sortiert nach Screens'),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Projects(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),] 
                ),
              );
            });
      }),
    );
  }
}
