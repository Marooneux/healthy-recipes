import 'package:flutter/material.dart';
import '/widgets/select.dart';
import 'widgets/searchBar.dart';
import 'widgets/recipeItem.dart';
import 'widgets/step.dart';
import 'themes/colors.dart';
import 'themes/spacing.dart';
import 'themes/typography.dart';
import 'pages/recipeDetail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RecipeDetailPage(
        imageUrl: 'assets/images/tsuvian.jpg',
        titre: 'Tsuvian',
        description: 'Le tsuivan est une spécialité culinaire originaire de Mongolie. Il s\'agit traditionnellement d\'un plat de pâtes avec de la viande.',
        portions: 2,
        preparation: 30,
        cuisson: 30,
        ingredients: [
          '200 g de pâtes larges ',
          '300 g de bœuf en fines lamelles',
          '1 oignon émincé',
          '2 carottes en julienne',
          '1 poivron rouge émincé',
          '2 gousses d\'ail',
          '2 c. à soupe d\'huile végétale',
          'Sel et poivre',
        ],
        etapes: [
          'Faire chauffer l\'huile dans une grande poêle ou un wok à feu vif. Faire revenir l\'oignon et l\'ail pendant 2 minutes.',
          'Ajouter les lamelles de bœuf et faire sauter jusqu\'à ce qu\'elles soient dorées, environ 5 minutes.',
          'Incorporer les carottes et le poivron. Mélanger et cuire 5 minutes supplémentaires.',
          'Ajouter les pâtes crues directement dans la poêle avec un verre d\'eau. Mélanger, couvrir et laisser cuire à feu moyen pendant 15 à 20 minutes en remuant régulièrement.',
          'Assaisonner avec sel et poivre. Servir chaud.',
        ],
      ),
    );
  }
}
