// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/data_sources/firebase_remote_datasource.dart' as _i11;
import 'core/domain/entities/asset_entity.dart' as _i3;
import 'core/domain/entities/element_entity.dart' as _i5;
import 'core/domain/entities/pattern_entity.dart' as _i4;
import 'core/domain/entities/project_entity.dart' as _i14;
import 'features/authentication/data/data_sources/remote_authentication_data_source.dart'
    as _i19;
import 'features/authentication/data/repositories/auth_repository_impl.dart'
    as _i25;
import 'features/authentication/domain/repositories/auth_repository.dart'
    as _i24;
import 'features/authentication/domain/usecase/login.dart' as _i28;
import 'features/authentication/presentation/bloc/authentification_bloc.dart'
    as _i31;
import 'features/authentication/presentation/pages/login_page.dart' as _i12;
import 'features/editing/presentation/bloc/asset_bloc.dart' as _i23;
import 'features/editing/presentation/bloc/pattern_element_bloc.dart' as _i13;
import 'features/editing/presentation/bloc/project_editing_bloc.dart' as _i29;
import 'features/editing/presentation/bloc/upload_image_bloc.dart' as _i22;
import 'features/editing/presentation/widgets/asset_pop_up_container.dart'
    as _i6;
import 'features/editing/presentation/widgets/screen_upload_container.dart'
    as _i20;
import 'features/editing/presentation/widgets/screen_upload_item.dart' as _i21;
import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i16;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i18;
import 'features/overview/domain/repository/project_repository.dart' as _i17;
import 'features/overview/domain/usecases/filter_by_projectname.dart' as _i10;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i26;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i7;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i8;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i9;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i32;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i33;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i27;
import 'features/overview/presentation/blocs/project_filter_bloc.dart' as _i15;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AssetEntity>(() => _i3.AssetEntity(
      imageUrl: get<String>(),
      title: get<String>(),
      id: get<int>(),
      patterns: get<List<_i4.PatternEntity>>(),
      elements: get<List<_i5.ElementEntity>>()));
  gh.lazySingleton<_i6.AssetPopUpContainer>(
      () => _i6.AssetPopUpContainer(imageUrl: get<String>()));
  gh.factory<_i5.ElementEntity>(
      () => _i5.ElementEntity(header: get<String>(), item: get<Object>()));
  gh.lazySingleton<_i7.FilterDataByElement>(() => _i7.FilterDataByElement());
  gh.lazySingleton<_i8.FilterDataByPattern>(() => _i8.FilterDataByPattern());
  gh.lazySingleton<_i9.FilterDataByType>(() => _i9.FilterDataByType());
  gh.lazySingleton<_i10.FilterProjectByTitle>(
      () => _i10.FilterProjectByTitle());
  gh.factory<_i11.FireBaseRemoteDataSourceImpl>(
      () => _i11.FireBaseRemoteDataSourceImpl());
  gh.factory<_i12.LoginPage>(() => _i12.LoginPage());
  gh.lazySingleton<_i13.PatternElementBloc>(() => _i13.PatternElementBloc());
  gh.factory<_i4.PatternEntity>(
      () => _i4.PatternEntity(item: get<Object>(), header: get<String>()));
  gh.factory<_i14.ProjectEntity>(() => _i14.ProjectEntity(
      title: get<String>(),
      projectType: get<String>(),
      description: get<String>(),
      assets: get<List<_i3.AssetEntity>>(),
      imageUrl: get<String>()));
  gh.singleton<_i15.ProjectFilterBloc>(_i15.ProjectFilterBloc(
      filterProjectByTitle: get<_i10.FilterProjectByTitle>()));
  gh.lazySingleton<_i16.ProjectRemoteDataSource>(
      () => _i16.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i17.ProjectRepository>(() => _i18.ProjectRepositoryImpl());
  gh.factory<_i19.RemoteAuthenticationDataSourceImpl>(() =>
      _i19.RemoteAuthenticationDataSourceImpl(
          get<_i11.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i20.ScreenUploadContainer>(() => _i20.ScreenUploadContainer());
  gh.factory<_i21.ScreenUploadItem>(() => _i21.ScreenUploadItem(
      assetEntity: get<_i3.AssetEntity>(), imageUrl: get<String>()));
  gh.lazySingleton<_i22.UploadImageBloc>(() => _i22.UploadImageBloc());
  gh.lazySingleton<_i23.AssetBloc>(
      () => _i23.AssetBloc(patternElementBloc: get<_i13.PatternElementBloc>()));
  gh.factory<_i24.AuthRepository>(() => _i25.AuthRepositoryImpl(
      authRemoteDataSource: get<_i19.RemoteAuthenticationDataSourceImpl>()));
  gh.lazySingleton<_i26.LoadProjectData>(() =>
      _i26.LoadProjectData(projectRepository: get<_i17.ProjectRepository>()));
  gh.singleton<_i27.LoadRemoteDataBloc>(
      _i27.LoadRemoteDataBloc(get<_i26.LoadProjectData>()));
  gh.factory<_i28.Login>(
      () => _i28.Login(authRepository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i29.ProjectEditingBloc>(
      () => _i29.ProjectEditingBloc(assetBloc: get<_i23.AssetBloc>()));
  gh.factory<_i30.SearchDataBloc>(() =>
      _i30.SearchDataBloc(loadRemoteDataBloc: get<_i27.LoadRemoteDataBloc>()));
  gh.lazySingleton<_i31.AuthentificationBloc>(
      () => _i31.AuthentificationBloc(login: get<_i28.Login>()));
  gh.lazySingleton<_i32.FilterBloc>(() => _i32.FilterBloc(
      loadRemoteDataBloc: get<_i27.LoadRemoteDataBloc>(),
      filterDataByElement: get<_i7.FilterDataByElement>(),
      filterDataByPattern: get<_i8.FilterDataByPattern>(),
      filterDataByType: get<_i9.FilterDataByType>()));
  gh.singleton<_i33.FilterButtonBloc>(_i33.FilterButtonBloc(
      loadRemoteDataBloc: get<_i27.LoadRemoteDataBloc>()));
  return get;
}
