part of 'asset_bloc.dart';

@freezed
class AssetEvent with _$AssetEvent {
  const factory AssetEvent.addScreen({required DroppedImageEntity droppedImageEntity}) = _AddScreen;
  const factory AssetEvent.addMultipleScreens({required List<DroppedImageEntity> droppedImageEntityList}) = _AddMultipleScreens;
  const factory AssetEvent.addElementsAndPattern({required List<PatternEntity> patternEntityList , required List<ElementEntity> elementEntityList, required int assetEntityId}) = _AddPatternAndElements;
  const factory AssetEvent.addExistingDataToAssetBloc({required List<AssetEntity> assetEntityList}) = _AddDataForModifying;
  const factory AssetEvent.reset() = _Reset;
  const factory AssetEvent.deleteAsset({required int assetEntityId}) = _Delete;
  
}