// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i4;
import 'features/overview/domain/repository/project_repository.dart' as _i3;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i5;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i7;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ProjectRepository>(() => _i4.ProjectRepositoryImpl());
  gh.lazySingleton<_i5.LoadProjectData>(() =>
      _i5.LoadProjectData(projectRepository: get<_i3.ProjectRepository>()));
  gh.singleton<_i6.LoadRemoteDataBloc>(
      _i6.LoadRemoteDataBloc(get<_i5.LoadProjectData>()));
  gh.factory<_i7.FilterBloc>(
      () => _i7.FilterBloc(loadRemoteDataBloc: get<_i6.LoadRemoteDataBloc>()));
  return get;
}
