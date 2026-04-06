import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      padding: const EdgeInsets.only(
        left: AppSpacing.spacing200,
        top: AppSpacing.spacing400,
        right: AppSpacing.spacing200,
        bottom: AppSpacing.spacing500
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/icons/Instagram.svg'),
              const SizedBox(width: AppSpacing.spacing300),
              SvgPicture.asset('assets/images/icons/Frame.svg'),
              const SizedBox(width: AppSpacing.spacing300),
              SvgPicture.asset('assets/images/icons/tiktok.svg')
            ],
          ),
          const SizedBox(height: AppSpacing.spacing300),
          Text(
            l10n.footerMadeWith,
            style: AppTypography.preset9.copyWith(color: AppColors.neutral600),
          ),
        ],
      ),
    );
  }
}
