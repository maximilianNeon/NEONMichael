import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/domain/usecases/filter_button_list.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_bloc.dart';

class FilterButton extends StatelessWidget {
  FilterButton({
    required this.buttonName,
    required this.activeColor,
    required this.onpress,
    Key? key,
  }) : super(key: key);

  final String buttonName;
  Color activeColor;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: kColorDarkBlue),
            color: activeColor),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Text(buttonName),
        ),
      ),
    );
  }
}
