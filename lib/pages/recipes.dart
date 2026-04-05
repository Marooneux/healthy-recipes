import 'package:flutter/material.dart';
import '/widgets/select.dart';
import '/widgets/searchBar.dart';
import '/widgets/recipeItem.dart';
import '/widgets/navbar.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/modele/database.dart';
import '/modele/dish.dart';
import '/pages/recipeDetail.dart';

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

  List<Dish> get _filteredDishes {
    return dishes.where((dish) {
      if (_maxPrepFilter != null && dish.preparation > _maxPrepFilter!) return false;
      if (_maxCookFilter != null && dish.cuisson > _maxCookFilter!) return false;
      if (_searchQuery.isNotEmpty &&
          !dish.title.toLowerCase().contains(_searchQuery.toLowerCase())) return false;
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filteredDishes;
    return Scaffold(
      appBar: const AppNavBar(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.spacing200,
              vertical: AppSpacing.spacing300,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore our recipes',
                  style: AppTypography.preset3,
                ),
                SizedBox(height: AppSpacing.spacing100),
                Text(
                  'Discover our quick and delicious dishes Use the search bar to find a recipe by name or ingredient, or simply scroll dow the list.',
                  style: AppTypography.preset9,
                ),
              ],
            ),
          ),
          SelectWidget(
            options: const ["Any", "15 mins", "30 mins", "45 mins", "60 mins"],
            titre: "Max preparation time",
            onChanged: (value) => setState(() => _maxPrepFilter = value),
          ),
          SelectWidget(
            options: const ["Any", "15 mins", "30 mins", "45 mins", "60 mins"],
            titre: "Max cooking time",
            onChanged: (value) => setState(() => _maxCookFilter = value),
          ),
          SearchBarWidget(
            onChanged: (value) => setState(() => _searchQuery = value),
          ),
          for (Dish dish in filtered)
            RecipeItem(
              imageUrl: dish.imageUrl,
              titre: dish.title,
              description: dish.description,
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
        ],
      ),
    );
  }
}
