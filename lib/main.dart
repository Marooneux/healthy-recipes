import 'package:flutter/material.dart';
import '/widgets/radio.dart';
import 'widgets/searchBar.dart';
import 'widgets/recipeItem.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(),
              RecipeItem(
                imageUrl: 'assets/images/tsuvian.jpg',
                titre: 'Tsuvian',
                description: 'Le tsuivan est une spécialité culinaire originaire de Mongolie. Il s\'agit traditionnellement d\'un plat de pâtes avec de la viande.',
                portions: 2,
                preparation: 30,
                cuisson: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
