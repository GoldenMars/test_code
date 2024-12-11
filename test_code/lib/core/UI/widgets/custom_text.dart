import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BottomText extends StatelessWidget {
  const BottomText(this.text, {super.key});

  final String text;

  static const double _descriptionTextSize = 13;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: _descriptionTextSize,
        color: AppColors.yellowColor,
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText(this.text, {super.key});

  final String text;

  static const double _smallTextSize = 14;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: _smallTextSize,
          fontWeight: FontWeight.w700,
          color: AppColors.lightColor),
    );
  }
}

class MediumText extends StatelessWidget {
  const MediumText(this.text, {super.key});

  final String text;

  static const double _mediumTextSize = 15;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: _mediumTextSize,
          fontWeight: FontWeight.w700,
          color: AppColors.lightColor),
    );
  }
}

class LargeText extends StatelessWidget {
  const LargeText(this.text, {super.key});

  final String text;

  static const double _largeTextSize = 20;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: _largeTextSize,
          fontWeight: FontWeight.w700,
          color: AppColors.lightColor),
    );
  }
}
