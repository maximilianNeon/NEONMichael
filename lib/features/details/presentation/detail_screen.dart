import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/style/constants.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
  final int index;
  final ProjectEntity project;
  const DetailScreen({
    Key? key,
    required this.project,
    required this.index,
  }) : super(key: key);
}

class _DetailScreenState extends State<DetailScreen> {
  List<List<PatternEntity>> getListOfPatterns() {
    List<List<PatternEntity>> patterns = [];
    for (var pattern in widget.project.assets) {
      patterns.add(pattern.patterns);
    }
    return patterns;
  }

  List<List<ElementEntity>> getListOfElements() {
    List<List<ElementEntity>> elements = [];
    for (var element in widget.project.assets) {
      elements.add(element.elements);
    }
    return elements;
  }

  List<Text> showPatterns() {
    final patterns = getListOfPatterns();
    List<Text> newPatternList = [];
    for (int i = 0; i < patterns.length; i++) {
      for (List<PatternEntity> item in patterns) {
        newPatternList.add(Text(EnumToString.convertToString(item[i].item)));
      }
      return newPatternList;
    }
    return newPatternList;
  }

  List<Text> showElements() {
    final elements = getListOfElements();
    List<Text> newElementList = [];
    for (int i = 0; i < elements.length; i++) {
      for (List<ElementEntity> item in elements) {
        newElementList.add(Text(EnumToString.convertToString(item[i].item)));
      }
      return newElementList;
    }
    return newElementList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kColorWhite,
          shape: Border.all(color: kColorDarkBlue),
          title: const Text(
            'Neon Mobbin',
            style: TextStyle(color: kColorBlack),
          ),
          centerTitle: true,
          titleSpacing: 1,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SizedBox(
                    width: 200,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Projekt',
                              style: kBold,
                            ),
                            Text(widget.project.title)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Patterns',
                              style: kBold,
                            ),
                            ListView(
                                shrinkWrap: true, children: showPatterns()),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Elements',
                              style: kBold,
                            ),
                            ListView(
                              shrinkWrap: true,
                              children: showElements(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                SizedBox(
                    width: 200,
                    height: 400,
                    child: Hero(
                      tag: widget.index.toString(),
                      child: Image.network(
                        'https://picsum.photos/200/300',
                        fit: BoxFit.cover,
                      ),
                    ))
              ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: kPad16,
                  child: Container(
                    child: Text(widget.project.description),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
