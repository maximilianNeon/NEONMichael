import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';

@lazySingleton 
class FilterDataByElement extends UseCaseInternal<List<ProjectEntity>, ElementFilterParams> {
  @override

  List<ProjectEntity> call({required ElementFilterParams params }) {
    return params.projectEntityList.where((project) {
      final assetIndex = project.assets.indexWhere((asset) {
        final elementIndex = asset.elements.indexWhere((element) {
          final itemIndex =
              element.item.toString().contains(params.elemtentFilter);
          return itemIndex;
        });
        return elementIndex >= 0;
      });
      return assetIndex >= 0;
    }).toList();
  }
}

class ElementFilterParams extends Equatable {
  final List<ProjectEntity> projectEntityList;
  final String elemtentFilter;

  ElementFilterParams({required this.elemtentFilter, required this.projectEntityList});

  @override
  List<Object?> get props => [elemtentFilter, projectEntityList];
}
