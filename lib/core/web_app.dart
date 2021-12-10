import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/domain/usecases/build_type_lists.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/overview_page.dart';
import 'package:neon_web/features/overview/presentation/widgets/menu_items.dart';

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FilterBloc>(create: (context) => FilterBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OverviewPage(),
      ),
    );
  }
}
