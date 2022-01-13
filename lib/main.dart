import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/data/data_sources/firebase_remote_datasource.dart';
import 'package:neon_web/core/web_app.dart';
import 'package:neon_web/features/app_blocobserver.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';
import 'injection_container.dart' as injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  injection.configureDependencies();

  //FireBaseRemoteDataSourceImpl().uploadImagesToCloudFireStorage(
  //    projectEntity: ProjectHelpers.mockProjects1.first,
  //    projectName: "project 1");
//
  // FireBaseRemoteDataSourceImpl().uploadSingleProjectToDB(
  //     collectionName: "projects",
  //     project: ProjectHelpers.mockProjects1.first.toJson());
  BlocOverrides.runZoned(() {
    runApp(WebApp());
  }, blocObserver: AppBlocObserver());
}
