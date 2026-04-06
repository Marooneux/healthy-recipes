import 'package:flutter/material.dart';
import '/themes/colors.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/l10n/app_localizations.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      color: AppColors.neutral100,
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.spacing100,
        horizontal: AppSpacing.spacing200,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/icons/insta.png', width: 28, height: 28),
              const SizedBox(width: AppSpacing.spacing150),
              Image.asset('assets/images/icons/tiktok.png', width: 28, height: 28),
            ],
          ),
          const SizedBox(height: AppSpacing.spacing050),
          Text(
            l10n.footerMadeWith,
            style: AppTypography.preset9.copyWith(color: AppColors.neutral600),
          ),
        ],
      ),
    );
  }
}
