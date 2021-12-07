import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/enums.dart';

mixin BuildElementLists {
  
  static final List<OverlayElements> overlay = OverlayElements.values.toList();

  static final List<ControlElements> control = ControlElements.values.toList();

  static final List<ViewElements> view = ViewElements.values.toList();

  static final List<ImageElements> image = ImageElements.values.toList();

  static List<Object> globalItemList = [overlay, control, view, image];

}

