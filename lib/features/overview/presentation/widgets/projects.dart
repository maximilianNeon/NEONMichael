import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/features/details/presentation/detail_screen.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const CircularProgressIndicator(),
            filterMenuState: (state) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
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
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight: 200,
                            maxWidth: double.infinity,
                            minHeight: 50,
                            minWidth: 50),
                        child: Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            alignment: Alignment.topLeft,
                            //color: Colors.red,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: state
                                    .chosenProjectByItem[index].assets.length,
                                itemBuilder: (context, i) {
                                  return GestureDetector(
                                      onTap: () {
                                        Navigator.push<dynamic>(
                                          context,
                                          MaterialPageRoute<dynamic>(
                                            builder: (context) {
                                              return DetailScreen(
                                                  project:
                                                      state.chosenProjectByItem[
                                                          index],
                                                  index: state
                                                      .chosenProjectByItem[
                                                          index]
                                                      .assets[i]
                                                      .id);
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            color: kColorBlue,
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        width: 150,
                                        height: 250,
                                        child: Hero(
                                          tag: state.chosenProjectByItem[index]
                                              .assets[i].id
                                              .toString(),
                                          child: Image.network(
                                            state.chosenProjectByItem[index]
                                                .assets[i].imageUrl,
                                            width: 150,
                                            height: 200,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ));
                                }),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            });
      },
    );
  }
}
