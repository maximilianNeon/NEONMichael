import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/style/style.dart';

class ScreenUploadInput extends StatelessWidget {
  final String inputHeader;
  final bool isPattern;
  final List<PatternEntity> patternEntityList;
  final List<ElementEntity> elementEntityList;

  const ScreenUploadInput(
      {required this.patternEntityList,
      required this.elementEntityList,
      required this.inputHeader,
      required this.isPattern,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(inputHeader),
          verticalSpaceSmall(context: context),
          Container(
            width: 150,
            height: 50,
            child: GridView.builder(
              itemCount: isPattern ? patternEntityList.length : elementEntityList.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100, mainAxisExtent: 20),
              itemBuilder: (context, index) => Text( isPattern ? patternEntityList.elementAt(index).item.toString().split(".").last : elementEntityList.elementAt(index).item.toString().split(".").last
                ,
                style: TextStyle(fontSize: 12, color: kColorLila),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
