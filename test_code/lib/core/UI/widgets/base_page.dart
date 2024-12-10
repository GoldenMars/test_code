import 'package:flutter/material.dart';
import 'package:test_code/core/UI/constants/colors.dart';
import 'package:test_code/core/UI/constants/sizes.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    required this.title,
    required this.body,
    required this.bottom,
    super.key,
  });

  final String title;
  final Widget body;
  final Widget bottom;

  static const int _sidePadding = 20;
  static const int _topPadding = 40;
  static const int _bottomPadding = 38;
  static const double _titleFontSize = 32;
  static const double _borderWidth = 10;
  static const double _borderRadius = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.darkColor,
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.lightColor,
          border: Border.all(
            width: _borderWidth,
            color: AppColors.darkColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(_borderRadius)),
        ),
        padding: EdgeInsets.fromLTRB(
          AppSizes.getWidth(_sidePadding, context),
          AppSizes.getHeight(_topPadding, context),
          AppSizes.getWidth(_sidePadding, context),
          AppSizes.getHeight(_bottomPadding, context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'munchkin',
                  fontSize: _titleFontSize,
                  color: AppColors.darkColor),
              textAlign: TextAlign.center,
            ),
            Expanded(child: body),
            bottom,
          ],
        ),
      ),
    );
  }
}
