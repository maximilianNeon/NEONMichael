import 'package:flutter/material.dart';
import 'package:neon_web/features/overview/presentation/pages/overview_page.dart';

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OverviewPage(),
    );
  }
}
