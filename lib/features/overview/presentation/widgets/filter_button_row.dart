import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/features/overview/presentation/widgets/filter_button.dart';
import 'package:neon_web/export_core_files.dart';

class FilterButtonRow extends StatelessWidget {
  const FilterButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FilterButtonBloc bloc = BlocProvider.of<FilterButtonBloc>(context);
    return BlocBuilder<FilterButtonBloc, FilterButtonState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            FilterButton(
                activeColor: state.maybeMap(
                    typeFilterState: (_) => kColorTopupRed,
                    orElse: () => kColorWhite),
                onpress: () {
                  state.maybeMap(
                      typeFilterState: (_) =>
                          bloc.add(FilterButtonEvent.turnOffFilter()),
                      orElse: () => bloc.add(
                          const FilterButtonEvent.filterButtonEventType()));
                },
                buttonName: 'Filter nach Art'),
            const SizedBox(width: 20),
            FilterButton(
                activeColor: state.maybeMap(
                    patternFilterState: (_) => kColorTopupRed,
                    orElse: () => kColorWhite),
                onpress: () {
                  state.maybeMap(
                      patternFilterState: (_) =>
                          bloc.add(FilterButtonEvent.turnOffFilter()),
                      orElse: () => bloc.add(
                          const FilterButtonEvent.filterButtonEventPattern()));
                },
                buttonName: 'Filter nach Patterns'),
            const SizedBox(
              width: 20,
            ),
            FilterButton(
                activeColor: state.maybeMap(
                    elementFilterState: (_) => kColorTopupRed,
                    orElse: () => kColorWhite),
                onpress: () {
                 state.maybeMap(
                      elementFilterState: (_) =>
                          bloc.add(FilterButtonEvent.turnOffFilter()),
                      orElse: () => bloc.add(
                          const FilterButtonEvent.filterButtonEventElement()));
                },
                buttonName: 'Filter nach Elements')
          ],
        );
      },
    );
  }
}
