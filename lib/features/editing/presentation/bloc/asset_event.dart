part of 'asset_bloc.dart';

@freezed
class AssetEvent with _$AssetEvent {
  const factory AssetEvent.addScreen({required DroppedImageEntity droppedImageEntity}) = _AddScreen;
  const factory AssetEvent.addMultipleScreens({required List<DroppedImageEntity> droppedImageEntityList}) = _AddMultipleScreens;
  const factory AssetEvent.addElementsAndPattern({required List<PatternEntity> patternEntityList , required List<ElementEntity> elementEntityList, required int assetEntityId}) = _AddPatternAndElements;
  
}