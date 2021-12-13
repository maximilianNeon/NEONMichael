part of 'filter_bloc.dart';

@immutable
abstract class FilterState extends Equatable {}

class FilterInitial extends FilterState {
  @override
  List<Object?> get props => [];
}

class FilterMenuState extends FilterState {
  final List<bool> filterButtons;
  final List<List<String>> globalItemList;
  final List headers;
  final List<ProjectEntity> chosenProjectByItem;
  FilterMenuState({
    required this.filterButtons,
    required this.globalItemList,
    required this.headers,
    required this.chosenProjectByItem,
  });

  @override
  List<Object?> get props =>
      [filterButtons, globalItemList, headers, chosenProjectByItem];
}
