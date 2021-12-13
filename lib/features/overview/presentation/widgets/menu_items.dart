import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/widgets/projects.dart';

mixin MenuItems {
  static List<String> elementHeaders = [];
  static List<String> patternHeaders = [];
  static List<String> typeHeaders = [];

  static void getHeadersAndItems() {
    elementHeaders = EnumToString.toList(ElementHeader.values);
    patternHeaders = EnumToString.toList(PatternHeaders.values);
    typeHeaders = EnumToString.toList(ProjectType.values);
  }

  static Widget getMenu() {
    getHeadersAndItems();
    return BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
      if (state is FilterMenuState) {
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
                          style:
                              kMenuItem.copyWith(fontWeight: FontWeight.w700),
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
                                      FilterProjectEvent(
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
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
