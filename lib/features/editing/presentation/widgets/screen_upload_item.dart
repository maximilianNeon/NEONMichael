import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/export_core_files.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/pattern_element_bloc.dart';
import 'package:neon_web/features/editing/presentation/widgets/screen_upload_input.dart';

@injectable
class ScreenUploadItem extends StatelessWidget {
  final Map<int, Uint8List> assetFileCache;
  final AssetEntity assetEntity;

  ScreenUploadItem(
      {required this.assetEntity,
      required this.assetFileCache,
      required Key key})
      : super();

  @override
  Widget build(BuildContext context) {
   
   
    PatternElementBloc patternElementBloc =
        BlocProvider.of<PatternElementBloc>(context);
    AssetBloc assetBloc = BlocProvider.of<AssetBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: assetEntity.imageUrl.length > 2
                ? Image.network(
                    assetEntity.imageUrl,
                    fit: BoxFit.fill,
                    height: 250,
                    width: 150,
                  )
                : Image.memory(
                    assetFileCache[assetEntity.id] ?? Uint8List(0),
                    fit: BoxFit.fill,
                    height: 250,
                    width: 150,
                  )),
        SizedBox(
          width: UIHelper().horizontalSpaceSmall(context),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () {
                      patternElementBloc.add(
                        PatternElementEvent.changeToPatternView(
                          assetImageUrl: assetEntity.imageUrl,
                          id: assetEntity.id,
                          elementEntityList: assetEntity.elements,
                          patternEntityList: assetEntity.patterns,
                          imageFileData:
                              assetFileCache[assetEntity.id] ?? Uint8List(0),
                        ),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                          color: kColorLila, borderRadius: kBorderRadius_10),
                      child: Center(
                        child: Text(
                          "Editieren",
                          style: TextStyle(color: kColorWhite),
                        ),
                      ),
                    ),
                  ),
                  horizontalSpaceSmall(context: context),
                  GestureDetector(
                    onTap: () {
                      assetBloc.add(AssetEvent.deleteAsset(assetEntityId: assetEntity.id));
                    },
                    child: Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                          color: kColorTopupRed,
                          borderRadius: kBorderRadius_10),
                      child: Center(
                        child: Text(
                          "Löschen",
                          style: TextStyle(color: kColorWhite),
                        ),
                      ),
                    ),
                  ),
                ]),
            verticalSpaceMedium(context: context),
            ScreenUploadInput(
              key: UniqueKey(),
              inputHeader: "Pattern",
              elementEntityList: [],
              patternEntityList: assetBloc.state.maybeMap(
                  orElse: () => [],
                  loaded: (loadingState) {
                   
                  

                    return loadingState.assetEntityList
                        .firstWhere((asset) =>
                            asset.id.toString() == assetEntity.id.toString())
                        .patterns;
                  }),
              isPattern: true,
            ),
            verticalSpaceMedium(context: context),
            ScreenUploadInput(
              key: UniqueKey(),
              inputHeader: "Elements",
              isPattern: false,
              elementEntityList: assetBloc.state.maybeMap(
                  orElse: () => [],
                  loaded: (loadingState) => loadingState.assetEntityList
                      .firstWhere((asset) =>
                          asset.id.toString() == assetEntity.id.toString())
                      .elements),
              patternEntityList: [],
            ),
          ],
        )
      ],
    );
  }
}
