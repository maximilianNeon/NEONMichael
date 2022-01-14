part of 'pattern_element_bloc.dart';

@freezed
class PatternElementEvent with _$PatternElementEvent {
  const factory PatternElementEvent.addPattern({required PatternEntity patternEntity, required Uint8List imageFileData}) = _AddPattern;
  const factory PatternElementEvent.removePattern({required PatternEntity patternEntity, required Uint8List imageFileData}) = _RemovePatter;
  const factory PatternElementEvent.addElement({required ElementEntity elementEntity, required Uint8List imageFileData}) = _AddElement;
  const factory PatternElementEvent.removeElement({required ElementEntity elementEntity, required Uint8List imageFileData}) = _RemoveElement;
  const factory PatternElementEvent.changeToPatternView({required Uint8List imageFileData}) = _ChangeToPatternView;
  const factory PatternElementEvent.changeToElementView({required Uint8List imageFileData}) = _ChangeToElementView;
  const factory PatternElementEvent.addExistingDataToBloc({required AssetEntity assetEntity}) = _AddExistingDataToBloc;
  const factory PatternElementEvent.resetBloc() = _ResetBloc;
}