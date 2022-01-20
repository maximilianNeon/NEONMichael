part of 'pattern_element_bloc.dart';

@freezed
class PatternElementEvent with _$PatternElementEvent {
  const factory PatternElementEvent.addPattern({
    required List<PatternEntity> currentPatternEntityList,
    required List<ElementEntity> currentElementEntityList,
    required PatternEntity patternEntity,
    required Uint8List imageFileData,
    required String assetImageUrl,
    required int id,
  }) = _AddPattern;
  const factory PatternElementEvent.removePattern({
    required List<PatternEntity> currentPatternEntityList,
    required List<ElementEntity> currentElementEntityList,
    required PatternEntity patternEntity,
    required Uint8List imageFileData,
    required String assetImageUrl,
    required int id,
  }) = _RemovePatter;
  const factory PatternElementEvent.addElement({
    required int id,
    required ElementEntity elementEntity,
    required List<PatternEntity> currentPatternEntityList,
    required List<ElementEntity> currentElementEntityList,
    required Uint8List imageFileData,
    required String assetImageUrl,
  }) = _AddElement;
  const factory PatternElementEvent.removeElement({
    required ElementEntity elementEntity,
    required int id,
    required List<PatternEntity> currentPatternEntityList,
    required List<ElementEntity> currentElementEntityList,
    required Uint8List imageFileData,
    required String assetImageUrl,
  }) = _RemoveElement;
  const factory PatternElementEvent.changeToPatternView({
    required Uint8List imageFileData,
    required String assetImageUrl,
    required List<ElementEntity> elementEntityList,
    required List<PatternEntity> patternEntityList,
    required int id,
  }) = _ChangeToPatternView;
  const factory PatternElementEvent.changeToElementView({
    required Uint8List imageFileData,
    required String assetImageUrl,
    required List<ElementEntity> elementEntityList,
    required List<PatternEntity> patternEntityList,
    required int id,
  }) = _ChangeToElementView;
  const factory PatternElementEvent.addExistingDataToBloc({
    required AssetEntity assetEntity,
  }) = _AddExistingDataToBloc;
  const factory PatternElementEvent.resetBloc() = _ResetBloc;
}
