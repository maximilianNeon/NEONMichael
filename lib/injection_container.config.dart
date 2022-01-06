// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/editing/presentation/bloc/project_editing_bloc.dart' as _i7;
import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i9;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i11;
import 'features/overview/domain/repository/project_repository.dart' as _i10;
import 'features/overview/domain/usecases/filter_by_projectname.dart' as _i6;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i12;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i3;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i4;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i5;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i15;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i16;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i13;
import 'features/overview/presentation/blocs/project_filter_bloc.dart' as _i8;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.FilterDataByElement>(() => _i3.FilterDataByElement());
  gh.lazySingleton<_i4.FilterDataByPattern>(() => _i4.FilterDataByPattern());
  gh.lazySingleton<_i5.FilterDataByType>(() => _i5.FilterDataByType());
  gh.lazySingleton<_i6.FilterProjectByTitle>(() => _i6.FilterProjectByTitle());
  gh.lazySingleton<_i7.ProjectEditingBloc>(() => _i7.ProjectEditingBloc());
  gh.singleton<_i8.ProjectFilterBloc>(_i8.ProjectFilterBloc(
      filterProjectByTitle: get<_i6.FilterProjectByTitle>()));
  gh.lazySingleton<_i9.ProjectRemoteDataSource>(
      () => _i9.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i10.ProjectRepository>(() => _i11.ProjectRepositoryImpl());
  gh.lazySingleton<_i12.LoadProjectData>(() =>
      _i12.LoadProjectData(projectRepository: get<_i10.ProjectRepository>()));
  gh.singleton<_i13.LoadRemoteDataBloc>(
      _i13.LoadRemoteDataBloc(get<_i12.LoadProjectData>()));
  gh.factory<_i14.SearchDataBloc>(() =>
      _i14.SearchDataBloc(loadRemoteDataBloc: get<_i13.LoadRemoteDataBloc>()));
  gh.lazySingleton<_i15.FilterBloc>(() => _i15.FilterBloc(
      loadRemoteDataBloc: get<_i13.LoadRemoteDataBloc>(),
      filterDataByElement: get<_i3.FilterDataByElement>(),
      filterDataByPattern: get<_i4.FilterDataByPattern>(),
      filterDataByType: get<_i5.FilterDataByType>()));
  gh.singleton<_i16.FilterButtonBloc>(_i16.FilterButtonBloc(
      loadRemoteDataBloc: get<_i13.LoadRemoteDataBloc>()));
  return get;
}
