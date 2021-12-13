import 'package:enum_to_string/enum_to_string.dart';
import 'package:neon_web/core/enums.dart';

mixin MenuHelpers {
  static List<String> elementHeaders = [];
  static List<String> patternHeaders = [];
  static List<String> typeHeaders = [];

  static void getMenuHeaders() {
    elementHeaders = EnumToString.toList(ElementHeader.values);
    patternHeaders = EnumToString.toList(PatternHeaders.values);
    typeHeaders = EnumToString.toList(ProjectType.values);
  }
}
