import 'package:flutter/material.dart';
import 'package:neon_web/core/style/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: kColorDarkBlue)),
      width: 800,
      child: const TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            contentPadding: EdgeInsets.all(8)),
      ),
    );
  }
}
