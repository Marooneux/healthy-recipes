import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_projet_equipen/themes/colors.dart';
import 'package:mini_projet_equipen/themes/spacing.dart';
import 'package:mini_projet_equipen/themes/typography.dart';
import 'package:mini_projet_equipen/widgets/buttons.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.spacing200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Healthy meals, zero fuss",
                style: AppTypography.preset1Mobile.copyWith(
                  color: AppColors.primary,
                ),
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
                    SvgPicture.asset("assets/images/icons/feature_icon.svg"),
                    Text(
                      "Whole-food recipes",
                      style: AppTypography.preset3.copyWith(
                        color: AppColors.neutral600,
                      ),
                    ),
                    Text(
                      "Each dish uses everyday, unprocessed ingredients.",
                      style: AppTypography.preset6,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
        SvgPicture.asset(_iconPath),
        Text(
          _title,
          style: AppTypography.preset3.copyWith(color: AppColors.neutral600),
        ),
        Text(_description, style: AppTypography.preset6),
      ],
    );
  }
}
