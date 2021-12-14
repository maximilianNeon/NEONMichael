import 'package:flutter/material.dart';


class UIHelper {
//get Screensize
  Size displaySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
    return displaySize(context).width;
  }

//Vertical Spacings
  double verticalSpaceSmall(BuildContext context) {
    return displayWidth(context) * 0.1;
  }

  double verticalSpaceMedium(BuildContext context) {
    return displayWidth(context) * 0.2;
  }

  double verticalSpaceLarge(BuildContext context) {
    return displayWidth(context) * 0.6;
  }

//Vertical Spacings
  double horizontalSpaceSmall(BuildContext context) {
    return displayHeight(context) * 0.1;
  }

  double horizontalSpaceMedium(BuildContext context) {
    return displayHeight(context) * 0.2;
  }

  double horizontalSpaceLarge(BuildContext context) {
    return displayHeight(context) * 0.6;
  }
}