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
  List<PatternEntity> _patternList = [];
  List<ElementEntity> _elementList = [];
  int _assetEntityId = 0;

  PatternElementBloc() : super(_Loading()) {
    on<_ChangeToPatternView>((event, emit) {
      emit(_PatternView(
          imageFileData: event.imageFileData,
          patternEntityList: _patternList,
          elementEntityList: _elementList, id: _assetEntityId));
    });
    on<_ChangeToElementView>((event, emit) {
      emit(_ElementView(
          imageFileData: event.imageFileData,
          elementEntityList: _elementList,
          patternEntityList: _patternList, id: _assetEntityId));
    });
    on<_AddElement>((event, emit) {
      emit(_Loading());

      _elementList.add(event.elementEntity);

      emit(_ElementView(
          imageFileData: event.imageFileData,
          elementEntityList: _elementList,
          patternEntityList: _patternList , id: _assetEntityId));
    });

    on<_RemoveElement>((event, emit) {
      emit(_Loading());

      _elementList.removeWhere((element) =>
          element.header == event.elementEntity.header &&
          element.item == event.elementEntity.item);

      emit(_ElementView(
          imageFileData: event.imageFileData,
          elementEntityList: _elementList,
          patternEntityList: _patternList,id: _assetEntityId));
    });
    on<_AddPattern>((event, emit) {
      emit(_Loading());

      _patternList.add(event.patternEntity);

      print("After Editing $_patternList");


      emit(_PatternView(
          imageFileData: event.imageFileData,
          elementEntityList: _elementList,
          patternEntityList: _patternList, id: _assetEntityId));
    });
    on<_RemovePatter>((event, emit) {
      emit(_Loading());

      _patternList.removeWhere((element) =>
          element.header == event.patternEntity.header &&
          element.item == event.patternEntity.item);

      emit(_PatternView(
          imageFileData: event.imageFileData,
          elementEntityList: _elementList,
          patternEntityList: _patternList, id: _assetEntityId));
    });
    on<_AddExistingDataToBloc>((event, emit) {
      _patternList = event.assetEntity.patterns;
      _assetEntityId = event.assetEntity.id;
      _elementList = event.assetEntity.elements;

      print("PatternList $_patternList");
      print(_assetEntityId);
      print("ElementList $_elementList");
    });

    on<_ResetBloc>((event, emit) {
      _patternList = [];
      _elementList = [];
      _assetEntityId = 0;

      emit(_Loading());
    });
  }
}
