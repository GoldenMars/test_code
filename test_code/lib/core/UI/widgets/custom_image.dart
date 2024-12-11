import 'package:flutter/material.dart';

import '../constants/sizes.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    required this.path,
    super.key,
  });

  final String path;

  static const double _imageHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: AppSizes.getHeight(_imageHeight, context),
    );
  }
}
