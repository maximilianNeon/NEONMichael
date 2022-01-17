part of 'pattern_element_bloc.dart';

@freezed
class PatternElementState with _$PatternElementState {
  const factory PatternElementState.pattern({
    required Uint8List imageFileData,
    required List<PatternEntity> patternEntityList,
    required List<ElementEntity> elementEntityList,
    required int id,
  }) = _PatternView;
  const factory PatternElementState.loading() = _Loading;
  const factory PatternElementState.element({
    required Uint8List imageFileData,
    required List<ElementEntity> elementEntityList,
    required List<PatternEntity> patternEntityList,
    required int id,
  }) = _ElementView;
}
