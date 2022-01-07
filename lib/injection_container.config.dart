// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/editing/presentation/bloc/asset_bloc.dart' as _i3;
import 'features/editing/presentation/bloc/project_editing_bloc.dart' as _i8;
import 'features/editing/presentation/bloc/upload_image_bloc.dart' as _i13;
import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i10;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i12;
import 'features/overview/domain/repository/project_repository.dart' as _i11;
import 'features/overview/domain/usecases/filter_by_projectname.dart' as _i7;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i14;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i4;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i5;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i6;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i17;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i18;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i15;
import 'features/overview/presentation/blocs/project_filter_bloc.dart' as _i9;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AssetBloc>(() => _i3.AssetBloc());
  gh.lazySingleton<_i4.FilterDataByElement>(() => _i4.FilterDataByElement());
  gh.lazySingleton<_i5.FilterDataByPattern>(() => _i5.FilterDataByPattern());
  gh.lazySingleton<_i6.FilterDataByType>(() => _i6.FilterDataByType());
  gh.lazySingleton<_i7.FilterProjectByTitle>(() => _i7.FilterProjectByTitle());
  gh.lazySingleton<_i8.ProjectEditingBloc>(() => _i8.ProjectEditingBloc());
  gh.singleton<_i9.ProjectFilterBloc>(_i9.ProjectFilterBloc(
      filterProjectByTitle: get<_i7.FilterProjectByTitle>()));
  gh.lazySingleton<_i10.ProjectRemoteDataSource>(
      () => _i10.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i11.ProjectRepository>(() => _i12.ProjectRepositoryImpl());
  gh.lazySingleton<_i13.UploadImageBloc>(() => _i13.UploadImageBloc());
  gh.lazySingleton<_i14.LoadProjectData>(() =>
      _i14.LoadProjectData(projectRepository: get<_i11.ProjectRepository>()));
  gh.singleton<_i15.LoadRemoteDataBloc>(
      _i15.LoadRemoteDataBloc(get<_i14.LoadProjectData>()));
  gh.factory<_i16.SearchDataBloc>(() =>
      _i16.SearchDataBloc(loadRemoteDataBloc: get<_i15.LoadRemoteDataBloc>()));
  gh.lazySingleton<_i17.FilterBloc>(() => _i17.FilterBloc(
      loadRemoteDataBloc: get<_i15.LoadRemoteDataBloc>(),
      filterDataByElement: get<_i4.FilterDataByElement>(),
      filterDataByPattern: get<_i5.FilterDataByPattern>(),
      filterDataByType: get<_i6.FilterDataByType>()));
  gh.singleton<_i18.FilterButtonBloc>(_i18.FilterButtonBloc(
      loadRemoteDataBloc: get<_i15.LoadRemoteDataBloc>()));
  return get;
}
