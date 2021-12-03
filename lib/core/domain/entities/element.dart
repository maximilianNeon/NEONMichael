import 'package:neon_web/core/enums.dart';

abstract class Elements {
  final List<OverlayElements> overlayElements;
  final List<ControlElements> controlElements;
  final List<ViewElements> viewElements;
  final List<ImageElements> imageElements;

  Elements(
      {required this.overlayElements,
      required this.controlElements,
      required this.viewElements,
      required this.imageElements});
}
