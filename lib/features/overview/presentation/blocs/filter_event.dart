part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent extends Equatable {}

class FilterMenuEvent extends FilterEvent {
  final List<bool> filterButtons;
  final List globalItemList;
  final List headers;
  FilterMenuEvent(
      {required this.filterButtons,
      required this.globalItemList,
      required this.headers});
  @override
  List<Object?> get props => [filterButtons, globalItemList, headers];
}
