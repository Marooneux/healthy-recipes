import 'package:flutter/material.dart';
import 'package:mini_projet_equipen/widgets/buttons.dart';
import 'pages/home.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome()
    ); 
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Mini-Projet Homepage', style: TextStyle(fontSize: 16)),
              AppButton(label: "Button test"),
            ],
          ),
        ),
      ),
    );
  }
}
