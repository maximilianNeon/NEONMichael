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
          borderRadius: BorderRadius.circular(9),
          border: Border.all(width: 2, color: kColorBlack)),
      width: 800,
      child: const TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            contentPadding: EdgeInsets.all(16)),
      ),
    );
  }
}
