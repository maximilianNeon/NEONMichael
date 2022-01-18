import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/features/authentication/presentation/bloc/authentification_bloc.dart';
import 'package:neon_web/features/authentication/presentation/pages/login_page.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/pattern_element_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/project_editing_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/upload_image_bloc.dart';
import 'package:neon_web/features/overview/FilterFeature/presentation/bloc/filter_bloc.dart';
import 'package:neon_web/features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/load_remote_data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/overview_page.dart';
// ignore: always_use_package_imports
import '../injection_container.dart';

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => getIt<LoadRemoteDataBloc>()
            ..add(LoadRemoteDataEvent.downloadProjectData()),
        ),
        BlocProvider(create: (context) => getIt<AuthentificationBloc>()),
        BlocProvider(
          create: (context) => getIt<SearchDataBloc>(),
        ),
        BlocProvider<FilterButtonBloc>(
            create: (context) => getIt<FilterButtonBloc>()),
        BlocProvider(create: (context) => getIt<FilterBloc>()),
        BlocProvider(create: (context) => getIt<ProjectFilterBloc>()),
        BlocProvider(create: (context) => getIt<ProjectEditingBloc>()),
        BlocProvider(create: (context) => getIt<UploadImageBloc>()),
        BlocProvider(create: (context) => getIt<AssetBloc>()),
        BlocProvider(create: (context) => getIt<PatternElementBloc>())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OverviewPage()
        
        //BlocBuilder<AuthentificationBloc, AuthentificationState>(
        //  builder: (context, state) => state.map(
        //      initial: (_) => LoginPage(), auth: (_) => OverviewPage()),
        //),
      ),
    );
  }
}
