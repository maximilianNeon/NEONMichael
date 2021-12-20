import 'package:neon_web/core/enums.dart';

class ElementEntity {
  final String? header;
  final Object item;
  ElementEntity({this.header, required this.item});

  @override
  String toString() {
    return '$item';
  }
}

class Overlay extends ElementEntity {
  Overlay({final String? header})
      : super(header: header, item: OverlayElements);
}

class Control extends ElementEntity {
  Control({final String? header})
      : super(header: header, item: ControlElements);
}

class View extends ElementEntity {
  View({final String? header}) : super(header: header, item: ViewElements);
}

class ImageElement extends ElementEntity {
  ImageElement({final String? header})
      : super(header: header, item: ImageElements);
}
