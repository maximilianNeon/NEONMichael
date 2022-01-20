import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/enum/type.dart';
import 'package:neon_web/core/presentation%20/pages/page_layout.dart';
import 'package:neon_web/core/style/border_constants.dart';
import 'package:neon_web/core/style/color_constants.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/editing/domain/entities/dropped_Image_entity.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/pattern_element_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/project_editing_bloc.dart';
import 'package:neon_web/features/editing/presentation/widgets/asset_pop_up_container.dart';
import 'package:neon_web/features/editing/presentation/widgets/project_data_input.dart';
import 'package:neon_web/features/editing/presentation/widgets/project_type_chooser.dart';
import 'package:neon_web/features/editing/presentation/widgets/screen_upload_container.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:neon_web/features/overview/presentation/pages/overview_page.dart';

class ProjectUploadPage extends StatelessWidget {
  ProjectUploadPage({Key? key}) : super(key: key);

  late DropzoneViewController _dropzoneViewController;

  Future<DroppedImageEntity> convertDroppedFile(dynamic event) async {
    return DroppedImageEntity(
        fileData: await _dropzoneViewController.getFileData(event));
  }

  Future<List<DroppedImageEntity>> convertListofDroppedFiles(List event) async {
    List<DroppedImageEntity> droppedImageEntityList = [];

    await Future.forEach(event, (event) async {
      droppedImageEntityList.add(DroppedImageEntity(
          fileData: await _dropzoneViewController.getFileData(event)));
    });

    return droppedImageEntityList;
  }

