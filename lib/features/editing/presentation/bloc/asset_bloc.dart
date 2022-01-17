import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';
import 'package:neon_web/features/editing/domain/entities/dropped_Image_entity.dart';
import 'package:neon_web/features/editing/presentation/bloc/pattern_element_bloc.dart';
part 'asset_event.dart';
part 'asset_state.dart';
part 'asset_bloc.freezed.dart';

@lazySingleton
class AssetBloc extends Bloc<AssetEvent, AssetState> {
  List<AssetEntity> _assetEntityList = [];
  Map<int, Uint8List> _assetFileCache = {};


  AssetBloc() : super(_Initial()) {
    on<_AddScreen>((event, emit) async {
      emit(_Loading());

      int generatedAssetId = DateTime.now().microsecondsSinceEpoch.toInt();
      _assetFileCache
          .addAll({generatedAssetId: event.droppedImageEntity.fileData});

      AssetEntity assetEntity = AssetEntity(
          elements: [], patterns: [], imageUrl: "", id: 0, title: "");

      _assetEntityList.add(
        assetEntity.copyWith(
          id: generatedAssetId,
        ),
      );

      emit(_Loaded(
          assetEntityList: _assetEntityList, assetFileCache: _assetFileCache));
    });
    on<_AddMultipleScreens>((event, emit) async {
      emit(_Loading());
      int microSecondDivider = 0;

      AssetEntity assetEntity = AssetEntity(
          elements: [], patterns: [], imageUrl: "", id: 0, title: "");

      Future.forEach(event.droppedImageEntityList,
          (DroppedImageEntity droppedImageEntity) {
        // patternElementBloc.add(PatternElementEvent.resetBloc());
        microSecondDivider = microSecondDivider + 000000001;
        int generatedAssetId =
            DateTime.now().microsecondsSinceEpoch.toInt() + microSecondDivider;

        _assetFileCache.addAll({generatedAssetId: droppedImageEntity.fileData});
        
        _assetEntityList.add(assetEntity.copyWith(id: generatedAssetId));
      }).whenComplete(() {
        print("AssetEntityList after upload = $_assetEntityList");
        emit(_Loaded(
            assetEntityList: _assetEntityList, assetFileCache: _assetFileCache));
      });
    });

    on<_AddPatternAndElements>((event, emit) async {
      emit(_Loading());
      List<AssetEntity> editedAssetEntityList = [];
      

      _assetEntityList.forEach((assetEntity) {
        print("Inside Loop  $assetEntity");
        assetEntity.id.toString() == event.assetEntityId.toString()
            ? editedAssetEntityList.add(assetEntity.copyWith(
                patterns: event.patternEntityList,
                elements: event.elementEntityList,
              ))
            : editedAssetEntityList.add(assetEntity);
      });

      print("edited List $editedAssetEntityList");

      _assetEntityList = editedAssetEntityList;

      // patternElementBloc.add(PatternElementEvent.resetBloc());

      print("assetEntityList inside AssetBloc: $_assetEntityList");

      emit(_Loaded(
          assetEntityList: _assetEntityList, assetFileCache: _assetFileCache));
    });
  }
}
