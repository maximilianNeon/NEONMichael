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
  FilterMenuState({
    required this.filterButtons,
    required this.globalItemList,
    required this.headers,
  });

  @override
  List<Object?> get props => [filterButtons, globalItemList, headers];
}

class FilterProjectState extends FilterState {
  final List<ProjectEntity> chosenProjectByItem;

  FilterProjectState({required this.chosenProjectByItem});
  @override
  List<Object?> get props => [chosenProjectByItem];
}
