import 'package:flutter/material.dart';
import '/themes/colors.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/widgets/buttons.dart';
import '/l10n/app_localizations.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
              l10n.ctaTitle,
              textAlign: TextAlign.center,
              style: AppTypography.preset2Mobile.copyWith(
                color: AppColors.primary,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.spacing125),
              child: Text(
                l10n.ctaDescription,
                textAlign: TextAlign.center,
                style: AppTypography.preset6,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.spacing400),
              child: AppButton(
                label: l10n.ctaBrowseRecipes,
                onPressed: () => Navigator.pushNamed(context, '/recipes'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}