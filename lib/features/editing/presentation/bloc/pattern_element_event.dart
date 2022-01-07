part of 'pattern_element_bloc.dart';

@freezed
class PatternElementEvent with _$PatternElementEvent {
  const factory PatternElementEvent.addPattern({required String pattern}) = _AddPattern;
  const factory PatternElementEvent.removePattern({required String pattern}) = _RemovePatter;
  const factory PatternElementEvent.addElement({required String pattern}) = _AddElement;
  const factory PatternElementEvent.removeElement({required String pattern}) = _RemoveElement;
  const factory PatternElementEvent.changeToPatternView({required String imageUrl}) = _ChangeToPatternView;
  const factory PatternElementEvent.changeToElementView({required String imageUrl}) = _ChangeToElementView;


}