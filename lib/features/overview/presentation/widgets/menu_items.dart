import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/enums.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';

mixin MenuItems {
  static List<String> elementHeaders = [];
  static List<String> patternHeaders = [];

  static void getHeadersAndItems() {
    elementHeaders = EnumToString.toList(ElementHeader.values);
    patternHeaders = EnumToString.toList(PatternHeaders.values);
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
                          itemCount:
                              //BuildPatternLists.globalItemList[i].length
                              //  as int?,
                              state.globalItemList[i].length as int?,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  print(BuildPatternLists.globalItemList[i]
                                      [index]);
                                },
                                child: Text(
                                    //  BuildPatternLists.globalItemList[i][index]
                                    //    .toString(),
                                    state.globalItemList[i][index].toString()));
                          },
                        ),
                      ])
                ],
              );
            });
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}
