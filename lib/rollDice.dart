import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentImage = 1;

  void rollDice() {
    setState(() {
      currentImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Image.asset(
        //   'asset/dice-images/dice-$currentImage.png',
        //   width: 200,
        //   height: 200,
        // ),
        //const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.white,
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,)
          ),
          child: ConstrainedBox(
            constraints: new BoxConstraints.expand(width: 250, height: 250),
            child: Image.asset(
              'asset/dice-images/dice-$currentImage.png',
              width: 250,
              height: 250,
            ),
          ),
          // child: const Text(
          //   'Roll the Dice',
          //   style: TextStyle(
          //     fontSize: 25,
          //     color: Color.fromARGB(255, 0, 4, 41),
          //   ),
        ),
        const SizedBox(height: 50),
        Text(
          '$currentImage',
          style: TextStyle(fontSize: 80, color: Colors.white,  ),
        )
      ],
    );
  }
}
