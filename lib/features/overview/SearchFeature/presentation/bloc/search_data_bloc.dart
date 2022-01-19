import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/project_entity.dart';
import 'package:neon_web/features/overview/SearchFeature/domain/usecase/search_data.dart';
import 'package:neon_web/features/overview/presentation/blocs/data_bloc.dart';


part 'search_data_event.dart';
part 'search_data_state.dart';
part 'search_data_bloc.freezed.dart';

@injectable
class SearchDataBloc extends Bloc<SearchDataEvent, SearchDataState> {
  final SearchData searchData = SearchData();
 DataBloc dataBloc;

  SearchDataBloc({required this.dataBloc}) : super(_Initial()) {
    on<_SearchData>((event, emit) {
      
      emit(_Loaded(
          projectEntityList: searchData.call(
              params: Params(
                  projectEntityList: [],
                  searchText: event.searchText))));
    });
  }
}
