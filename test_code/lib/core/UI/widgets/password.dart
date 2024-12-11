import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_code/core/UI/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_code/core/UI/constants/sizes.dart';
import 'package:test_code/core/UI/widgets/custom_text.dart';

class Password extends StatelessWidget {
  const Password({
    super.key,
  });

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
              AppLocalizations.of(context)!.simTwo,
              width: AppSizes.getWidth(_smallImageSize, context),
            ),
            Padding(
              padding: EdgeInsets.only(left: _smallSpacing),
              child: MediumText(
                  AppLocalizations.of(context)!.enterPasswordWidgetTitle),
            )
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(top: _smallSpacing),
            child: TextFormField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius)),
                labelText:
                    AppLocalizations.of(context)!.enterPasswordWidgetLabelText,
              ),
            )),
      ],
    );
  }
}
