import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/radius.dart';
import '../themes/spacing.dart';
import '../themes/typography.dart';
import '../widgets/step.dart';
import '../widgets/navbar.dart';
import '../widgets/footer.dart';
import '../modele/dish.dart';
import '../modele/dish_localization.dart';
import '../l10n/app_localizations.dart';

class RecipeDetailPage extends StatelessWidget {
  final Dish dish;

  const RecipeDetailPage({super.key, required this.dish});

  Widget _buildIngredients(AppLocalizations l10n, List<String> ingredients) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.recipeDetailIngredients, style: AppTypography.preset4.copyWith(color: AppColors.primary)),
        const SizedBox(height: AppSpacing.spacing150),
        for (var ingredient in ingredients)
          Text('• $ingredient', style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
      ],
    );
  }

  Widget _buildEtapes(AppLocalizations l10n, List<String> steps) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.recipeDetailPreparation, style: AppTypography.preset4.copyWith(color: AppColors.primary)),
        const SizedBox(height: AppSpacing.spacing150),
        for (var etape in steps) ...[
          StepWidget(text: etape),
          const SizedBox(height: AppSpacing.spacing150),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final localizedTitle = localizedDishTitle(l10n, dish);
    final localizedDescription = localizedDishDescription(l10n, dish);
    final localizedIngredients = localizedDishIngredients(l10n, dish);
    final localizedSteps = localizedDishSteps(l10n, dish);
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

          Text(localizedTitle, style: AppTypography.preset3.copyWith(color: AppColors.primary)),
          const SizedBox(height: AppSpacing.spacing100),

          Text(localizedDescription, style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          const SizedBox(height: AppSpacing.spacing200),

          Row(children: [
            Icon(Icons.person, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text(l10n.recipeDetailPortions(dish.portions), style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing100),
          Row(children: [
            Icon(Icons.timer, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text(l10n.recipeDetailPreparationTime(dish.preparation), style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing100),
          Row(children: [
            Icon(Icons.soup_kitchen, size: 20, color: AppColors.neutral600),
            const SizedBox(width: AppSpacing.spacing100),
            Text(l10n.recipeDetailCuissonTime(dish.cuisson), style: AppTypography.preset9.copyWith(color: AppColors.neutral600)),
          ]),
          const SizedBox(height: AppSpacing.spacing300),

          if (paysage)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _buildIngredients(l10n, localizedIngredients)),
                const SizedBox(width: AppSpacing.spacing200),
                Expanded(child: _buildEtapes(l10n, localizedSteps)),
              ],
            )
          else ...[
            _buildIngredients(l10n, localizedIngredients),
            const SizedBox(height: AppSpacing.spacing300),
            _buildEtapes(l10n, localizedSteps),
          ],
          const SizedBox(height: AppSpacing.spacing300),
          const AppFooter(),
        ],
      ),
    );
  }
}
