// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:typed_data' as _i8;

import 'package:flutter/material.dart' as _i34;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/data_sources/firebase_remote_datasource.dart' as _i17;
import 'core/data/data_sources/local_dataSource.dart' as _i18;
import 'core/data/repository/local_datasource_impl.dart' as _i20;
import 'core/data/repository/remote_data_source_impl.dart' as _i30;
import 'core/domain/entities/asset_entity.dart' as _i4;
import 'core/domain/entities/data_container.dart' as _i9;
import 'core/domain/entities/element_entity.dart' as _i6;
import 'core/domain/entities/pattern_entity.dart' as _i5;
import 'core/domain/entities/project_entity.dart' as _i10;
import 'core/domain/repository/loca_data_source.dart' as _i19;
import 'core/domain/repository/remote_data_source.dart' as _i29;
import 'core/domain/usecases/download_project_data.dart' as _i38;
import 'core/domain/usecases/save_project_images_to_device.dart' as _i31;
import 'core/domain/usecases/upload_single_project.dart' as _i35;
import 'core/enum/enums.dart' as _i11;
import 'features/authentication/data/data_sources/remote_authentication_data_source.dart'
    as _i28;
import 'features/authentication/data/repositories/auth_repository_impl.dart'
    as _i37;
import 'features/authentication/domain/repositories/auth_repository.dart'
    as _i36;
import 'features/authentication/domain/usecase/login.dart' as _i41;
import 'features/authentication/presentation/bloc/authentification_bloc.dart'
    as _i42;
import 'features/authentication/presentation/pages/login_page.dart' as _i21;
import 'features/editing/presentation/bloc/asset_bloc.dart' as _i3;
import 'features/editing/presentation/bloc/pattern_element_bloc.dart' as _i22;
import 'features/editing/presentation/bloc/project_editing_bloc.dart' as _i23;
import 'features/editing/presentation/widgets/asset_pop_up_container.dart'
    as _i7;
import 'features/editing/presentation/widgets/screen_upload_container.dart'
    as _i32;
