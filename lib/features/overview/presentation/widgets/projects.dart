import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/detail_screen.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        if (state is FilterMenuState) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: state.chosenProjectByItem.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.chosenProjectByItem[index].title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    textDirection: TextDirection.ltr,
                    children: [
                      SizedBox(
                        height: 280,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              state.chosenProjectByItem[index].assets.length,
                          itemBuilder: (context, i) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push<dynamic>(context,
                                          MaterialPageRoute<dynamic>(
                                              builder: (context) {
                                        return DetailScreen(
                                            index: state
                                                .chosenProjectByItem[index]
                                                .assets[i]
                                                .id);
                                      }));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: kColorBlue,
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        width: 150,
                                        height: 250,
                                        child: Image.network(
                                          state.chosenProjectByItem[index]
                                              .assets[i].imageUrl,
                                          width: 150,
                                          height: 200,
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // )
                ],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
