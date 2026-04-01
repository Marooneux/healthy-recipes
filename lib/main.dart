import 'package:flutter/material.dart';
import '/widgets/select.dart';
import 'widgets/searchBar.dart';
import 'widgets/recipeItem.dart';
import 'themes/colors.dart';
import 'themes/spacing.dart';
import 'themes/typography.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      'Trouvez votre recette',
                      style: AppTypography.preset3,
                    ),
                    SizedBox(height: AppSpacing.spacing100),
                    Text(
                      'Filtrez par temps de préparation, de cuisson, ou recherchez directement un plat.',
                      style: AppTypography.preset9,
                    ),
                  ],
                ),
              ),
              const SelectWidget(options: ["5 mins", "10 mins", "15 mins"], titre: "Temps de préparation max"),
              const SelectWidget(options: ["5 mins", "10 mins", "15 mins"], titre: "Temps de cuisson max"),
              const SearchBarWidget(),
              const RecipeItem(
                imageUrl: 'assets/images/tsuvian.jpg',
                titre: 'Tsuvian',
                description: 'Le tsuivan est une spécialité culinaire originaire de Mongolie. Il s\'agit traditionnellement d\'un plat de pâtes avec de la viande.',
                portions: 2,
                preparation: 30,
                cuisson: 30,
              ),
              const RecipeItem(
                imageUrl: 'assets/images/quiche-legumes.jpg',
                titre: 'Quiche aux légumes',
                description: 'Découvrez notre quiche au légume : une recette généreuse et végétarienne, qui met à l’honneur les saveurs de saison.',
                portions: 6,
                preparation: 10,
                cuisson: 30,
              ),
              const RecipeItem(
                imageUrl: 'assets/images/ratatouille.jpg',
                titre: 'Ratatouille',
                description: 'C’est l’un des plats typiques de la Provence : la ratatouille !',
                portions: 6,
                preparation: 15,
                cuisson: 60,
              )
          ],
        ),
      ),
    );
  }
}
