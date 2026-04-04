import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/about.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: About());
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Mini-Projet Homepage', style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
