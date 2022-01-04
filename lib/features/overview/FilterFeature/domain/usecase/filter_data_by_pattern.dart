import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart';

@lazySingleton
class FilterDataByPattern extends UseCaseInternal<List<ProjectEntity>, FilterPatterParams> {
  @override
  // ignore: avoid_types_as_parameter_names
  List<ProjectEntity> call({required FilterPatterParams params}) {
    return params.projectEntityList.where((project) {
      final assetIndex = project.assets.indexWhere((asset) {
        final patternIndex = asset.patterns.indexWhere((pattern) {
          final itemIndex =
              pattern.item.toString().contains(params.patternFilter);
          return itemIndex;
        });
        return patternIndex >= 0;
      });
      return assetIndex >= 0;
    }).toList();
  }
}

class FilterPatterParams extends Equatable {
  final List<ProjectEntity> projectEntityList;
  final String patternFilter;

  FilterPatterParams({required this.patternFilter, required this.projectEntityList});

  @override
  // TODO: implement props
  List<Object?> get props => [patternFilter, projectEntityList];
}
