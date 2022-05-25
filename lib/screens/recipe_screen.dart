import 'package:flutter/material.dart';

class RecipeScreen extends StatefulWidget {
  static const id = 'recipe_screen';
  final drinkData;
  RecipeScreen(this.drinkData);
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0, bottom: 20.0),
          child: Text(widget.drinkData['drinks'][0]['strInstructions']),
        ),
      ),
    );
  }
}
