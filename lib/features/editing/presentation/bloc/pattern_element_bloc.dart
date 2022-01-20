import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';

part 'pattern_element_event.dart';
part 'pattern_element_state.dart';
part 'pattern_element_bloc.freezed.dart';

@singleton
class PatternElementBloc
    extends Bloc<PatternElementEvent, PatternElementState> {
  PatternElementBloc() : super(_Loading()) {
    on<_ChangeToPatternView>((event, emit) {
      emit(_PatternView(
          assetImageUrl: event.assetImageUrl,
          imageFileData: event.imageFileData,
          patternEntityList: event.patternEntityList,
          elementEntityList: event.elementEntityList,
          id: event.id));
    });
    on<_ChangeToElementView>((event, emit) {
      emit(_ElementView(
          assetImageUrl: event.assetImageUrl,
          imageFileData: event.imageFileData,
          elementEntityList: event.elementEntityList,
          patternEntityList: event.patternEntityList,
          id: event.id));
    });
    on<_AddElement>((event, emit) {
      emit(_Loading());

      List<ElementEntity> elementEntityList =
          List.from(event.currentElementEntityList);
      ElementEntity singleElementEntity = event.elementEntity;

      elementEntityList.add(singleElementEntity);

      emit(_ElementView(
          assetImageUrl: event.assetImageUrl,
          imageFileData: event.imageFileData,
          elementEntityList: elementEntityList,
          patternEntityList: event.currentPatternEntityList,
          id: event.id));
    });

    on<_RemoveElement>((event, emit) {
      emit(_Loading());

      List<ElementEntity> elementEntityList =
          List.from(event.currentElementEntityList);
      ElementEntity singleElementEntity = event.elementEntity;

      elementEntityList.removeWhere((element) =>
          element.header == singleElementEntity.header &&
          element.item == singleElementEntity.item);

      emit(_ElementView(
          assetImageUrl: event.assetImageUrl,
          imageFileData: event.imageFileData,
          elementEntityList: elementEntityList,
          patternEntityList: event.currentPatternEntityList,
          id: event.id));
    });
    on<_AddPattern>((event, emit) {
      emit(_Loading());

      List<PatternEntity> patternEntityList =
          List.from(event.currentPatternEntityList);
      PatternEntity singlePatternEntity = event.patternEntity;

      patternEntityList.add(singlePatternEntity);

      emit(_PatternView(
          assetImageUrl: event.assetImageUrl,
          imageFileData: event.imageFileData,
          elementEntityList: event.currentElementEntityList,
          patternEntityList: patternEntityList,
          id: event.id));
    });
    on<_RemovePatter>((event, emit) {
      emit(_Loading());

      List<PatternEntity> patternEntityList =
          List.from(event.currentPatternEntityList);
      PatternEntity singlePatternEntity = event.patternEntity;

      patternEntityList.removeWhere((element) =>
          element.header == singlePatternEntity.header &&
          element.item == singlePatternEntity.item);

      emit(_PatternView(
          assetImageUrl: event.assetImageUrl,
          imageFileData: event.imageFileData,
          elementEntityList: event.currentElementEntityList,
          patternEntityList: patternEntityList,
          id: event.id));
    });

    on<_ResetBloc>((event, emit) {
      emit(_Loading());
    });
  }
}
