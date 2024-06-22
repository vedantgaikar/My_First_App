import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/diceImage.dart';
import 'package:my_app/rollDice.dart';
import 'package:my_app/styledText.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key}); //key is needed in for widget to work

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 78, 146),
            Color.fromARGB(255, 0, 4, 41),
            Color.fromARGB(255, 0, 0, 0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
