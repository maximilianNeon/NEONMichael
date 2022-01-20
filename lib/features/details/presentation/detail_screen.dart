import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/presentation%20/pages/page_layout.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/features/overview/presentation/blocs/data_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/project_filter_bloc.dart';
import '../../../core/domain/entities/project_entity.dart';

class DetailScreen extends StatelessWidget {
  final AssetEntity assetEntity;
  final ProjectEntity projectEntity;

  const DetailScreen(
      {required this.projectEntity, required this.assetEntity, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataBloc dataBloc = BlocProvider.of<DataBloc>(context);
    return PageLayout(
      appBarHeader: "DetailScreen",
      showBackArrow: true,
      showLogOutAndUpload: false,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Projekt"),
                  verticalSpaceSmall(context: context),
                  Text(projectEntity.title)
                ],
              ),
              verticalSpaceMedium(context: context),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Patterns"),
                  verticalSpaceSmall(context: context),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: 0,
                        minWidth: 0,
                        maxWidth: 250,
                        maxHeight: 200),
                    child: ListView.builder(
                      itemCount: assetEntity.patterns.length,
                      itemBuilder: (context, index) => Text(assetEntity
                          .patterns[index].item
                          .toString()
                          .split(".")
                          .last),
                    ),
                  )
                ],
              ),
              verticalSpaceMedium(context: context),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Elements"),
                  verticalSpaceSmall(context: context),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: 0,
                        minWidth: 0,
                        maxWidth: 250,
                        maxHeight: 200),
                    child: ListView.builder(
                      itemCount: assetEntity.elements.length,
                      itemBuilder: (context, index) => Text(assetEntity
                          .elements[index].item
                          .toString()
                          .split(".")
                          .last),
                    ),
                  )
                ],
              ),
            ],
          ),
          Image.network(
            assetEntity.imageUrl,
            fit: BoxFit.fill,
            width: 200,
            height: 400,
          ),
          horizontalSpaceMedium(context: context),
          GestureDetector(
            onTap: () => dataBloc.add(
              DataEvent.saveProjectAssetImagesOnDevice(
                projectEntity: projectEntity.copyWith(assets: [assetEntity]),
              ),
            ),
            child: Icon(Icons.download),
          )
        ],
      ),
    );
  }
}
