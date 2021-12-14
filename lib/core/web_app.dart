import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/overview_page.dart';
import '../injection_container.dart';

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FilterBloc>(
            create: (context) => getIt<FilterBloc>()
              ..add(const FilterEvent.filterMenuEventType()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OverviewPage(),
      ),
    );
  }
}
