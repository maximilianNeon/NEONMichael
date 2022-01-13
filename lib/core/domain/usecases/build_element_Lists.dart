import 'package:enum_to_string/enum_to_string.dart';
import 'package:neon_web/core/enum/enums.dart';

mixin BuildElementLists {
  static final barList = List<Elements>.from(Elements.values
      .where((element) => element.header == ElementHeader.BarElements));

  static final overlayList = List<Elements>.from(Elements
      .values
      .where((element) => element.header == ElementHeader.OverlayElements));

  static final controlList = List<Elements>.from(Elements
      .values
      .where((element) => element.header == ElementHeader.ControlElements));

  static final viewList = List<Elements>.from(Elements
      .values
      .where((element) => element.header == ElementHeader.ViewElements));

  static final imageList = List<Elements>.from(Elements
      .values
      .where((element) => element.header == ElementHeader.ImageElements));

  static final headLineList = (ElementHeader.values);

  static final List<List<Elements>> globalItemList = [
    barList,
    overlayList,
    controlList,
    viewList,
    imageList
  ];
}
