import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/themes/colors.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/widgets/buttons.dart';
import '/widgets/call_to_action.dart';
import '/widgets/navbar.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
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
                "Healthy meals, zero fuss",
                style: AppTypography.preset1Mobile,
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing200),
                child: Text(
                  "Discover eight quick, whole-food recipes that you can cook tonight—no processed junk, no guesswork.",
                  style: AppTypography.preset4.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing400),
                child: AppButton(label: "Start Exploring"),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing500),
                child: Image.asset("assets/images/woman-in-kitchen.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing800),
                child: Text(
                  "What you’ll get",
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
                      title: "Whole-food recipes",
                      description:
                          "Each dish uses everyday, unprocessed ingredients.",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.spacing300),
                      child: Feature(
                        iconPath: "assets/images/icons/flash.svg",
                        title: "Minimum fuss",
                        description:
                            "All recipes are designed to make eating healthy quick and easy.",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSpacing.spacing300),
                      child: Feature(
                        iconPath:
                            "assets/images/icons/search_menu_hamburger.svg",
                        title: "Search in seconds",
                        description:
                            "Filter by name or ingredient and jump straight to the recipe you need.",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing800),
                child: BuiltForLife(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: AppSpacing.spacing800,
                  left: AppSpacing.spacing200,
                  right: AppSpacing.spacing200,
                ),
                child: CallToAction(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuiltForLife extends StatelessWidget {
  const BuiltForLife({super.key});

  @override
  Widget build(BuildContext build) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Built for real life",
          textAlign: TextAlign.left,
          style: AppTypography.preset2Mobile.copyWith(color: AppColors.primary),
        ),
        Padding(
          padding: EdgeInsets.only(top: AppSpacing.spacing250),
          child: Text(
            "Cooking shouldn’t be complicated. These recipes come in under "
            "30 minutes of active time, fit busy schedules, and taste good "
            "enough to repeat.",
            textAlign: TextAlign.left,
            style: AppTypography.preset6,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: AppSpacing.spacing250),
          child: Text(
            "Whether you’re new to the kitchen or just need fresh ideas, we’ve got you covered.",
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

  const Feature({
    super.key,
    required String iconPath,
    required String title,
    required String description,
  }) : _iconPath = iconPath,
       _title = title,
       _description = description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(_iconPath, semanticsLabel: 'Dart Logo'),
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
