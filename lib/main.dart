import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/web_app.dart';
import 'package:neon_web/features/blocobserver.dart';
import 'injection_container.dart' as injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  injection.configureDependencies();

  BlocOverrides.runZoned(() {}, blocObserver: SimpleBlocObserver());
  runApp(WebApp());
}
