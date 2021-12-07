import 'package:neon_web/core/enums.dart';

abstract class ElementEntity {
  String header;
  List elementList;
  ElementEntity({
    required this.header,
    required this.elementList,
  });
}

class Overlay extends ElementEntity {
  Overlay(
      {required List<OverlayElements> overlayElements, required String header})
      : super(elementList: overlayElements, header: header);
}

class Control extends ElementEntity {
  Control(
      {required List<ControlElements> controlElements, required String header})
      : super(elementList: controlElements, header: header);
}

class View extends ElementEntity {
  View({required List<ViewElements> viewElements, required String header})
      : super(elementList: viewElements, header: header);
}

class Image extends ElementEntity {
  Image({required List<ImageElements> imageElements, required String header})
      : super(elementList: imageElements, header: header);
}
