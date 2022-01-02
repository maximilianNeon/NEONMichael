import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/features/overview/SearchFeature/presentation/bloc/search_data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/load_remote_data_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/overview_page.dart';
// ignore: always_use_package_imports
import '../injection_container.dart';

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoadRemoteDataBloc>()
            ..add(const LoadRemoteDataEvent.loadProjectData()),
        ),
        BlocProvider(create: (context) => getIt<SearchDataBloc>(),),
        BlocProvider<FilterBloc>(
            create: (context) => getIt<FilterBloc>()
              ..add(const FilterButtonEvent.filterButtonEventType()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OverviewPage(),
      ),
    );
  }
}
