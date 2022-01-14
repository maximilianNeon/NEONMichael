part of 'asset_bloc.dart';

@freezed
class AssetState with _$AssetState {
  const factory AssetState.initial() = _Initial;
  const factory AssetState.loading() = _Loading;
  const factory AssetState.loaded({required List<AssetEntity> assetEntityList, required Map<int,Uint8List> assetFileCache}) = _Loaded;
}
