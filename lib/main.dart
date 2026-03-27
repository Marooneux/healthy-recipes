import 'package:flutter/material.dart';
import 'package:mini_projet_equipe_7/widgets/radio.dart';
import 'package:mini_projet_equipe_7/widgets/searchBar.dart';
import 'package:mini_projet_equipe_7/widgets/select.dart';

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
              SizedBox(height: 16),
              RadioWidget(
                options: ['10mins', '20mins', '30mins'],
              ),
              SizedBox(height: 16),
              SelectWidget(titre: "Temps de préparation max",
                  options: ['0 minutes', '10 minutes', '15 minutes'])
            ],
          ),
        ),
      ),
    );
  }
}
