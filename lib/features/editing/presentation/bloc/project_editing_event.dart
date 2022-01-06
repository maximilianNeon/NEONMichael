part of 'project_editing_bloc.dart';

@freezed
class ProjectEditingEvent with _$ProjectEditingEvent {
  const factory ProjectEditingEvent.started() = _Started;
  const factory ProjectEditingEvent.add() =  _Add;
}