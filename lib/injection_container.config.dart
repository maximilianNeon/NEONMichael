// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:typed_data' as _i7;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/data_sources/firebase_remote_datasource.dart' as _i15;
import 'core/data/repository/remote_data_source_impl.dart' as _i24;
import 'core/domain/entities/asset_entity.dart' as _i3;
import 'core/domain/entities/data_container.dart' as _i8;
import 'core/domain/entities/element_entity.dart' as _i5;
import 'core/domain/entities/pattern_entity.dart' as _i4;
import 'core/domain/entities/project_entity.dart' as _i9;
import 'core/domain/repository/remote_data_source.dart' as _i23;
import 'core/domain/usecases/download_project_data.dart' as _i32;
import 'core/domain/usecases/upload_single_project.dart' as _i28;
import 'core/enum/enums.dart' as _i10;
import 'features/authentication/data/data_sources/remote_authentication_data_source.dart'
    as _i22;
import 'features/authentication/data/repositories/auth_repository_impl.dart'
    as _i31;
import 'features/authentication/domain/repositories/auth_repository.dart'
    as _i30;
import 'features/authentication/domain/usecase/login.dart' as _i35;
import 'features/authentication/presentation/bloc/authentification_bloc.dart'
    as _i38;
import 'features/authentication/presentation/pages/login_page.dart' as _i16;
import 'features/editing/presentation/bloc/asset_bloc.dart' as _i29;
import 'features/editing/presentation/bloc/pattern_element_bloc.dart' as _i17;
import 'features/editing/presentation/bloc/project_editing_bloc.dart' as _i36;
import 'features/editing/presentation/bloc/upload_image_bloc.dart' as _i27;
import 'features/editing/presentation/widgets/asset_pop_up_container.dart'
    as _i6;
import 'features/editing/presentation/widgets/screen_upload_container.dart'
    as _i25;
import 'features/editing/presentation/widgets/screen_upload_item.dart' as _i26;
import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i19;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i21;
import 'features/overview/domain/repository/project_repository.dart' as _i20;
import 'features/overview/domain/usecases/filter_by_projectname.dart' as _i14;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i33;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i11;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i12;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i13;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i39;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i40;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i34;
import 'features/overview/presentation/blocs/project_filter_bloc.dart' as _i18;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i37; // ignore_for_file: unnecessary_lambdas

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
      () => _i6.AssetPopUpContainer(imageFileData: get<_i7.Uint8List>()));
  gh.factory<_i8.DataContainer>(() => _i8.DataContainer(
      projectEntityList: get<List<_i9.ProjectEntity>>(),
      iconFileData: get<Map<int, _i7.Uint8List>>(),
      assetFileData: get<Map<int, _i7.Uint8List>>()));
  gh.factory<_i5.ElementEntity>(() =>
      _i5.ElementEntity(header: get<String>(), item: get<_i10.Elements>()));
  gh.lazySingleton<_i11.FilterDataByElement>(() => _i11.FilterDataByElement());
  gh.lazySingleton<_i12.FilterDataByPattern>(() => _i12.FilterDataByPattern());
  gh.lazySingleton<_i13.FilterDataByType>(() => _i13.FilterDataByType());
  gh.lazySingleton<_i14.FilterProjectByTitle>(
      () => _i14.FilterProjectByTitle());
  gh.factory<_i15.FireBaseRemoteDataSourceImpl>(
      () => _i15.FireBaseRemoteDataSourceImpl());
  gh.factory<_i16.LoginPage>(() => _i16.LoginPage());
  gh.lazySingleton<_i17.PatternElementBloc>(() => _i17.PatternElementBloc());
  gh.factory<_i4.PatternEntity>(() =>
      _i4.PatternEntity(item: get<_i10.Patterns>(), header: get<String>()));
  gh.factory<_i9.ProjectEntity>(() => _i9.ProjectEntity(
      title: get<String>(),
      projectType: get<String>(),
      description: get<String>(),
      assets: get<List<_i3.AssetEntity>>(),
      id: get<int>()));
  gh.singleton<_i18.ProjectFilterBloc>(_i18.ProjectFilterBloc(
      filterProjectByTitle: get<_i14.FilterProjectByTitle>()));
  gh.lazySingleton<_i19.ProjectRemoteDataSource>(
      () => _i19.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i20.ProjectRepository>(() => _i21.ProjectRepositoryImpl());
  gh.factory<_i22.RemoteAuthenticationDataSourceImpl>(() =>
      _i22.RemoteAuthenticationDataSourceImpl(
          get<_i15.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i23.RemoteDataSource>(() => _i24.RemoteDataSourceImpl(
      fireBaseRemoteDataSource: get<_i15.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i25.ScreenUploadContainer>(() => _i25.ScreenUploadContainer());
  gh.factory<_i26.ScreenUploadItem>(() => _i26.ScreenUploadItem(
      assetEntity: get<_i3.AssetEntity>(),
      assetFileCache: get<Map<int, _i7.Uint8List>>()));
  gh.lazySingleton<_i27.UploadImageBloc>(() => _i27.UploadImageBloc());
  gh.factory<_i28.UploadProjectData>(() =>
      _i28.UploadProjectData(remoteDataSource: get<_i23.RemoteDataSource>()));
  gh.lazySingleton<_i29.AssetBloc>(
      () => _i29.AssetBloc(patternElementBloc: get<_i17.PatternElementBloc>()));
  gh.factory<_i30.AuthRepository>(() => _i31.AuthRepositoryImpl(
      authRemoteDataSource: get<_i22.RemoteAuthenticationDataSourceImpl>()));
  gh.factory<_i32.DownloadProjectData>(() =>
      _i32.DownloadProjectData(remoteDataSource: get<_i23.RemoteDataSource>()));
  gh.lazySingleton<_i33.LoadProjectData>(() =>
      _i33.LoadProjectData(projectRepository: get<_i20.ProjectRepository>()));
  gh.singleton<_i34.LoadRemoteDataBloc>(_i34.LoadRemoteDataBloc(
      uploadProjectData: get<_i28.UploadProjectData>(),
      downloadProjectData: get<_i32.DownloadProjectData>()));
  gh.factory<_i35.Login>(
      () => _i35.Login(authRepository: get<_i30.AuthRepository>()));
  gh.lazySingleton<_i36.ProjectEditingBloc>(() => _i36.ProjectEditingBloc(
      assetBloc: get<_i29.AssetBloc>(),
      uploadImageBloc: get<_i27.UploadImageBloc>()));
  gh.factory<_i37.SearchDataBloc>(() =>
      _i37.SearchDataBloc(loadRemoteDataBloc: get<_i34.LoadRemoteDataBloc>()));
  gh.lazySingleton<_i38.AuthentificationBloc>(
      () => _i38.AuthentificationBloc(login: get<_i35.Login>()));
  gh.lazySingleton<_i39.FilterBloc>(() => _i39.FilterBloc(
      loadRemoteDataBloc: get<_i34.LoadRemoteDataBloc>(),
      filterDataByElement: get<_i11.FilterDataByElement>(),
      filterDataByPattern: get<_i12.FilterDataByPattern>(),
      filterDataByType: get<_i13.FilterDataByType>()));
  gh.singleton<_i40.FilterButtonBloc>(_i40.FilterButtonBloc(
      loadRemoteDataBloc: get<_i34.LoadRemoteDataBloc>()));
  return get;
}
