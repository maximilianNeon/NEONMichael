import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/features/overview/presentation/blocs/load_remote_data_bloc.dart';
import '../../domain/usecase/filter_data_by_element.dart';
import '../../domain/usecase/filter_data_by_pattern.dart';
import '../../domain/usecase/filter_data_by_type.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

@lazySingleton
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final LoadRemoteDataBloc loadRemoteDataBloc;
  final FilterDataByElement filterDataByElement;
  final FilterDataByPattern filterDataByPattern;
  final FilterDataByType filterDataByType;

  FilterBloc(
      {required this.loadRemoteDataBloc,
      required this.filterDataByElement,
      required this.filterDataByPattern,
      required this.filterDataByType})
      : super(_EmptyFilterState()) {
    on<_ElementFilterEvent>(
      (event, emit) => emit(
        _ElementFilterState(
          actitvatedFilter: event.filter,
          filteredByElements: filterDataByElement.call(
            params: ElementFilterParams(
              elemtentFilter: event.filter,
              projectEntityList: event.projectEntityList,
            ),
          ),
        ),
      ),
    );

    on<_PatternFilterEvent>((event, emit) {
      
      final result = filterDataByPattern.call(
        params: FilterPatterParams(
            patternFilter: event.filter,
            projectEntityList: event.projectEntityList),
      );

      print(result);

      emit(_PatternFilterState(
          actitvatedFilter: event.filter, filteredByPatternList: result));
    });

    on<_TypeFilterEvent>(
      (event, emit) => emit(
        _TypeFilterState(
          actitvatedFilter: event.filter,
          filterdByTypeList: filterDataByType.call(
            params: TypeFilterParams(
                typeFilter: event.filter,
                projectEntityList: event.projectEntityList),
          ),
        ),
      ),
    );

    on<_ResetFilterEvent>(
      (event, emit) => emit(
        _EmptyFilterState(),
      ),
    );
  }
}
