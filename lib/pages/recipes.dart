import 'package:flutter/material.dart';
import '/widgets/select.dart';
import '/widgets/searchBar.dart';
import '/widgets/recipeItem.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const SelectWidget(options: ["5 mins", "10 mins", "15 mins"], titre: "Max preparation time"),
          const SelectWidget(options: ["5 mins", "10 mins", "15 mins"], titre: "Max cooking time"),
          const SearchBarWidget(),
          for (Dish dish in dishes)
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
