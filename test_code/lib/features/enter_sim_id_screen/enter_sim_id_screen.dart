import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:test_code/core/UI/constants/colors.dart';
import 'package:test_code/core/UI/constants/sizes.dart';
import 'package:test_code/core/UI/widgets/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class EnterSimIdScreen extends StatelessWidget {
  EnterSimIdScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  static const int _pinHeight = 60;
  static const int _pinWidth = 40;
  static const int _underlineWidth = 4;
  static const int _topPadding = 40;
  static const int _bottomPadding = 20;
  static const double _pinTextSize = 48;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: AppLocalizations.of(context)!.personalAccount,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: AppSizes.getHeight(_topPadding, context),
                bottom: AppSizes.getHeight(_bottomPadding, context)),
            child: PinCodeTextField(
              cursorColor: AppColors.darkColor,
              pinTheme: PinTheme(
                  fieldHeight: AppSizes.getHeight(_pinHeight, context),
                  fieldWidth: AppSizes.getWidth(_pinWidth, context),
                  borderWidth: AppSizes.getHeight(_underlineWidth, context),
                  disabledBorderWidth: 0,
                  activeColor: AppColors.darkColor,
                  inactiveColor: AppColors.darkColor,
                  selectedColor: AppColors.darkColor),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700, fontSize: _pinTextSize),
              controller: _controller,
              appContext: context,
              length: 6,
              onChanged: (code) {},
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          // DescriptionText(
          //   AppLocalizations.of(context)!.enterCodeDescription,
          // ),
        ],
      ),
      bottom: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // PrimaryButton(
          //     title: AppLocalizations.of(context)!.enterCodeContinue,
          //     onPressed: () {
          //       AutoRouter.of(context).navigate(const EnterNameRoute());
          //     }),
          // SecondaryButton(
          //   title: AppLocalizations.of(context)!.enterCodeBack,
          //   onPressed: () {
          //     AutoRouter.of(context).navigate(const CreateGameRoute());
          //   },
          // )
        ],
      ),
    );
  }
}
