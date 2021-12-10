part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent extends Equatable {}

class FilterMenuEvent extends FilterEvent {
  final List<bool> filterButtons;
  final List<List<String>> globalItemList;
  final List headers;
  FilterMenuEvent({
    required this.filterButtons,
    required this.globalItemList,
    required this.headers,
  });
  @override
  List<Object?> get props => [filterButtons, globalItemList, headers];
}

class FilterProjectEvent extends FilterEvent {
  final List<ProjectEntity> chosenProjectType;

  FilterProjectEvent({required this.chosenProjectType});
  @override
  List<Object?> get props => [chosenProjectType];
}
