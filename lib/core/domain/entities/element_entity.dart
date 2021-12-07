import 'package:neon_web/core/enums.dart';

abstract class ElementEntity {
  List elementList;
  ElementEntity({
    required this.elementList,
  });
}

class Overlay extends ElementEntity {
  Overlay({required List<OverlayElements> overlayElements})
      : super(elementList: overlayElements);
}

class Control extends ElementEntity {
  Control({required List<ControlElements> controlElements})
      : super(elementList: controlElements);
}

class View extends ElementEntity {
  View({required List<ViewElements> viewElements})
      : super(elementList: viewElements);
}

class Image extends ElementEntity {
  Image({required List<ImageElements> imageElements})
      : super(elementList: imageElements);
}
