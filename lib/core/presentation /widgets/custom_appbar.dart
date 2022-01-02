import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neon_web/core/style/constants.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/overview/presentation/pages/project_upload_page.dart';

class CustomAppBar extends StatelessWidget {
  final String header;

  const CustomAppBar({required this.header, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: UIHelper().displayHeight(context) * 0.1,
      child: Stack(
          alignment: Alignment.centerLeft,
          fit: StackFit.loose,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(header, style: kHeaderTextStyle,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ProjectUploadPage()),
                      );
                    },
                    child: Icon(Icons.upload_file))
              ],
            )
          ]),
    );
  }
}
