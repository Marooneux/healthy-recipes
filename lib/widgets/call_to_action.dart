import 'package:flutter/material.dart';
import '/themes/colors.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/widgets/buttons.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutral100,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppSpacing.spacing600,
          horizontal: AppSpacing.spacing200,
        ),
        child: Column(
          children: [
            Text(
              "Ready to cook smarter ?",
              textAlign: TextAlign.center,
              style: AppTypography.preset2Mobile.copyWith(
                color: AppColors.primary,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.spacing125),
              child: Text(
                "Hit the button, pick a recipe, and get dinner on the table-fast.",
                textAlign: TextAlign.center,
                style: AppTypography.preset6,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.spacing400),
              child: AppButton(label: "Browse recipes"),
            ),
          ],
        ),
      ),
    );
  }
}