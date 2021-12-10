part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent extends Equatable {}

class FilterMenuEventType extends FilterEvent {
  @override
  List<Object?> get props => [];
}

class FilterMenuEventPattern extends FilterEvent {
  @override
  List<Object?> get props => [];
}

class FilterMenuEventElement extends FilterEvent {
  @override
  List<Object?> get props => [];
}

class FilterProjectEvent extends FilterEvent {
  final List<ProjectEntity> chosenProjectType;

  FilterProjectEvent({required this.chosenProjectType});
  @override
  List<Object?> get props => [chosenProjectType];
}
