part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent extends Equatable {}

class FilterMenuEvent extends FilterEvent {
  final List<bool> filterButtons;
  final List globalItemList;
  FilterMenuEvent({required this.filterButtons, required this.globalItemList});
  @override
  List<Object?> get props => [filterButtons, globalItemList];
}
