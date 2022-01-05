import 'package:flutter/material.dart';
import 'package:neon_web/core/web_app.dart';
// ignore: always_use_package_imports
import 'injection_container.dart' as injection;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injection.configureDependencies();
  runApp(WebApp());
  
}
