import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';

class MenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
      return state.map(
          initial: (_) => const Text(''),
          filterMenuState: (state) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: state.headers.length,
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
                              state.headers[i].toString(),
                              style: kMenuItem.copyWith(
                                  fontWeight: FontWeight.w700),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.globalItemList[i].length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      final chosenItem =
                                          state.globalItemList[i][index];
                                      BlocProvider.of<FilterBloc>(context).add(
                                          FilterButtonEvent.filterButtonEventProject(
                                              filterItem: chosenItem));
                                    },
                                    child: Text(
                                      state.globalItemList[i][index],
                                      style: kMenuItem,
                                    ));
                              },
                            ),
                          ])
                    ],
                  );
                });
          });
    });
  }
}
