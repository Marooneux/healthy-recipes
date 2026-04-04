import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/radius.dart';
import '../themes/spacing.dart';
import '../themes/typography.dart';
import '../widgets/step.dart';
import '../modele/dish.dart';

class RecipeDetailPage extends StatelessWidget {
  final Dish dish;

  const RecipeDetailPage({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.spacing200),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(AppRadius.radius16),
            child: Image.asset(dish.imageUrl, fit: BoxFit.cover, height: 260),
          ),
          const SizedBox(height: AppSpacing.spacing200),

          Text(dish.title, style: AppTypography.preset3.copyWith(color: AppColors.primary)),
          const SizedBox(height: AppSpacing.spacing100),

          Text(dish.description, style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          const SizedBox(height: AppSpacing.spacing200),

          Row(children: [
            Icon(Icons.person, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text('Portions: ${dish.portions}', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing100),
          Row(children: [
            Icon(Icons.timer, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text('Préparation: ${dish.preparation} mins', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing100),
          Row(children: [
            Icon(Icons.soup_kitchen, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text('Cuisson: ${dish.cuisson} mins', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing300),

          Text('Ingrédients', style: AppTypography.preset4.copyWith(color: AppColors.primary)),
          const SizedBox(height: AppSpacing.spacing150),
          for (var ingredient in dish.ingredients)
            Text('• $ingredient', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          const SizedBox(height: AppSpacing.spacing300),

          Text('Préparation', style: AppTypography.preset4.copyWith(color: AppColors.primary)),
          const SizedBox(height: AppSpacing.spacing150),
          for (var etape in dish.etapes) ...[
            StepWidget(text: etape),
            const SizedBox(height: AppSpacing.spacing150),
          ],
        ],
      ),
    );
  }
}
