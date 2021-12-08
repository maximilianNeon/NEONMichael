import 'package:neon_web/core/enums.dart';

class ElementEntity {
  String? header;
  List elementList;
  ElementEntity({
    this.header,
    required this.elementList,
  });
}

class Overlay extends ElementEntity {
  Overlay(
      {required List<OverlayElements> overlayElements, final String? header})
      : super(elementList: overlayElements, header: header);
}

class Control extends ElementEntity {
  Control(
      {required List<ControlElements> controlElements, final String? header})
      : super(elementList: controlElements, header: header);
}

class View extends ElementEntity {
  View({required List<ViewElements> viewElements, final String? header})
      : super(elementList: viewElements, header: header);
}

class ImageElement extends ElementEntity {
  ImageElement(
      {required List<ImageElements> imageElements, final String? header})
      : super(elementList: imageElements, header: header);
}
