import 'dart:html';

import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/enums.dart';

mixin BuildElementLists {
  static final overlay = Overlay(overlayElements: OverlayElements.values);

  static final control = Control(controlElements: ControlElements.values);

  static final view = View(viewElements: ViewElements.values);

  static final image = Image(imageElements: ImageElements.values);

  static List<Object> globalItemList = [overlay, control, view, image];
}
