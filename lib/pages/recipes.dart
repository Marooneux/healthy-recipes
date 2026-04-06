import 'package:flutter/material.dart';
import '/widgets/select.dart';
import '/widgets/searchBar.dart';
import '/widgets/recipeItem.dart';
import '/widgets/navbar.dart';
import '/widgets/footer.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/modele/database.dart';
import '/modele/dish.dart';
import '/modele/dish_localization.dart';
import '/pages/recipeDetail.dart';
import '/l10n/app_localizations.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  List<Dish> dishes = [];
  int? _maxPrepFilter;
  int? _maxCookFilter;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    loadDishes();
  }

  void loadDishes() async {
    List<Dish> result = await getAllDishes();
    setState(() {
      dishes = result;
    });
  }

  List<Dish> _filteredDishes(AppLocalizations l10n) {
    return dishes.where((dish) {
      if (_maxPrepFilter != null && dish.preparation > _maxPrepFilter!) return false;
      if (_maxCookFilter != null && dish.cuisson > _maxCookFilter!) return false;
      final localizedTitle = localizedDishTitle(l10n, dish).toLowerCase();
      if (_searchQuery.isNotEmpty &&
          !localizedTitle.contains(_searchQuery.toLowerCase())) return false;
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final filtered = _filteredDishes(l10n);
    return Scaffold(
      appBar: const AppNavBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.spacing200,
              vertical: AppSpacing.spacing300,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.recipesPageTitle,
                  style: AppTypography.preset3,
                ),
                SizedBox(height: AppSpacing.spacing100),
                Text(
                  l10n.recipesPageDescription,
                  style: AppTypography.preset6
                ),
              ],
            ),
          ),
          SelectWidget(
            options: [
              l10n.recipesFilterAny,
              l10n.recipesFilter15Mins,
              l10n.recipesFilter30Mins,
              l10n.recipesFilter45Mins,
              l10n.recipesFilter60Mins,
            ],
            titre: l10n.recipesFilterMaxPreparation,
            onChanged: (value) => setState(() => _maxPrepFilter = value),
          ),
          SelectWidget(
            options: [
              l10n.recipesFilterAny,
              l10n.recipesFilter15Mins,
              l10n.recipesFilter30Mins,
              l10n.recipesFilter45Mins,
              l10n.recipesFilter60Mins,
            ],
            titre: l10n.recipesFilterMaxCooking,
            onChanged: (value) => setState(() => _maxCookFilter = value),
          ),
          SearchBarWidget(
            hintText: l10n.recipesSearchHint,
            onChanged: (value) => setState(() => _searchQuery = value),
          ),
          for (Dish dish in filtered)
            RecipeItem(
              imageUrl: dish.imageUrl,
              titre: localizedDishTitle(l10n, dish),
              description: localizedDishDescription(l10n, dish),
              portions: dish.portions,
              preparation: dish.preparation,
              cuisson: dish.cuisson,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailPage(dish: dish),
                  ),
                );
              },
            ),
          const AppFooter(),
        ],
      ),
    );
  }
}
