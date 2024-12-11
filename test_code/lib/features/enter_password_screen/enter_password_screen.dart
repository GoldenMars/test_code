import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_code/core/UI/constants/sizes.dart';
import 'package:test_code/core/UI/widgets/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_code/core/UI/widgets/custom_image.dart';
import 'package:test_code/core/UI/widgets/custom_text.dart';
import 'package:test_code/core/UI/widgets/password.dart';

@RoutePage()
class EnterPasswordScreen extends StatelessWidget {
  const EnterPasswordScreen({super.key});

  static const int _topPadding = 60;
  static const int _bottomPadding = 20;
  static const double _verticalImagePadding = 20;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical:
                        AppSizes.getHeight(_verticalImagePadding, context)),
                child: CustomImage(
                    path: AppLocalizations.of(context)!.personalAccountImage),
              ),
              LargeText(AppLocalizations.of(context)!.personalAccount),
              Padding(
                  padding: EdgeInsets.only(
                      top: AppSizes.getHeight(_topPadding, context),
                      bottom: AppSizes.getHeight(_bottomPadding, context)),
                  child: Password()),
            ],
          ),
        ),
        bottom: Center(
            child: BottomText(
                AppLocalizations.of(context)!.enterPasswordScreenDescription)));
  }
}
