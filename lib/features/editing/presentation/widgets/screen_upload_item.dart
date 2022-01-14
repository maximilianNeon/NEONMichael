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

  ScreenUploadItem({
    required this.assetEntity,
    required this.assetFileCache
    
  }) : super();

  @override
  Widget build(BuildContext context) {
    print("ScreenuploadItem");
    print(assetFileCache.length);
    print(assetEntity);
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
            child: Image.memory(
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
            GestureDetector(
              onTap: () {
                print("AssetEntity Add $assetEntity");

                patternElementBloc.add(
                  PatternElementEvent.addExistingDataToBloc(
                      assetEntity: assetEntity),
                );

                patternElementBloc.add(
                  PatternElementEvent.changeToPatternView(
                    imageFileData: assetFileCache[assetEntity.id] ?? Uint8List(0) ,
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 150,
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
            SizedBox(
              height: UIHelper().verticalSpaceMedium(context),
            ),
            ScreenUploadInput(
                inputHeader: "Pattern",
                matchingCategoriesList: assetBloc.assetEntityList
                    .firstWhere((asset) => asset.id == assetEntity.id)
                    .patterns),
            SizedBox(
              height: UIHelper().verticalSpaceMedium(context),
            ),
            ScreenUploadInput(
              inputHeader: "Elements",
              matchingCategoriesList: assetBloc.assetEntityList
                  .firstWhere((asset) => asset.id == assetEntity.id)
                  .elements,
            ),
          ],
        )
      ],
    );
  }
}
