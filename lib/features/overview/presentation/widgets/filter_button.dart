import 'package:flutter/material.dart';
import 'package:neon_web/core/style/constants.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    required this.buttonName,
    Key? key,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Filter');
      },
      child: Container(
        height: 30,
        alignment: Alignment.center,
        decoration:
            BoxDecoration(border: Border.all(width: 2, color: kColorDarkBlue)),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Text(buttonName),
        ),
      ),
    );
  }
}