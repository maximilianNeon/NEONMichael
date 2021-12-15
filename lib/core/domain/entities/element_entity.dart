import 'package:neon_web/core/enums.dart';

class ElementEntity {
  final String? header;
  // final List elementList;
  final Object item;
  ElementEntity({this.header, required this.item});
}

class Overlay extends ElementEntity {
  Overlay({final String? header})
      : super(
            // elementList: overlayElements,
            header: header,
            item: OverlayElements);
}

class Control extends ElementEntity {
  Control({final String? header})
      : super(
            // elementList: controlElements,
            header: header,
            item: ControlElements);
}

class View extends ElementEntity {
  View({final String? header}) : super(header: header, item: ViewElements);
}

class ImageElement extends ElementEntity {
  ImageElement({final String? header})
      : super(header: header, item: ImageElements);
}
