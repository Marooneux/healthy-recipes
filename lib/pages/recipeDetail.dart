import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/radius.dart';
import '../themes/spacing.dart';
import '../themes/typography.dart';
import '../widgets/step.dart';
import '../widgets/navbar.dart';
import '../modele/dish.dart';

class RecipeDetailPage extends StatelessWidget {
  final Dish dish;

  const RecipeDetailPage({super.key, required this.dish});

  Widget _buildIngredients() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Ingredients', style: AppTypography.preset4.copyWith(color: AppColors.primary)),
        const SizedBox(height: AppSpacing.spacing150),
        for (var ingredient in dish.ingredients)
          Text('• $ingredient', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
      ],
    );
  }

  Widget _buildEtapes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Preparation', style: AppTypography.preset4.copyWith(color: AppColors.primary)),
        const SizedBox(height: AppSpacing.spacing150),
        for (var etape in dish.etapes) ...[
          StepWidget(text: etape),
          const SizedBox(height: AppSpacing.spacing150),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final paysage = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: const AppNavBar(),
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
            Text('Preparation: ${dish.preparation} mins', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing100),
          Row(children: [
            Icon(Icons.soup_kitchen, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text('Cuisson: ${dish.cuisson} mins', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing300),

          if (paysage)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _buildIngredients()),
                const SizedBox(width: AppSpacing.spacing200),
                Expanded(child: _buildEtapes()),
              ],
            )
          else ...[
            _buildIngredients(),
            const SizedBox(height: AppSpacing.spacing300),
            _buildEtapes(),
          ],
        ],
      ),
    );
  }
}