import 'features/editing/presentation/widgets/screen_upload_item.dart' as _i33;
import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i25;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i27;
import 'features/overview/domain/repository/project_repository.dart' as _i26;
import 'features/overview/domain/usecases/filter_by_projectname.dart' as _i16;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i40;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i13;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i14;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i15;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i39;
import 'features/overview/presentation/blocs/data_bloc.dart' as _i43;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i12;
import 'features/overview/presentation/blocs/project_filter_bloc.dart' as _i24;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i44; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AssetBloc>(() => _i3.AssetBloc());
  gh.factory<_i4.AssetEntity>(() => _i4.AssetEntity(
      imageUrl: get<String>(),
      title: get<String>(),
      id: get<int>(),
      patterns: get<List<_i5.PatternEntity>>(),
      elements: get<List<_i6.ElementEntity>>()));
  gh.lazySingleton<_i7.AssetPopUpContainer>(() => _i7.AssetPopUpContainer(
      imageFileData: get<_i8.Uint8List>(), assetId: get<int>()));
  gh.factory<_i9.DataContainer>(() => _i9.DataContainer(
      projectEntityList: get<List<_i10.ProjectEntity>>(),
      iconFileData: get<Map<int, _i8.Uint8List>>(),
      assetFileData: get<Map<int, _i8.Uint8List>>()));
  gh.factory<_i6.ElementEntity>(() =>
      _i6.ElementEntity(header: get<String>(), item: get<_i11.Elements>()));
  gh.singleton<_i12.FilterButtonBloc>(_i12.FilterButtonBloc());
  gh.lazySingleton<_i13.FilterDataByElement>(() => _i13.FilterDataByElement());
  gh.lazySingleton<_i14.FilterDataByPattern>(() => _i14.FilterDataByPattern());
  gh.lazySingleton<_i15.FilterDataByType>(() => _i15.FilterDataByType());
  gh.lazySingleton<_i16.FilterProjectByTitle>(
      () => _i16.FilterProjectByTitle());
  gh.factory<_i17.FireBaseRemoteDataSourceImpl>(
      () => _i17.FireBaseRemoteDataSourceImpl());
  gh.factory<_i18.LocalDataSourceImpl>(() => _i18.LocalDataSourceImpl());
  gh.factory<_i19.LocalDataSourceRepository>(() =>
      _i20.LocalDataSourceImplementation(get<_i18.LocalDataSourceImpl>()));
  gh.factory<_i21.LoginPage>(() => _i21.LoginPage());
  gh.singleton<_i22.PatternElementBloc>(_i22.PatternElementBloc());
  gh.factory<_i5.PatternEntity>(() =>
      _i5.PatternEntity(item: get<_i11.Patterns>(), header: get<String>()));
  gh.lazySingleton<_i23.ProjectEditingBloc>(() => _i23.ProjectEditingBloc());
  gh.factory<_i10.ProjectEntity>(() => _i10.ProjectEntity(
      title: get<String>(),
      projectType: get<_i11.ProjectType>(),
      description: get<String>(),
      assets: get<List<_i4.AssetEntity>>(),
      projectId: get<int>(),
      imageReferenceId: get<int>(),
      imageUrl: get<String>()));
  gh.singleton<_i24.ProjectFilterBloc>(_i24.ProjectFilterBloc(
      filterProjectByTitle: get<_i16.FilterProjectByTitle>()));
  gh.lazySingleton<_i25.ProjectRemoteDataSource>(
      () => _i25.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i26.ProjectRepository>(() => _i27.ProjectRepositoryImpl());
  gh.factory<_i28.RemoteAuthenticationDataSourceImpl>(() =>
      _i28.RemoteAuthenticationDataSourceImpl(
          get<_i17.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i29.RemoteDataSourceRepository>(() => _i30.RemoteDataSourceImpl(
      fireBaseRemoteDataSource: get<_i17.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i31.SaveProjectImagesToDevice>(() =>
      _i31.SaveProjectImagesToDevice(
          remoteDataSourceRepository: get<_i29.RemoteDataSourceRepository>(),
          localDataSourceRepository: get<_i19.LocalDataSourceRepository>()));
  gh.factory<_i32.ScreenUploadContainer>(() => _i32.ScreenUploadContainer());
  gh.factory<_i33.ScreenUploadItem>(() => _i33.ScreenUploadItem(
      assetEntity: get<_i4.AssetEntity>(),
      assetFileCache: get<Map<int, _i8.Uint8List>>(),
      key: get<_i34.Key>()));
  gh.factory<_i35.UploadProjectData>(() => _i35.UploadProjectData(
      remoteDataSourceRepository: get<_i29.RemoteDataSourceRepository>()));
  gh.factory<_i36.AuthRepository>(() => _i37.AuthRepositoryImpl(
      authRemoteDataSource: get<_i28.RemoteAuthenticationDataSourceImpl>()));
  gh.factory<_i38.DownloadProjectData>(() => _i38.DownloadProjectData(
      remoteDataSource: get<_i29.RemoteDataSourceRepository>()));
  gh.lazySingleton<_i39.FilterBloc>(() => _i39.FilterBloc(
      filterDataByElement: get<_i13.FilterDataByElement>(),
      filterDataByPattern: get<_i14.FilterDataByPattern>(),
      filterDataByType: get<_i15.FilterDataByType>()));
  gh.lazySingleton<_i40.LoadProjectData>(() =>
      _i40.LoadProjectData(projectRepository: get<_i26.ProjectRepository>()));
  gh.factory<_i41.Login>(
      () => _i41.Login(authRepository: get<_i36.AuthRepository>()));
  gh.lazySingleton<_i42.AuthentificationBloc>(
      () => _i42.AuthentificationBloc(login: get<_i41.Login>()));
  gh.singleton<_i43.DataBloc>(_i43.DataBloc(
      uploadProjectData: get<_i35.UploadProjectData>(),
      downloadProjectData: get<_i38.DownloadProjectData>(),
      saveProjectImagesToDevice: get<_i31.SaveProjectImagesToDevice>()));
  gh.factory<_i44.SearchDataBloc>(
      () => _i44.SearchDataBloc(dataBloc: get<_i43.DataBloc>()));
  return get;
}