  @override
  Widget build(BuildContext context) {
    ProjectEditingBloc projectEditingBloc =
        BlocProvider.of<ProjectEditingBloc>(context);
    AssetBloc assetBloc = BlocProvider.of<AssetBloc>(context);
    return PageLayout(
      showBackArrow: true,
      showLogOutAndUpload: false,
      appBarHeader: "ProjectUploadPage",
      widget: Padding(
        padding: EdgeInsets.only(top: 50, left: 100, right: 100, bottom: 10),
        child: BlocBuilder<PatternElementBloc, PatternElementState>(
          builder: (context, state) {
            return Stack(children: [
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BlocBuilder<ProjectEditingBloc, ProjectEditingState>(
                      builder: (context, projectEditingstate) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Projekt hochladen"),
                                  SizedBox(
                                      height: UIHelper()
                                          .verticalSpaceMedium(context)),
                                  ProjectDataInput(
                                      textfieldTitle: "Projekt Name",
                                      textFormFieldText:
                                          projectEditingstate.maybeMap(
                                              orElse: () => "",
                                              editing: (editing) =>
                                                  editing.projectEntity.title)),
                                  SizedBox(
                                      height: UIHelper()
                                          .verticalSpaceMedium(context)),
                                  BlocBuilder<ProjectEditingBloc,
                                      ProjectEditingState>(
                                    builder: (context, state) {
                                      return ProjectTypeChooser(
                                        projectType: state.maybeMap(
                                            orElse: () => ProjectType.App,
                                            editing: (editing) => editing
                                                .projectEntity.projectType),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                      height: UIHelper()
                                          .verticalSpaceMedium(context)),
                                  ProjectDataInput(
                                      textfieldTitle: "Projekt Beschreibung",
                                      textFormFieldText:
                                          projectEditingstate.maybeMap(
                                              orElse: () => "",
                                              editing: (editing) => editing
                                                  .projectEntity.description))
                                ]),
                            SizedBox(
                              width: UIHelper().horizontalSpaceMedium(context),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Projekt Icon"),
                                  SizedBox(
                                      height: UIHelper()
                                          .verticalSpaceMedium(context)),
                                  GestureDetector(
                                      onTap: () async {
                                        final event =
                                            await _dropzoneViewController
                                                .pickFiles(multiple: false);
                                        if (event.isEmpty) return;

                                        projectEditingBloc.add(
                                          ProjectEditingEvent.uploadImage(
                                              droppedImageEntity:
                                                  await convertDroppedFile(
                                                      event.first)),
                                        );
                                      },
                                      child: Text("Bild Hochladen")),
                                  SizedBox(
                                      height: UIHelper()
                                          .verticalSpaceSmall(context)),
                                  Container(
                                    height: 200,
                                    width: 200,
                                    child: Stack(children: [
                                      DropzoneView(
                                        onError: (errorMessage) {},
                                        onLeave: () {},
                                        onLoaded: () {},
                                        onDrop: (dynamic event) async =>
                                            projectEditingBloc.add(
                                          ProjectEditingEvent.uploadImage(
                                              droppedImageEntity:
                                                  await convertDroppedFile(
                                                      event)),
                                        ),
                                        onCreated: (controller) =>
                                            this._dropzoneViewController =
                                                controller,
                                      ),
                                      projectEditingstate.maybeMap(
                                          orElse: () => Container(
                                                width: 200,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      kBorderRadius_10,
                                                  border: Border.all(
                                                    color: kColorGrey,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text("Drag & Drop"),
                                                ),
                                              ),
                                          editing: (editing) =>
                                              projectEditingBloc
                                                      .iconImageFileCache
                                                      .isEmpty
                                                  ? editing.projectEntity
                                                              .imageUrl.length >
                                                          2
                                                      ? Image.network(editing
                                                          .projectEntity
                                                          .imageUrl)
                                                      : Container(
                                                          width: 200,
                                                          height: 200,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                kBorderRadius_10,
                                                            border: Border.all(
                                                              color: kColorGrey,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                                "Drag & Drop"),
                                                          ),
                                                        )
                                                  : Image.memory(
                                                      projectEditingBloc
                                                          .iconImageFileCache
                                                          .values
                                                          .first))
                                    ]),
                                  )
                                ])
                          ],
                        );
                      },
                    ),
                    SizedBox(
                      height: UIHelper().verticalSpaceLarge(context),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                            onTap: () async {
                              final event = await _dropzoneViewController
                                  .pickFiles(
                                      multiple: true,
                                      mime: ['image/jpeg', 'image/png']);

                              if (event.length > 1) {
                                final list =
                                    await convertListofDroppedFiles(event);

                                assetBloc.add(AssetEvent.addMultipleScreens(
                                    droppedImageEntityList: list));
                              } else if (event.length == 1) {
                                assetBloc.add(
                                  AssetEvent.addScreen(
                                    droppedImageEntity:
                                        await convertDroppedFile(event.first),
                                  ),
                                );
                              }
                            },
                            child: Text("Screens Hochladen")),
                        SizedBox(
                          height: UIHelper().verticalSpaceSmall(context),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            height: UIHelper().displayHeight(context) * 0.6,
                            width: UIHelper().displayWidth(context) * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: ScreenUploadContainer())
                      ],
                    ),
                    verticalSpaceMedium(context: context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        BlocBuilder<AssetBloc, AssetState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              orElse: () => CircularProgressIndicator(),
                              loaded: (loaded) => GestureDetector(
                                onTap: () {
                                  projectEditingBloc.add(
                                    ProjectEditingEvent.upload(
                                        assetEntityList: loaded.assetEntityList,
                                        assetFileCache: loaded.assetFileCache),
                                  );

                                  projectEditingBloc.state.maybeMap(
                                    orElse: () {},
                                    editing: (_) => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => OverviewPage(),
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: kColorLila,
                                      borderRadius: kBorderRadius_10),
                                  child: Center(
                                    child: Text(
                                      "Hochladen",
                                      style: kButtonTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
              state.map(
                element: (state) => Center(
                  child: AssetPopUpContainer(
                    assetImageUrl: state.assetImageUrl,
                    assetId: state.id,
                    imageFileData: state.imageFileData,
                  ),
                ),
                pattern: (state) => Center(
                  child: AssetPopUpContainer(
                    assetImageUrl: state.assetImageUrl,
                    assetId: state.id,
                    imageFileData: state.imageFileData,
                  ),
                ),
                loading: (_) => Container(),
              )
            ]);
          },
        ),
      ),
    );
  }
}
