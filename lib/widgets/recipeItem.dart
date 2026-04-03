import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/radius.dart';
import '../themes/spacing.dart';
import '../themes/typography.dart';
import 'buttons.dart';

class RecipeItem extends StatelessWidget {
  final String imageUrl;
  final String titre;
  final String description;
  final int portions;
  final int preparation;
  final int cuisson;

  const RecipeItem({
    super.key,
    required this.imageUrl,
    required this.titre,
    required this.description,
    required this.portions,
    required this.preparation,
    required this.cuisson,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.spacing150),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(AppRadius.radius16),
        border: Border.all(color: AppColors.neutral300),
      ),
      padding: const EdgeInsets.all(AppSpacing.spacing200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(AppRadius.radius12),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
          const SizedBox(height: AppSpacing.spacing200),
          Text(
            titre,
            style: AppTypography.preset5.copyWith(color: AppColors.primary),
          ),
          const SizedBox(height: AppSpacing.spacing100),
          Text(
            description,
            style: AppTypography.preset9.copyWith(color: AppColors.neutral600),
          ),
          const SizedBox(height: AppSpacing.spacing200),
          Row(
            children: [
              Icon(Icons.person, size: 24, color: AppColors.neutral600),
              const SizedBox(width: AppSpacing.spacing100),
              Text(
                'Portions: $portions',
                style: AppTypography.preset9.copyWith(color: AppColors.neutral600),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.spacing100),
          Row(
            children: [
              Icon(Icons.timer, size: 24, color: AppColors.neutral600),
              const SizedBox(width: AppSpacing.spacing100),
              Text(
                'Preparation: $preparation mins',
                style: AppTypography.preset9.copyWith(color: AppColors.neutral600),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.spacing100),
          Row(
            children: [
              Icon(Icons.soup_kitchen, size: 24, color: AppColors.neutral600),
              const SizedBox(width: AppSpacing.spacing100),
              Text(
                'Cooking: $cuisson mins',
                style: AppTypography.preset9.copyWith(color: AppColors.neutral600),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.spacing200),
          AppButton(label: 'View recipe'),
        ],
      ),
    );
  }
}
