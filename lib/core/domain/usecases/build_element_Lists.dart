import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/enums.dart';

mixin BuildElementLists {
  static final overlay =
      Overlay(overlayElements: OverlayElements.values.toList());

  static final control =
      Control(controlElements: ControlElements.values.toList());

  static final view = View(viewElements: ViewElements.values.toList());

  static final image = Image(imageElements: ImageElements.values.toList());

  static List<Object> globalItemList = [overlay, control, view, image];
}
