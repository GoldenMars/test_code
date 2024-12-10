import 'package:flutter/material.dart';

class AppSizes {
  AppSizes._();

  static const int _figmaWidth = 320;
  static const int _figmaHeight = 568;

  static double getWidth(num size, BuildContext context) =>
      size * MediaQuery.of(context).size.width / AppSizes._figmaWidth;
  static double getHeight(num size, BuildContext context) =>
      size * MediaQuery.of(context).size.height / AppSizes._figmaHeight;
}
