import 'package:bloc/bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/features/editing/domain/entities/dropped_Image_entity.dart';

part 'asset_event.dart';
part 'asset_state.dart';
part 'asset_bloc.freezed.dart';

@lazySingleton
class AssetBloc extends Bloc<AssetEvent, AssetState> {
  List<AssetEntity> assetEntityList = [];
  late AssetEntity assetEntity =
      AssetEntity(elements: [], patterns: [], imageUrl: "", id: 0, title: "");

  AssetBloc() : super(_Initial()) {
    on<_AddScreen>((event, emit) async {
      emit(_Loading());

      assetEntityList.add(
        assetEntity.copyWith(
          imageUrl: await event.controller.createFileUrl(event.event),
        ),
      );

      emit(_Loaded(assetEntityList: assetEntityList));
    });
    on<_AddMultipleScreens>((event, emit) async {
      emit(_Loading());

      Future.forEach(
          event.event,
          (element) async => assetEntityList.add(
                assetEntity.copyWith(
                  imageUrl: await event.controller.createFileUrl(element),
                ),
              ));

      emit(_Loaded(assetEntityList: assetEntityList));
    });
  }
}
