import 'package:cocktailcookbook/screens/recipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:cocktailcookbook/services/networking.dart';

class StartScreen extends StatefulWidget {
  static const id = 'start_screen';
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  void getDrinkRecipe(String drinkName) async {
    print('calling get Recipe');
    var drinkData = await DrinkRecipe().getDrinkRecipe(drinkName);
    print(drinkData);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RecipeScreen(drinkData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          getDrinkRecipe('mojito');
                        },
                        colour: Colors.black12,
                        cardChild: IconContent(
                            icon: Icons.local_drink, label: 'Mojito'),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          getDrinkRecipe('margarita');
                        },
                        colour: Colors.black12,
                        cardChild: IconContent(
                            icon: Icons.local_drink, label: 'Margarita'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          getDrinkRecipe('ace');
                        },
                        colour: Colors.black12,
                        cardChild:
                            IconContent(icon: Icons.local_drink, label: 'Ace'),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          getDrinkRecipe('martini');
                        },
                        colour: Colors.black12,
                        cardChild: IconContent(
                            icon: Icons.local_drink, label: 'Martini'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          getDrinkRecipe('at&t');
                        },
                        colour: Colors.black12,
                        cardChild:
                            IconContent(icon: Icons.local_drink, label: 'AT&T'),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          getDrinkRecipe('storm');
                        },
                        colour: Colors.black12,
                        cardChild: IconContent(
                            icon: Icons.local_drink, label: 'Storm'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.0,
        ),
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
        )
      ],
    );
  }
}
