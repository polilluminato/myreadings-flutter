import 'package:flutter/widgets.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.sizeOf(context).height;
}

SizedBox gapW(double width) => SizedBox(width: width);

SizedBox gapH(double height) => SizedBox(height: height);
