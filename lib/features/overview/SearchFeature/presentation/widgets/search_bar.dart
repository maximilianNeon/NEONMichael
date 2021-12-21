import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/features/overview/presentation/blocs/filter_button_bloc.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    this.userInput,
    this.searchController,
    //this.formKey,
    Key? key,
  }) : super(key: key);

  String? userInput;
  TextEditingController? searchController = TextEditingController();
  //GlobalKey? formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: kColorBlack)),
      width: 800,
      child: TextFormField(
        onFieldSubmitted: (searchController) {
          BlocProvider.of<FilterBloc>(context).add(
              FilterButtonEvent.filterProjectSearchBar(
                  searchItem: searchController));
        },
        validator: (value) {
          if (value!.isEmpty == false) {
            userInput = value;
          }
        },
        textInputAction: TextInputAction.none,
        controller: searchController,
        onChanged: (value) {
          userInput = value;
        },
        decoration: kInputDecoSearchbar,
      ),
    );
  }
}
