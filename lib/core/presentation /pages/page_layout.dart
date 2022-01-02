import 'package:flutter/material.dart';
import 'package:neon_web/core/presentation%20/widgets/custom_appbar.dart';

class PageLayout extends StatelessWidget {
  final Widget widget;
  final String appBarHeader;

  const PageLayout({required this.widget, required this.appBarHeader, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [CustomAppBar(header: appBarHeader), widget]),
      ),
    );
  }
}
