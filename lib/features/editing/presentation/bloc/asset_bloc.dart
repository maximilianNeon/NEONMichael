import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/data/data_sources/firebase_remote_datasource.dart';
import 'package:neon_web/core/data/data_sources/firebase_remote_datasource.dart';
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
  PatternElementBloc patternElementBloc;
  List<AssetEntity> assetEntityList = [];
  Map<int, Uint8List> assetFileCache = {};

  AssetBloc({required this.patternElementBloc}) : super(_Initial()) {
    on<_AddScreen>((event, emit) async {
      emit(_Loading());
       patternElementBloc.add(PatternElementEvent.resetBloc());

      int generatedAssetId = DateTime.now().microsecondsSinceEpoch.toInt();
      assetFileCache
          .addAll({generatedAssetId: event.droppedImageEntity.fileData});

      AssetEntity assetEntity = AssetEntity(
          elements: [], patterns: [], imageUrl: "", id: 0, title: "");

      assetEntityList.add(
        assetEntity.copyWith(
          imageUrl: '',
          id: generatedAssetId,
        ),
      );

      emit(_Loaded(assetEntityList: assetEntityList));
    });
    on<_AddMultipleScreens>((event, emit) async {
      emit(_Loading());

      int microSecondDivider = 0;

      AssetEntity assetEntity = AssetEntity(
          elements: [], patterns: [], imageUrl: "", id: 0, title: "");

      Future.forEach(event.event, (element) async {
        patternElementBloc.add(PatternElementEvent.resetBloc());

        String imageUrl = await event.controller.createFileUrl(event.event);

        microSecondDivider = microSecondDivider + 000000001;

        assetEntityList.add(assetEntity.copyWith(
          imageUrl: imageUrl,
          id: DateTime.now().microsecondsSinceEpoch.toInt() +
              microSecondDivider,
        ));
      });

      emit(_Loaded(assetEntityList: assetEntityList));
    });

    on<_AddPatternAndElements>((event, emit) async {
      emit(_Loading());
      List<AssetEntity> editedAssetEntityList = [];

      assetEntityList.forEach((assetEntity) {
        assetEntity.id == patternElementBloc.assetEntityId
            ? editedAssetEntityList.add(assetEntity.copyWith(
                patterns: patternElementBloc.patternList,
                elements: patternElementBloc.elementList,
              ))
            : editedAssetEntityList.add(assetEntity);
      });

      assetEntityList = editedAssetEntityList;

      patternElementBloc.add(PatternElementEvent.resetBloc());

      emit(_Loaded(assetEntityList: assetEntityList));
    });
  }
}
