import 'package:flutter/material.dart';

class RecipeScreen extends StatefulWidget {
  static const id = 'recipe_screen';
  final drinkData;
  RecipeScreen(this.drinkData);
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  String getText() {
    int i;
    String ingredients = '';
    String index = '';
    for (i = 1; i < 10; i++) {
      index = 'strIngredient$i';
      print(index);
      try {
        ingredients = ingredients + '\n' + widget.drinkData['drinks'][0][index];
      } catch (e) {
        print(e);
      }
    }
    return ingredients;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
            padding: EdgeInsets.only(
                left: 20.0, top: 30.0, right: 20.0, bottom: 20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Image.network(widget.drinkData['drinks'][0]['strDrinkThumb']),
                SizedBox(
                  height: 20.0,
                ),
                Text('Ingredients'),
                Text(getText()),
                Text(widget.drinkData['drinks'][0]['strInstructions']),
              ],
            )),
      ),
    );
  }
}
