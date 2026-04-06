import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/themes/colors.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/widgets/buttons.dart';
import '/widgets/call_to_action.dart';
import '/widgets/navbar.dart';
import '/widgets/footer.dart';
import '/l10n/app_localizations.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: const AppNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.spacing200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                l10n.homeHeroTitle,
                style: AppTypography.preset1Mobile,
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing200),
                child: Text(
                  l10n.homeHeroDescription,
                  style: AppTypography.preset4.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing400),
                child: AppButton(
                  label: l10n.homeStartExploring,
                  onPressed: () => Navigator.pushNamed(context, '/recipes'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing500),
                child: Image.asset("assets/images/woman-in-kitchen.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing800),
                child: Text(
                  l10n.homeBenefitsTitle,
                  style: AppTypography.preset2Mobile.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing400),
                child: Column(
                  children: [
                    Feature(
                      iconPath: "assets/images/icons/feature_icon.svg",
                      title: l10n.homeFeatureWholeFoodTitle,
                      description: l10n.homeFeatureWholeFoodDescription,
                      semanticsLabel: l10n.homeFeatureIconSemanticsLabel,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.spacing300),
                      child: Feature(
                        iconPath: "assets/images/icons/flash.svg",
                        title: l10n.homeFeatureMinimumFussTitle,
                        description: l10n.homeFeatureMinimumFussDescription,
                        semanticsLabel: l10n.homeFeatureIconSemanticsLabel,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.spacing300),
                      child: Feature(
                        iconPath:
                            "assets/images/icons/search_menu_hamburger.svg",
                        title: l10n.homeFeatureSearchTitle,
                        description: l10n.homeFeatureSearchDescription,
                        semanticsLabel: l10n.homeFeatureIconSemanticsLabel,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing800),
                child: BuiltForLife(
                  title: l10n.homeBuiltForLifeTitle,
                  paragraph1: l10n.homeBuiltForLifeParagraph1,
                  paragraph2: l10n.homeBuiltForLifeParagraph2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: AppSpacing.spacing800,
                  left: AppSpacing.spacing200,
                  right: AppSpacing.spacing200,
                ),
                child: CallToAction(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing400),
                child: AppFooter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuiltForLife extends StatelessWidget {
  final String title;
  final String paragraph1;
  final String paragraph2;

  const BuiltForLife({
    super.key,
    required this.title,
    required this.paragraph1,
    required this.paragraph2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: AppTypography.preset2Mobile.copyWith(color: AppColors.primary),
        ),
        Padding(
          padding: EdgeInsets.only(top: AppSpacing.spacing250),
          child: Text(
            paragraph1,
            textAlign: TextAlign.left,
            style: AppTypography.preset6,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: AppSpacing.spacing250),
          child: Text(
            paragraph2,
            textAlign: TextAlign.left,
            style: AppTypography.preset6,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: AppSpacing.spacing400),
          child: Image.asset("assets/images/man-preparing-food-table.png"),
        ),
      ],
    );
  }
}

class Feature extends StatelessWidget {
  final String _iconPath;
  final String _title;
  final String _description;
  final String _semanticsLabel;

  const Feature({
    super.key,
    required String iconPath,
    required String title,
    required String description,
     required String semanticsLabel,
  }) : _iconPath = iconPath,
       _title = title,
       _description = description,
       _semanticsLabel = semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(_iconPath, semanticsLabel: _semanticsLabel),
        Text(
          _title,
          textAlign: TextAlign.left,
          style: AppTypography.preset3.copyWith(color: AppColors.neutral600),
        ),
        Text(_description, style: AppTypography.preset6),
      ],
    );
  }
}
