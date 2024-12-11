import 'package:flutter/material.dart';
import 'package:test_code/core/UI/constants/colors.dart';
import 'package:test_code/core/UI/constants/sizes.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    required this.body,
    required this.bottom,
    super.key,
  });

  final Widget body;
  final Widget bottom;

  static const int _sidePadding = 20;
  static const int _topPadding = 120;
  static const int _bottomPadding = 38;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(
          AppSizes.getWidth(_sidePadding, context),
          AppSizes.getHeight(_topPadding, context),
          AppSizes.getWidth(_sidePadding, context),
          AppSizes.getHeight(_bottomPadding, context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: body),
            bottom,
          ],
        ),
      ),
    );
  }
}
