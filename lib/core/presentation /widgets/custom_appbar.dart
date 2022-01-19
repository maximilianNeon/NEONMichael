import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_web/core/style/color_constants.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/core/util/ui_helper.dart';
import 'package:neon_web/features/authentication/presentation/bloc/authentification_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/asset_bloc.dart';
import 'package:neon_web/features/editing/presentation/bloc/project_editing_bloc.dart';
import 'package:neon_web/features/overview/FilterFeature/presentation/bloc/filter_bloc.dart';
import 'package:neon_web/features/overview/presentation/blocs/data_bloc.dart';
import 'package:neon_web/features/overview/presentation/pages/overview_page.dart';
import 'package:neon_web/features/editing/presentation/pages/project_upload_page.dart';

class CustomAppBar extends StatelessWidget {
  final String header;
  final bool showBackArrow;
  final bool showLogOutAndUpload;

  const CustomAppBar(
      {required this.header,
      required this.showLogOutAndUpload,
      required this.showBackArrow,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FilterBloc filterBloc = BlocProvider.of<FilterBloc>(context);
    DataBloc dataBloc =
        BlocProvider.of<DataBloc>(context);
    AuthentificationBloc authentificationBloc = BlocProvider.of<AuthentificationBloc>(context);
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
                Text(
                  header,
                  style: kHeaderTextStyle,
                ),
              ],
            ),
            showLogOutAndUpload
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<ProjectEditingBloc>(context).add(ProjectEditingEvent.reset());
                          BlocProvider.of<AssetBloc>(context).add(AssetEvent.reset());

                          

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => ProjectUploadPage()),
                          );
                        },
                        child: Icon(Icons.upload_file),
                      ),
                      horizontalSpaceSuperSmall(context: context),
                      GestureDetector(
                        onTap: () {
                        authentificationBloc.add(AuthentificationEvent.logout());
                        },
                        child: Icon(Icons.logout),
                      )
                    ],
                  )
                : Container(),
            showBackArrow
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                          onTap: () {
                            filterBloc.add(FilterEvent.resetFilter(
                                dataBloc.state.maybeMap(
                                    orElse: () => [],
                                    loaded: (loaded) =>
                                        loaded.projectEntityList)));
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => OverviewPage()),
                            );
                          },
                          child: Icon(Icons.arrow_back))
                    ],
                  )
                : Container()
          ]),
    );
  }
}
