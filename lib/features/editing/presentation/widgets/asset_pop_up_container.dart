import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/usecases/build_element_Lists.dart';
import 'package:neon_web/core/domain/usecases/build_pattern_lists.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/pattern_element_bloc.dart';

@lazySingleton
class AssetPopUpContainer extends StatelessWidget {
  final Uint8List imageFileData;

  AssetPopUpContainer({required this.imageFileData}) : super();

  @override
  Widget build(BuildContext context) {
    AssetBloc assetBloc = BlocProvider.of<AssetBloc>(context);
    PatternElementBloc patternElementBloc =
        BlocProvider.of<PatternElementBloc>(context);
    return Container(
      padding: kPaddingInsetsAll_20,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius_10,
        color: kColorWhite,
        boxShadow: kBoxShadowCardDark,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.memory(
                imageFileData,
                height: 500,
                width: 250,
                fit: BoxFit.fill,
              ),
              horizontalSpaceSmall(context: context),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BlocBuilder<PatternElementBloc, PatternElementState>(
                      builder: (context, state) => state.maybeMap(
                          element: (_) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GestureDetector(
                                    onTap: () => patternElementBloc.add(
                                        PatternElementEvent.changeToPatternView(
                                            imageFileData: imageFileData)),
                                    child: Text(
                                      "Pattern",
                                    ),
                                  ),
                                  horizontalSpaceMedium(context: context),
                                  Text("Elements",
                                      style: TextStyle(color: kColorLila))
                                ],
                              ),
                          pattern: (_) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text("Pattern",
                                      style: TextStyle(color: kColorLila)),
                                  horizontalSpaceMedium(context: context),
                                  GestureDetector(
                                    onTap: () {
                                      patternElementBloc.add(PatternElementEvent
                                          .changeToElementView(
                                              imageFileData: imageFileData));
                                    },
                                    child: Text(
                                      "Elements",
                                    ),
                                  )
                                ],
                              ),
                          orElse: () => Container()),
                    ),
                    verticalSpaceLarge(context: context),
                    BlocBuilder<PatternElementBloc, PatternElementState>(
                      builder: (context, state) => state.map(
                        element: (elementState) => Container(
                          width: UIHelper().displayWidth(context) * 0.5,
                          height: UIHelper().displayHeight(context) * 0.55,
                          color: kColorWhite,
                          child: GridView.builder(
                            itemCount: BuildElementLists.globalItemList.length,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 300,
                                    mainAxisExtent: 220,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              return Container(
                                padding: kPaddingInsetsAll_20,
                                height: 120,
                                width: 80,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        BuildElementLists.headLineList[index]
                                            .toString()
                                            .split(".")
                                            .last,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      verticalSpaceSmall(context: context),
                                      Expanded(
                                        child: ListView.builder(
                                            itemCount: BuildElementLists
                                                .globalItemList[index].length,
                                            itemBuilder:
                                                (context, i) => GestureDetector(
                                                      onTap: () {
                                                        List<ElementEntity>
                                                            elementList =
                                                            elementState
                                                                .elementEntityList;
                                                        elementList
                                                                    .where((element) =>
                                                                        element.header ==
                                                                            BuildElementLists.headLineList[index]
                                                                                .toString() &&
                                                                        element.item ==
                                                                            BuildElementLists.globalItemList[index]
                                                                                .where((item) => item.toString().contains(BuildElementLists.globalItemList[index][i]
                                                                                    .toString()))
                                                                                .toList()
                                                                                .first)
                                                                    .toList()
                                                                    .length >
                                                                0
                                                            ? patternElementBloc
                                                                .add(
                                                                PatternElementEvent
                                                                    .removeElement(
                                                                  imageFileData:
                                                                      imageFileData,
                                                                  elementEntity: ElementEntity(
                                                                      header: BuildElementLists
                                                                          .headLineList[
                                                                              index]
                                                                          .toString(),
                                                                      item: BuildElementLists
                                                                              .globalItemList[
                                                                          index][i]),
                                                                ),
                                                              )
                                                            : patternElementBloc
                                                                .add(
                                                                PatternElementEvent
                                                                    .addElement(
                                                                  imageFileData:
                                                                      imageFileData,
                                                                  elementEntity: ElementEntity(
                                                                      header: BuildElementLists
                                                                          .headLineList[
                                                                              index]
                                                                          .toString(),
                                                                      item: BuildElementLists
                                                                              .globalItemList[
                                                                          index][i]),
                                                                ),
                                                              );
                                                      },
                                                      child: Text(
                                                        BuildElementLists
                                                            .globalItemList[
                                                                index][i]
                                                            .toString()
                                                            .split(".")
                                                            .last,
                                                        style: TextStyle(
                                                            color: changeColor(
                                                                elementEntityList:
                                                                    elementState
                                                                        .elementEntityList,
                                                                headline: BuildElementLists
                                                                    .headLineList[
                                                                        index]
                                                                    .toString(),
                                                                itemList:
                                                                    BuildElementLists
                                                                            .globalItemList[
                                                                        index],
                                                                itemString: BuildElementLists
                                                                    .globalItemList[
                                                                        index]
                                                                        [i]
                                                                    .toString()
                                                                    .split(".")
                                                                    .last)),
                                                      ),
                                                    )),
                                      ),
                                    ]),
                              );
                            },
                          ),
                        ),
                        loading: (_) => CircularProgressIndicator(),
                        pattern: (patternState) => Container(
                          width: UIHelper().displayWidth(context) * 0.5,
                          height: UIHelper().displayHeight(context) * 0.55,
                          color: kColorWhite,
                          child: GridView.builder(
                            itemCount: BuildPatternLists.globalItemList.length,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 300,
                                    mainAxisExtent: 220,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              return Container(
                                padding: kPaddingInsetsAll_20,
                                height: 120,
                                width: 80,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        BuildPatternLists.headlineList[index]
                                            .toString()
                                            .split(".")
                                            .last,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      verticalSpaceSmall(context: context),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: BuildPatternLists
                                              .globalItemList[index].length,
                                          itemBuilder: (context, i) =>
                                              GestureDetector(
                                            onTap: () {
                                              List<PatternEntity> patternList =
                                                  patternState
                                                      .patternEntityList;

                                              patternList
                                                          .where((element) =>
                                                              element.header ==
                                                                  BuildPatternLists
                                                                      .headlineList[
                                                                          index]
                                                                      .toString() &&
                                                              element.item ==
                                                                  BuildPatternLists
                                                                      .globalItemList[
                                                                          index]
                                                                      .where((item) => item
                                                                          .toString()
                                                                          .contains(BuildPatternLists
                                                                              .globalItemList[index][i]
                                                                              .toString()))
                                                                      .toList()
                                                                      .first)
                                                          .toList()
                                                          .length >
                                                      0
                                                  ? patternElementBloc.add(
                                                      PatternElementEvent
                                                          .removePattern(
                                                        imageFileData:
                                                            imageFileData,
                                                        patternEntity: PatternEntity(
                                                            header:
                                                                BuildPatternLists
                                                                    .headlineList[
                                                                        index]
                                                                    .toString(),
                                                            item: BuildPatternLists
                                                                    .globalItemList[
                                                                index][i]),
                                                      ),
                                                    )
                                                  : patternElementBloc.add(
                                                      PatternElementEvent
                                                          .addPattern(
                                                        imageFileData:
                                                            imageFileData,
                                                        patternEntity: PatternEntity(
                                                            header:
                                                                BuildPatternLists
                                                                    .headlineList[
                                                                        index]
                                                                    .toString(),
                                                            item: BuildPatternLists
                                                                    .globalItemList[
                                                                index][i]),
                                                      ),
                                                    );
                                            },
                                            child: Text(
                                              BuildPatternLists
                                                  .globalItemList[index][i]
                                                  .toString()
                                                  .split(".")
                                                  .last,
                                              style: TextStyle(
                                                  color: changeColor(
                                                      elementEntityList:
                                                          patternState
                                                              .patternEntityList,
                                                      headline:
                                                          BuildPatternLists
                                                              .headlineList[
                                                                  index]
                                                              .toString(),
                                                      itemList: BuildPatternLists
                                                              .globalItemList[
                                                          index],
                                                      itemString:
                                                          BuildPatternLists
                                                              .globalItemList[
                                                                  index][i]
                                                              .toString()
                                                              .split(".")
                                                              .last)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: UIHelper().verticalSpaceSmall(context),
          ),
          GestureDetector(
            onTap: () {
              patternElementBloc.state.map(
                  pattern: (state) => assetBloc.add(
                        AssetEvent.addElementsAndPattern(
                            patternEntityList: state.patternEntityList,
                            elementEntityList: state.elementEntityList,
                            assetEntityId: state.id),
                      ),
                  loading: (_) => null,
                  element: (state) => assetBloc.add(
                        AssetEvent.addElementsAndPattern(
                            patternEntityList: state.patternEntityList,
                            elementEntityList: state.elementEntityList,
                            assetEntityId: state.id),
                      ));
              patternElementBloc.add(PatternElementEvent.resetBloc());
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: kColorLila, borderRadius: kBorderRadius_10),
              child: Center(
                child: Text(
                  "Hinzufügen",
                  style: TextStyle(color: kColorWhite),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Color changeColor({
    required List elementEntityList,
    required String headline,
    required List itemList,
    required String itemString,
  }) {
    return elementEntityList
                .where((element) =>
                    element.header == headline &&
                    element.item ==
                        itemList
                            .where((item) => item
                                .toString()
                                .split(".")
                                .last
                                .contains(itemString))
                            .toList()
                            .first)
                .toList()
                .length >
            0
        ? kColorLila
        : kColorBlack;
  }
}
