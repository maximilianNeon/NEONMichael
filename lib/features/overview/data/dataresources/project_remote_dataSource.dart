import 'package:injectable/injectable.dart';
import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';

abstract class ProjectRemoteDataSource {
  List loadUnsortedAndUnfilteredProjectData();
}

@LazySingleton(as: ProjectRemoteDataSource)
class ProjectRemoteDataSourceImpl extends ProjectRemoteDataSource {
  @override
  List loadUnsortedAndUnfilteredProjectData() {
    return ProjectHelpers.mockProjects1;
  }
}
