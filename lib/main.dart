import 'package:flutter/material.dart';
import 'package:cocktailcookbook/screens/welcome_screen.dart';

void main() {
  runApp(CocktailApp());
}

class CocktailApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
    );
  }
}
