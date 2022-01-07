part of 'pattern_element_bloc.dart';

@freezed
class PatternElementState with _$PatternElementState {
  const factory PatternElementState.pattern({required String imageUrl,}) = _PatternView;
  const factory PatternElementState.initial() = _Initial;
  const factory PatternElementState.element({required String imageUrl}) = _ElementView;
}
