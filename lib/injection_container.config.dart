// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i6;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i8;
import 'features/overview/domain/repository/project_repository.dart' as _i7;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i9;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i3;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i4;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i5;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i12;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i13;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i10;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.FilterDataByElement>(() => _i3.FilterDataByElement());
  gh.lazySingleton<_i4.FilterDataByPattern>(() => _i4.FilterDataByPattern());
  gh.lazySingleton<_i5.FilterDataByType>(() => _i5.FilterDataByType());
  gh.lazySingleton<_i6.ProjectRemoteDataSource>(
      () => _i6.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i7.ProjectRepository>(() => _i8.ProjectRepositoryImpl());
  gh.lazySingleton<_i9.LoadProjectData>(() =>
      _i9.LoadProjectData(projectRepository: get<_i7.ProjectRepository>()));
  gh.singleton<_i10.LoadRemoteDataBloc>(
      _i10.LoadRemoteDataBloc(get<_i9.LoadProjectData>()));
  gh.factory<_i11.SearchDataBloc>(() =>
      _i11.SearchDataBloc(loadRemoteDataBloc: get<_i10.LoadRemoteDataBloc>()));
  gh.lazySingleton<_i12.FilterBloc>(() => _i12.FilterBloc(
      loadRemoteDataBloc: get<_i10.LoadRemoteDataBloc>(),
      filterDataByElement: get<_i3.FilterDataByElement>(),
      filterDataByPattern: get<_i4.FilterDataByPattern>(),
      filterDataByType: get<_i5.FilterDataByType>()));
  gh.singleton<_i13.FilterButtonBloc>(_i13.FilterButtonBloc(
      loadRemoteDataBloc: get<_i10.LoadRemoteDataBloc>()));
  return get;
}
