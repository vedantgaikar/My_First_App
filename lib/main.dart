import 'package:flutter/material.dart';

import 'gradientContainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Roll the Dice',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 0, 4, 41),
          ),
          body: const GradientContainer()),
    ),
  );
}
