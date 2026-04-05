import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/app_localizations.dart';
import 'pages/recipes.dart';
import 'pages/home.dart';
import 'pages/about.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('fr'),
      ],
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHome(),
        '/recipes': (context) => const Recipes(),
        '/about': (context) => const About(),
      },
    );
  }
}
