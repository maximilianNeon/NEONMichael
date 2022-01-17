import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/features/editing/domain/entities/dropped_Image_entity.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/widgets/screen_upload_item.dart';

@injectable
class ScreenUploadContainer extends StatelessWidget {
  ScreenUploadContainer() : super();

  late DropzoneViewController _dropzoneViewController;

  Future<DroppedImageEntity> convertDroppedFile(
      {required dynamic event}) async {
    return DroppedImageEntity(
        fileData: await _dropzoneViewController.getFileData(event));
  }

  @override
  Widget build(BuildContext context) {
    AssetBloc assetBloc = BlocProvider.of<AssetBloc>(context);
    return Container(
      alignment: Alignment.topLeft,
      child:
          Stack(alignment: Alignment.topLeft, fit: StackFit.loose, children: [
        DropzoneView(
          onDrop: (dynamic event) async => assetBloc.add(AssetEvent.addScreen(
              droppedImageEntity: await convertDroppedFile(event: event))),
          onCreated: (controller) => this._dropzoneViewController = controller,
        ),
        BlocBuilder<AssetBloc, AssetState>(
          builder: (context, state) => state.map(
              initial: (_) => Container(
                    child: Text("No Screens Added"),
                  ),
              loading: (_) => CircularProgressIndicator(),
              loaded: (loadedState) => GridView.builder(
                    padding: EdgeInsets.all(5),
                    itemCount: loadedState.assetEntityList.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 500),
                    itemBuilder: (context, index) {
                      final assetEntityList =
                          List<AssetEntity>.of(loadedState.assetEntityList);
                      final assetCache =
                          Map<int, Uint8List>.of(loadedState.assetFileCache);
                      return ScreenUploadItem(
                        key: Key(assetEntityList[index].id.toString()),
                        assetEntity: assetEntityList[index],
                        assetFileCache: assetCache,
                      );
                    },
                  )),
        ),
      ]),
    );
  }
}
