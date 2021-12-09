part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent extends Equatable {}

class FilterMenuEvent extends FilterEvent {
  final List<bool> filterButtons;
  FilterMenuEvent({required this.filterButtons});
  @override
  List<Object?> get props => [filterButtons];
}
