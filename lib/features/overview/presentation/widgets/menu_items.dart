import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/domain/usecases/build_type_lists.dart';
import 'package:neon_web/core/enums.dart';
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
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.globalItemList[i].length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  final chosenItem =
                                      state.globalItemList[i][index];
                                  print(chosenItem);
                                  final projectsToShow =
                                      Projects.chooseListItemForPatterns(
                                          chosenItem);
                                  print(projectsToShow[0]);
                                },
                                child: Text(state.globalItemList[i][index]));
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
