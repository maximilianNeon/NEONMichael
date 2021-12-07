import 'package:enum_to_string/enum_to_string.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/enums.dart';

mixin BuildElementLists {
//  static final List<BarElements> bar = BarElements.values.toList();

  static final barList = EnumToString.toList(BarElements.values);

  // static final List<OverlayElements> overlay = OverlayElements.values.toList();

  static final overlayList = EnumToString.toList(OverlayElements.values);

  // static final List<ControlElements> control = ControlElements.values.toList();

  static final controlList = EnumToString.toList(ControlElements.values);

  // static final List<ViewElements> view = ViewElements.values.toList();

  static final viewList = EnumToString.toList(ViewElements.values);

//  static final List<ImageElements> image = ImageElements.values.toList();

  static final imageList = EnumToString.toList(ImageElements.values);

  static final List globalItemList = <List<String>>[
    barList,
    overlayList,
    controlList,
    viewList,
    imageList
  ];
}
