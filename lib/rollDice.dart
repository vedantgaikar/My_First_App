import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'asset/dice-images/dice-1.png';

  void rollDice() {
    setState(() {
      activeImage = 'asset/dice-images/dice-6.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.white,
            ),
            child: const Text(
              'Roll the Dice',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 0, 4, 41),
              ),
            ))
      ],
    );
  }
}
