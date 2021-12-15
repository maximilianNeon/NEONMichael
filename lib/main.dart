import 'package:flutter/material.dart';
import 'package:neon_web/core/web_app.dart';
import 'injection_container.dart' as injection;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injection.configureDependencies();
  runApp(WebApp());
}
