// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:typed_data' as _i8;

import 'package:flutter/material.dart' as _i28;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/data_sources/firebase_remote_datasource.dart' as _i16;
import 'core/data/repository/remote_data_source_impl.dart' as _i25;
import 'core/domain/entities/asset_entity.dart' as _i4;
import 'core/domain/entities/data_container.dart' as _i9;
import 'core/domain/entities/element_entity.dart' as _i6;
import 'core/domain/entities/pattern_entity.dart' as _i5;
import 'core/domain/entities/project_entity.dart' as _i10;
import 'core/domain/repository/remote_data_source.dart' as _i24;
import 'core/domain/usecases/download_project_data.dart' as _i33;
import 'core/domain/usecases/upload_single_project.dart' as _i30;
import 'core/enum/enums.dart' as _i11;
import 'features/authentication/data/data_sources/remote_authentication_data_source.dart'
    as _i23;
import 'features/authentication/data/repositories/auth_repository_impl.dart'
    as _i32;
import 'features/authentication/domain/repositories/auth_repository.dart'
    as _i31;
import 'features/authentication/domain/usecase/login.dart' as _i36;
import 'features/authentication/presentation/bloc/authentification_bloc.dart'
    as _i39;
import 'features/authentication/presentation/pages/login_page.dart' as _i17;
import 'features/editing/presentation/bloc/asset_bloc.dart' as _i3;
import 'features/editing/presentation/bloc/pattern_element_bloc.dart' as _i18;
import 'features/editing/presentation/bloc/project_editing_bloc.dart' as _i37;
import 'features/editing/presentation/bloc/upload_image_bloc.dart' as _i29;
import 'features/editing/presentation/widgets/asset_pop_up_container.dart'
    as _i7;
import 'features/editing/presentation/widgets/screen_upload_container.dart'
    as _i26;
import 'features/editing/presentation/widgets/screen_upload_item.dart' as _i27;
import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i20;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i22;
import 'features/overview/domain/repository/project_repository.dart' as _i21;
import 'features/overview/domain/usecases/filter_by_projectname.dart' as _i15;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i34;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i12;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i13;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i14;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i40;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i41;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i35;
import 'features/overview/presentation/blocs/project_filter_bloc.dart' as _i19;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i38; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.AssetPopUpContainer>(
      () => _i7.AssetPopUpContainer(imageFileData: get<_i8.Uint8List>()));
  gh.factory<_i9.DataContainer>(() => _i9.DataContainer(
      projectEntityList: get<List<_i10.ProjectEntity>>(),
      iconFileData: get<Map<int, _i8.Uint8List>>(),
      assetFileData: get<Map<int, _i8.Uint8List>>()));
  gh.factory<_i6.ElementEntity>(() =>
      _i6.ElementEntity(header: get<String>(), item: get<_i11.Elements>()));
  gh.lazySingleton<_i12.FilterDataByElement>(() => _i12.FilterDataByElement());
  gh.lazySingleton<_i13.FilterDataByPattern>(() => _i13.FilterDataByPattern());
  gh.lazySingleton<_i14.FilterDataByType>(() => _i14.FilterDataByType());
  gh.lazySingleton<_i15.FilterProjectByTitle>(
      () => _i15.FilterProjectByTitle());
  gh.factory<_i16.FireBaseRemoteDataSourceImpl>(
      () => _i16.FireBaseRemoteDataSourceImpl());
  gh.factory<_i17.LoginPage>(() => _i17.LoginPage());
  gh.singleton<_i18.PatternElementBloc>(_i18.PatternElementBloc());
  gh.factory<_i5.PatternEntity>(() =>
      _i5.PatternEntity(item: get<_i11.Patterns>(), header: get<String>()));
  gh.factory<_i10.ProjectEntity>(() => _i10.ProjectEntity(
      title: get<String>(),
      projectType: get<String>(),
      description: get<String>(),
      assets: get<List<_i4.AssetEntity>>(),
      id: get<int>(),
      imageUrl: get<String>()));
  gh.singleton<_i19.ProjectFilterBloc>(_i19.ProjectFilterBloc(
      filterProjectByTitle: get<_i15.FilterProjectByTitle>()));
  gh.lazySingleton<_i20.ProjectRemoteDataSource>(
      () => _i20.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i21.ProjectRepository>(() => _i22.ProjectRepositoryImpl());
  gh.factory<_i23.RemoteAuthenticationDataSourceImpl>(() =>
      _i23.RemoteAuthenticationDataSourceImpl(
          get<_i16.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i24.RemoteDataSource>(() => _i25.RemoteDataSourceImpl(
      fireBaseRemoteDataSource: get<_i16.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i26.ScreenUploadContainer>(() => _i26.ScreenUploadContainer());
  gh.factory<_i27.ScreenUploadItem>(() => _i27.ScreenUploadItem(
      assetEntity: get<_i4.AssetEntity>(),
      assetFileCache: get<Map<int, _i8.Uint8List>>(),
      key: get<_i28.Key>()));
  gh.lazySingleton<_i29.UploadImageBloc>(() => _i29.UploadImageBloc());
  gh.factory<_i30.UploadProjectData>(() =>
      _i30.UploadProjectData(remoteDataSource: get<_i24.RemoteDataSource>()));
  gh.factory<_i31.AuthRepository>(() => _i32.AuthRepositoryImpl(
      authRemoteDataSource: get<_i23.RemoteAuthenticationDataSourceImpl>()));
  gh.factory<_i33.DownloadProjectData>(() =>
      _i33.DownloadProjectData(remoteDataSource: get<_i24.RemoteDataSource>()));
  gh.lazySingleton<_i34.LoadProjectData>(() =>
      _i34.LoadProjectData(projectRepository: get<_i21.ProjectRepository>()));
  gh.singleton<_i35.LoadRemoteDataBloc>(_i35.LoadRemoteDataBloc(
      uploadProjectData: get<_i30.UploadProjectData>(),
      downloadProjectData: get<_i33.DownloadProjectData>()));
  gh.factory<_i36.Login>(
      () => _i36.Login(authRepository: get<_i31.AuthRepository>()));
  gh.lazySingleton<_i37.ProjectEditingBloc>(() =>
      _i37.ProjectEditingBloc(uploadImageBloc: get<_i29.UploadImageBloc>()));
  gh.factory<_i38.SearchDataBloc>(() =>
      _i38.SearchDataBloc(loadRemoteDataBloc: get<_i35.LoadRemoteDataBloc>()));
  gh.lazySingleton<_i39.AuthentificationBloc>(
      () => _i39.AuthentificationBloc(login: get<_i36.Login>()));
  gh.lazySingleton<_i40.FilterBloc>(() => _i40.FilterBloc(
      loadRemoteDataBloc: get<_i35.LoadRemoteDataBloc>(),
      filterDataByElement: get<_i12.FilterDataByElement>(),
      filterDataByPattern: get<_i13.FilterDataByPattern>(),
      filterDataByType: get<_i14.FilterDataByType>()));
  gh.singleton<_i41.FilterButtonBloc>(_i41.FilterButtonBloc(
      loadRemoteDataBloc: get<_i35.LoadRemoteDataBloc>()));
  return get;
}
