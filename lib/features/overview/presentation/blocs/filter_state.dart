part of 'filter_bloc.dart';

@immutable
abstract class FilterState extends Equatable {}

class FilterInitial extends FilterState {
  @override
  List<Object?> get props => [];
}

class FilterMenuState extends FilterState {
  final List<bool> filterButtons;
  FilterMenuState({required this.filterButtons});

  @override
  List<Object?> get props => [filterButtons];
}
