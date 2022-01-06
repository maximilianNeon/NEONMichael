import 'package:flutter/material.dart';
import 'package:neon_web/core/presentation%20/pages/page_layout.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/editing/presentation/widgets/project_data_input.dart';
import 'package:neon_web/features/editing/presentation/widgets/screen_upload_container.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class ProjectUploadPage extends StatelessWidget {
  ProjectUploadPage({Key? key}) : super(key: key);

  late DropzoneViewController dropzoneViewController;

  Future acceptFile(dynamic event) async {
    print(event);
    String mime = await dropzoneViewController.getFileMIME(event);
    String url = await dropzoneViewController.createFileUrl(event);
    int fileSize = await dropzoneViewController.getFileSize(event);
    String fileName = await dropzoneViewController.getFilename(event);

    print(url);
    print(fileSize);
    print(fileName);
    print(mime);
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backArrow: true,
      uploadIcon: false,
      appBarHeader: "ProjectUploadPage",
      widget: Padding(
        padding: EdgeInsets.only(top: 50, left: 100, right: 100, bottom: 10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
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
                            height: UIHelper().verticalSpaceMedium(context)),
                        ProjectDataInput(textfieldTitle: "Projekt Name"),
                        SizedBox(
                            height: UIHelper().verticalSpaceMedium(context)),
                        ProjectDataInput(textfieldTitle: "Projekt Art"),
                        SizedBox(
                            height: UIHelper().verticalSpaceMedium(context)),
                        ProjectDataInput(textfieldTitle: "Projekt Beschreibung")
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
                            height: UIHelper().verticalSpaceMedium(context)),
                        Text("Bild Hochladen"),
                        SizedBox(
                            height: UIHelper().verticalSpaceSmall(context)),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.grey,
                          child: Stack(children: [
                            DropzoneView(
                              onDrop: (dynamic event) => acceptFile(event),
                              onCreated: (controller) =>
                                  this.dropzoneViewController = controller,
                            ),
                            Center(
                              child: GestureDetector(
                                  onTap: () async {
                                    final event = await dropzoneViewController.pickFiles();

                                    if(event.isEmpty) return;

                                    acceptFile(event.first);
                                  }, child: Text("Dropzone")),
                            )
                          ]),
                        )
                      ])
                ],
              ),
              SizedBox(
                height: UIHelper().verticalSpaceLarge(context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Screens Hochladen"),
                  SizedBox(
                    height: UIHelper().verticalSpaceSmall(context),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      height: UIHelper().displayHeight(context) * 0.6,
                      width: UIHelper().displayWidth(context) * 0.4,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: ScreenUploadContainer())
                ],
              ),
              SizedBox(
                height: UIHelper().verticalSpaceMedium(context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: kColorLila,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Hochladen",
                        style: kButtonTextStyle,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
