import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:test_code/core/UI/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_code/core/UI/constants/sizes.dart';
import 'package:test_code/core/UI/widgets/custom_text.dart';

class PinCode extends StatelessWidget {
  PinCode({
    super.key,
  });

  final TextEditingController _controller = TextEditingController();

  static const double _pinTextSize = 30;
  static const int _smallImageSize = 20;
  static const double _smallSpacing = 10;
  static const double _borderRadius = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              AppLocalizations.of(context)!.simOne,
              width: AppSizes.getWidth(_smallImageSize, context),
            ),
            Padding(
              padding: EdgeInsets.only(left: _smallSpacing),
              child: MediumText(
                  AppLocalizations.of(context)!.enterSimIdWidgetTitle),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: _smallSpacing),
          child: PinCodeTextField(
            keyboardType: TextInputType.number,
            hintCharacter: '0',
            cursorColor: AppColors.darkColor,
            pinTheme: PinTheme(
              activeFillColor: AppColors.lightColor,
              inactiveFillColor: AppColors.middle,
              selectedFillColor: AppColors.middle,
              activeColor: AppColors.lightColor,
              inactiveColor: AppColors.middle,
              selectedColor: AppColors.middle,
              borderRadius: BorderRadius.circular(_borderRadius),
              shape: PinCodeFieldShape.box,
            ),
            enableActiveFill: true,
            textStyle: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: _pinTextSize),
            controller: _controller,
            appContext: context,
            length: 6,
            onChanged: (code) {},
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
      ],
    );
  }
}
