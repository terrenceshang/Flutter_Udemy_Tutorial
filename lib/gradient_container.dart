import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

//Variables
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});
  final List<Color> colors;

  void rollDice() {
    //....
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
