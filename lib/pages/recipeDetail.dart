import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/radius.dart';
import '../themes/spacing.dart';
import '../themes/typography.dart';
import '../widgets/step.dart';

class RecipeDetailPage extends StatelessWidget {
  final String imageUrl;
  final String titre;
  final String description;
  final int portions;
  final int preparation;
  final int cuisson;
  final List<String> ingredients;
  final List<String> etapes;

  const RecipeDetailPage({
    super.key,
    required this.imageUrl,
    required this.titre,
    required this.description,
    required this.portions,
    required this.preparation,
    required this.cuisson,
    required this.ingredients,
    required this.etapes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.spacing200),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(AppRadius.radius16),
            child: Image.asset(imageUrl, fit: BoxFit.cover, height: 260),
          ),
          const SizedBox(height: AppSpacing.spacing200),

          Text(titre, style: AppTypography.preset3.copyWith(color: AppColors.primary)),
          const SizedBox(height: AppSpacing.spacing100),

          Text(description, style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          const SizedBox(height: AppSpacing.spacing200),

          Row(children: [
            Icon(Icons.person, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text('Portions: $portions', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing100),
          Row(children: [
            Icon(Icons.timer, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text('Préparation: $preparation mins', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing100),
          Row(children: [
            Icon(Icons.soup_kitchen, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text('Cuisson: $cuisson mins', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing300),

          Text('Ingrédients', style: AppTypography.preset4.copyWith(color: AppColors.primary)),
          const SizedBox(height: AppSpacing.spacing150),
          for (var ingredient in ingredients)
            Text('• $ingredient', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          const SizedBox(height: AppSpacing.spacing300),

          Text('Préparation', style: AppTypography.preset4.copyWith(color: AppColors.primary)),
          const SizedBox(height: AppSpacing.spacing150),
          for (var etape in etapes) ...[
            StepWidget(text: etape),
            const SizedBox(height: AppSpacing.spacing150),
          ],
        ],
      ),
    );
  }
}
