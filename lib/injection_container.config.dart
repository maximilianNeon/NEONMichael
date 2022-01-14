// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:typed_data' as _i7;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/data_sources/firebase_remote_datasource.dart' as _i21;
import 'core/domain/entities/asset_entity.dart' as _i3;
import 'core/domain/entities/element_entity.dart' as _i5;
import 'core/domain/entities/pattern_entity.dart' as _i4;
import 'core/domain/entities/project_entity.dart' as _i15;
import 'core/enum/enums.dart' as _i8;
import 'features/authentication/data/data_sources/remote_authentication_data_source.dart'
    as _i20;
import 'features/authentication/data/repositories/auth_repository_impl.dart'
    as _i27;
import 'features/authentication/domain/repositories/auth_repository.dart'
    as _i26;
import 'features/authentication/domain/usecase/login.dart' as _i30;
import 'features/authentication/presentation/bloc/authentification_bloc.dart'
    as _i33;
import 'features/authentication/presentation/pages/login_page.dart' as _i13;
import 'features/editing/presentation/bloc/asset_bloc.dart' as _i25;
import 'features/editing/presentation/bloc/pattern_element_bloc.dart' as _i14;
import 'features/editing/presentation/bloc/project_editing_bloc.dart' as _i31;
import 'features/editing/presentation/bloc/upload_image_bloc.dart' as _i24;
import 'features/editing/presentation/widgets/asset_pop_up_container.dart'
    as _i6;
import 'features/editing/presentation/widgets/screen_upload_container.dart'
    as _i22;
import 'features/editing/presentation/widgets/screen_upload_item.dart' as _i23;
import 'features/overview/data/dataresources/project_remote_dataSource.dart'
    as _i17;
import 'features/overview/data/repositories/project_repository_impl.dart'
    as _i19;
import 'features/overview/domain/repository/project_repository.dart' as _i18;
import 'features/overview/domain/usecases/filter_by_projectname.dart' as _i12;
import 'features/overview/domain/usecases/load_projectdata.dart' as _i28;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_element.dart'
    as _i9;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_pattern.dart'
    as _i10;
import 'features/overview/FilterFeature/domain/usecase/filter_data_by_type.dart'
    as _i11;
import 'features/overview/FilterFeature/presentation/bloc/filter_bloc.dart'
    as _i34;
import 'features/overview/presentation/blocs/filter_button_bloc.dart' as _i35;
import 'features/overview/presentation/blocs/load_remote_data_bloc.dart'
    as _i29;
import 'features/overview/presentation/blocs/project_filter_bloc.dart' as _i16;
import 'features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart'
    as _i32; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i5.ElementEntity>(() =>
      _i5.ElementEntity(header: get<String>(), item: get<_i8.Elements>()));
  gh.lazySingleton<_i9.FilterDataByElement>(() => _i9.FilterDataByElement());
  gh.lazySingleton<_i10.FilterDataByPattern>(() => _i10.FilterDataByPattern());
  gh.lazySingleton<_i11.FilterDataByType>(() => _i11.FilterDataByType());
  gh.lazySingleton<_i12.FilterProjectByTitle>(
      () => _i12.FilterProjectByTitle());
  gh.factory<_i13.LoginPage>(() => _i13.LoginPage());
  gh.lazySingleton<_i14.PatternElementBloc>(() => _i14.PatternElementBloc());
  gh.factory<_i4.PatternEntity>(() =>
      _i4.PatternEntity(item: get<_i8.Patterns>(), header: get<String>()));
  gh.factory<_i15.ProjectEntity>(() => _i15.ProjectEntity(
      title: get<String>(),
      projectType: get<String>(),
      description: get<String>(),
      assets: get<List<_i3.AssetEntity>>(),
      id: get<int>()));
  gh.singleton<_i16.ProjectFilterBloc>(_i16.ProjectFilterBloc(
      filterProjectByTitle: get<_i12.FilterProjectByTitle>()));
  gh.lazySingleton<_i17.ProjectRemoteDataSource>(
      () => _i17.ProjectRemoteDataSourceImpl());
  gh.lazySingleton<_i18.ProjectRepository>(() => _i19.ProjectRepositoryImpl());
  gh.factory<_i20.RemoteAuthenticationDataSourceImpl>(() =>
      _i20.RemoteAuthenticationDataSourceImpl(
          get<_i21.FireBaseRemoteDataSourceImpl>()));
  gh.factory<_i22.ScreenUploadContainer>(() => _i22.ScreenUploadContainer());
  gh.factory<_i23.ScreenUploadItem>(() => _i23.ScreenUploadItem(
      assetEntity: get<_i3.AssetEntity>(),
      assetFileCache: get<Map<int, _i7.Uint8List>>()));
  gh.lazySingleton<_i24.UploadImageBloc>(() => _i24.UploadImageBloc());
  gh.lazySingleton<_i25.AssetBloc>(
      () => _i25.AssetBloc(patternElementBloc: get<_i14.PatternElementBloc>()));
  gh.factory<_i26.AuthRepository>(() => _i27.AuthRepositoryImpl(
      authRemoteDataSource: get<_i20.RemoteAuthenticationDataSourceImpl>()));
  gh.lazySingleton<_i28.LoadProjectData>(() =>
      _i28.LoadProjectData(projectRepository: get<_i18.ProjectRepository>()));
  gh.singleton<_i29.LoadRemoteDataBloc>(
      _i29.LoadRemoteDataBloc(get<_i28.LoadProjectData>()));
  gh.factory<_i30.Login>(
      () => _i30.Login(authRepository: get<_i26.AuthRepository>()));
  gh.lazySingleton<_i31.ProjectEditingBloc>(() => _i31.ProjectEditingBloc(
      assetBloc: get<_i25.AssetBloc>(),
      uploadImageBloc: get<_i24.UploadImageBloc>()));
  gh.factory<_i32.SearchDataBloc>(() =>
      _i32.SearchDataBloc(loadRemoteDataBloc: get<_i29.LoadRemoteDataBloc>()));
  gh.lazySingleton<_i33.AuthentificationBloc>(
      () => _i33.AuthentificationBloc(login: get<_i30.Login>()));
  gh.lazySingleton<_i34.FilterBloc>(() => _i34.FilterBloc(
      loadRemoteDataBloc: get<_i29.LoadRemoteDataBloc>(),
      filterDataByElement: get<_i9.FilterDataByElement>(),
      filterDataByPattern: get<_i10.FilterDataByPattern>(),
      filterDataByType: get<_i11.FilterDataByType>()));
  gh.singleton<_i35.FilterButtonBloc>(_i35.FilterButtonBloc(
      loadRemoteDataBloc: get<_i29.LoadRemoteDataBloc>()));
  return get;
}
