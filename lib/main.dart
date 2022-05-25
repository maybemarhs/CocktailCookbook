import 'package:cocktailcookbook/screens/recipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:cocktailcookbook/screens/welcome_screen.dart';
import 'package:cocktailcookbook/screens/start_screen.dart';

void main() {
  runApp(CocktailApp());
}

class CocktailApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        StartScreen.id: (context) => StartScreen(),
      },
    );
  }
}
