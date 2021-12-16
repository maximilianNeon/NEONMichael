

import 'package:neon_web/features/overview/data/dataresources/project_helpers.dart';

abstract class ProjectRemoteDataSource {
  List loadUnsortedAndUnfilteredProjectData();
}

class ProjectRemoteDataSourceImpl extends ProjectRemoteDataSource{
  
  @override
  List loadUnsortedAndUnfilteredProjectData() {
    
    return ProjectHelpers.mockProjects1;
  }

}