import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/domain/usecases/build_element_Lists.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/editing/presentation/bloc/pattern_element_bloc.dart';

class AssetPopUpContainer extends StatelessWidget {
  String imageUrl;

  AssetPopUpContainer({required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PatternElementBloc patternElementBloc =
        BlocProvider.of<PatternElementBloc>(context);
    return Container(
      height: 600,
      width: 900,
      color: Colors.grey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.network(
            imageUrl,
            height: 500,
            width: 250,
            fit: BoxFit.fill,
          ),
          SizedBox(width: UIHelper().horizontalSpaceSmall(context)),
          Container(
            height: 500,
            width: 500,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocBuilder<PatternElementBloc, PatternElementState>(
                  builder: (context, state) => state.maybeMap(
                      element: (_) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GestureDetector(
                                onTap: () => patternElementBloc.add(
                                    PatternElementEvent.changeToPatternView(
                                        imageUrl: imageUrl)),
                                child: Text(
                                  "Pattern",
                                ),
                              ),
                              Text("Elements",
                                  style: TextStyle(color: kColorPink))
                            ],
                          ),
                      pattern: (_) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text("Pattern",
                                  style: TextStyle(color: kColorPink)),
                              GestureDetector(
                                onTap: () {
                                  patternElementBloc.add(
                                      PatternElementEvent.changeToElementView(
                                          imageUrl: imageUrl));
                                },
                                child: Text(
                                  "Elements",
                                ),
                              )
                            ],
                          ),
                      orElse: () => Container()),
                ),
                SizedBox(
                  height: UIHelper().verticalSpaceSmall(context),
                ),
                BlocBuilder<PatternElementBloc, PatternElementState>(
                  builder: (context, state) => state.map(
                      element: (_) => Container(
                            width: 500,
                            height: 400,
                            color: Colors.green,
                            child: GridView.builder(
                              itemCount:
                                  BuildElementLists.globalItemList.length,
                              gridDelegate:
                                  SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 200, mainAxisExtent: 200, mainAxisSpacing: 10 , crossAxisSpacing: 10),
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 100,
                                  width: 80,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                    Text(BuildElementLists.headLineList[index], style: TextStyle(fontWeight: FontWeight.bold),),
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: BuildElementLists
                                              .globalItemList[index].length,
                                          itemBuilder: (context, i) => GestureDetector(
                                            onTap: (){
                                              
                                            },
                                            child: Text(BuildElementLists
                                                    .globalItemList[index][i]),
                                          )),
                                    ),
                                  ]),
                                );
                              },
                            ),
                          ),
                      initial: (_) => Container(),
                      pattern: (_) => Container()),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
